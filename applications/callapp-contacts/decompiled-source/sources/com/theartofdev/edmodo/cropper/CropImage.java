package com.theartofdev.edmodo.cropper;

import android.app.Activity;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.graphics.Rect;
import android.net.Uri;
import android.os.Build;
import android.os.Parcel;
import android.os.Parcelable;
import android.provider.MediaStore;
import com.theartofdev.edmodo.cropper.CropImageView;
import com.theartofdev.edmodo.cropper.g;
import java.io.File;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
/* loaded from: classes4-dex2jar.jar:com/theartofdev/edmodo/cropper/CropImage.class */
public final class CropImage {

    /* loaded from: classes4-dex2jar.jar:com/theartofdev/edmodo/cropper/CropImage$ActivityResult.class */
    public static final class ActivityResult extends CropImageView.a implements Parcelable {
        public static final Parcelable.Creator<ActivityResult> CREATOR = new Parcelable.Creator<ActivityResult>() { // from class: com.theartofdev.edmodo.cropper.CropImage.ActivityResult.1
            @Override // android.os.Parcelable.Creator
            public final /* synthetic */ ActivityResult createFromParcel(Parcel parcel) {
                return new ActivityResult(parcel);
            }

            @Override // android.os.Parcelable.Creator
            public final /* bridge */ /* synthetic */ ActivityResult[] newArray(int i) {
                return new ActivityResult[i];
            }
        };

        public ActivityResult(Uri uri, Uri uri2, Exception exc, float[] fArr, Rect rect, int i, Rect rect2, int i2) {
            super(null, uri, null, uri2, exc, fArr, rect, rect2, i, i2);
        }

        protected ActivityResult(Parcel parcel) {
            super(null, (Uri) parcel.readParcelable(Uri.class.getClassLoader()), null, (Uri) parcel.readParcelable(Uri.class.getClassLoader()), (Exception) parcel.readSerializable(), parcel.createFloatArray(), (Rect) parcel.readParcelable(Rect.class.getClassLoader()), (Rect) parcel.readParcelable(Rect.class.getClassLoader()), parcel.readInt(), parcel.readInt());
        }

        @Override // android.os.Parcelable
        public final int describeContents() {
            return 0;
        }

        @Override // android.os.Parcelable
        public final void writeToParcel(Parcel parcel, int i) {
            parcel.writeParcelable(getOriginalUri(), i);
            parcel.writeParcelable(getUri(), i);
            parcel.writeSerializable(getError());
            parcel.writeFloatArray(getCropPoints());
            parcel.writeParcelable(getCropRect(), i);
            parcel.writeParcelable(getWholeImageRect(), i);
            parcel.writeInt(getRotation());
            parcel.writeInt(getSampleSize());
        }
    }

    private CropImage() {
    }

    private static List<Intent> a(Context context, PackageManager packageManager) {
        ArrayList arrayList = new ArrayList();
        Uri b2 = b(context);
        Intent intent = new Intent("android.media.action.IMAGE_CAPTURE");
        for (ResolveInfo resolveInfo : packageManager.queryIntentActivities(intent, 0)) {
            Intent intent2 = new Intent(intent);
            intent2.setComponent(new ComponentName(resolveInfo.activityInfo.packageName, resolveInfo.activityInfo.name));
            intent2.setPackage(resolveInfo.activityInfo.packageName);
            if (b2 != null) {
                intent2.putExtra("output", b2);
            }
            arrayList.add(intent2);
        }
        return arrayList;
    }

    private static List<Intent> a(PackageManager packageManager, String str, boolean z) {
        ArrayList arrayList = new ArrayList();
        Intent intent = str == "android.intent.action.GET_CONTENT" ? new Intent(str) : new Intent(str, MediaStore.Images.Media.EXTERNAL_CONTENT_URI);
        intent.setType("image/*");
        for (ResolveInfo resolveInfo : packageManager.queryIntentActivities(intent, 0)) {
            Intent intent2 = new Intent(intent);
            intent2.setComponent(new ComponentName(resolveInfo.activityInfo.packageName, resolveInfo.activityInfo.name));
            intent2.setPackage(resolveInfo.activityInfo.packageName);
            arrayList.add(intent2);
        }
        Iterator it2 = arrayList.iterator();
        while (true) {
            if (!it2.hasNext()) {
                break;
            }
            Intent intent3 = (Intent) it2.next();
            if (intent3.getComponent().getClassName().equals("com.android.documentsui.DocumentsActivity")) {
                arrayList.remove(intent3);
                break;
            }
        }
        return arrayList;
    }

    public static void a(Activity activity) {
        Intent intent;
        String string = activity.getString(g.d.pick_image_intent_chooser_title);
        ArrayList arrayList = new ArrayList();
        PackageManager packageManager = activity.getPackageManager();
        if (!a((Context) activity)) {
            arrayList.addAll(a(activity, packageManager));
        }
        List<Intent> a2 = a(packageManager, "android.intent.action.GET_CONTENT", false);
        List<Intent> list = a2;
        if (a2.size() == 0) {
            list = a(packageManager, "android.intent.action.PICK", false);
        }
        arrayList.addAll(list);
        if (arrayList.isEmpty()) {
            intent = new Intent();
        } else {
            intent = (Intent) arrayList.get(arrayList.size() - 1);
            arrayList.remove(arrayList.size() - 1);
        }
        Intent createChooser = Intent.createChooser(intent, string);
        createChooser.putExtra("android.intent.extra.INITIAL_INTENTS", (Parcelable[]) arrayList.toArray(new Parcelable[arrayList.size()]));
        activity.startActivityForResult(createChooser, 200);
    }

    public static boolean a(Context context) {
        return Build.VERSION.SDK_INT >= 23 && a(context, "android.permission.CAMERA") && context.checkSelfPermission("android.permission.CAMERA") != 0;
    }

    public static boolean a(Context context, Uri uri) {
        return Build.VERSION.SDK_INT >= 23 && context.checkSelfPermission("android.permission.READ_EXTERNAL_STORAGE") != 0 && b(context, uri);
    }

    private static boolean a(Context context, String str) {
        try {
            String[] strArr = context.getPackageManager().getPackageInfo(context.getPackageName(), 4096).requestedPermissions;
            if (strArr == null || strArr.length <= 0) {
                return false;
            }
            for (String str2 : strArr) {
                if (str2.equalsIgnoreCase(str)) {
                    return true;
                }
            }
            return false;
        } catch (PackageManager.NameNotFoundException e) {
            return false;
        }
    }

    public static Uri b(Context context) {
        File externalCacheDir = context.getExternalCacheDir();
        return externalCacheDir != null ? Uri.fromFile(new File(externalCacheDir.getPath(), "pickImageResult.jpeg")) : null;
    }

    private static boolean b(Context context, Uri uri) {
        try {
            InputStream openInputStream = context.getContentResolver().openInputStream(uri);
            if (openInputStream == null) {
                return false;
            }
            openInputStream.close();
            return false;
        } catch (Exception e) {
            return true;
        }
    }
}
