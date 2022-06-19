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
import com.theartofdev.edmodo.cropper.C17191g;
import com.theartofdev.edmodo.cropper.CropImageView;
import java.io.File;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
/* loaded from: classes4-dex2jar.jar:com/theartofdev/edmodo/cropper/CropImage.class */
public final class CropImage {

    /* loaded from: classes4-dex2jar.jar:com/theartofdev/edmodo/cropper/CropImage$ActivityResult.class */
    public static final class ActivityResult extends CropImageView.C17166a implements Parcelable {
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

    /* renamed from: a */
    private static List<Intent> m5827a(Context context, PackageManager packageManager) {
        ArrayList arrayList = new ArrayList();
        Uri m5823b = m5823b(context);
        Intent intent = new Intent("android.media.action.IMAGE_CAPTURE");
        for (ResolveInfo resolveInfo : packageManager.queryIntentActivities(intent, 0)) {
            Intent intent2 = new Intent(intent);
            intent2.setComponent(new ComponentName(resolveInfo.activityInfo.packageName, resolveInfo.activityInfo.name));
            intent2.setPackage(resolveInfo.activityInfo.packageName);
            if (m5823b != null) {
                intent2.putExtra("output", m5823b);
            }
            arrayList.add(intent2);
        }
        return arrayList;
    }

    /* renamed from: a */
    private static List<Intent> m5824a(PackageManager packageManager, String str, boolean z) {
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

    /* renamed from: a */
    public static void m5829a(Activity activity) {
        Intent intent;
        String string = activity.getString(C17191g.C17195d.pick_image_intent_chooser_title);
        ArrayList arrayList = new ArrayList();
        PackageManager packageManager = activity.getPackageManager();
        if (!m5828a((Context) activity)) {
            arrayList.addAll(m5827a(activity, packageManager));
        }
        List<Intent> m5824a = m5824a(packageManager, "android.intent.action.GET_CONTENT", false);
        List<Intent> list = m5824a;
        if (m5824a.size() == 0) {
            list = m5824a(packageManager, "android.intent.action.PICK", false);
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

    /* renamed from: a */
    public static boolean m5828a(Context context) {
        return Build.VERSION.SDK_INT >= 23 && m5825a(context, "android.permission.CAMERA") && context.checkSelfPermission("android.permission.CAMERA") != 0;
    }

    /* renamed from: a */
    public static boolean m5826a(Context context, Uri uri) {
        return Build.VERSION.SDK_INT >= 23 && context.checkSelfPermission("android.permission.READ_EXTERNAL_STORAGE") != 0 && m5822b(context, uri);
    }

    /* renamed from: a */
    private static boolean m5825a(Context context, String str) {
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

    /* renamed from: b */
    public static Uri m5823b(Context context) {
        File externalCacheDir = context.getExternalCacheDir();
        return externalCacheDir != null ? Uri.fromFile(new File(externalCacheDir.getPath(), "pickImageResult.jpeg")) : null;
    }

    /* renamed from: b */
    private static boolean m5822b(Context context, Uri uri) {
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
