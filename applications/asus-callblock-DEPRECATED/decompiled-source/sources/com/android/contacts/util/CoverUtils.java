package com.android.contacts.util;

import android.app.Activity;
import android.content.ActivityNotFoundException;
import android.content.ClipData;
import android.content.ContentValues;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.Environment;
import android.support.v4.content.FileProvider;
import android.text.TextUtils;
import android.util.Log;
import android.widget.Toast;
import java.io.File;
/* loaded from: classes-dex2jar.jar:com/android/contacts/util/CoverUtils.class */
public class CoverUtils {
    public static final String COVER_STORAGE_FOLDER = "Contacts_Cover";
    private static final String FILE_NOT_FOUND = "Cannot find image file";
    private static final String GOOGLE_PHOTO_PACKAGE_NAME = "com.google.android.apps.photos";
    private static final String PHOTO_FILE_PROVIDER_AUTHORITY = "com.asus.contacts.files";
    private static final int REQUEST_CROP_COVER = 1003;
    private static final int REQUEST_SET_COVER_CAMERA = 1001;
    private static final int REQUEST_SET_COVER_GALLERY = 1002;
    private static final String TAG = "CoverUtils";
    private static final int cropHeight = 405;
    private static final int cropWidth = 720;
    private static final int gCropHeight = 720;
    private static final int gCropWidth = 405;
    private static Uri mCroppedFileUri;
    private static String mNewFileName;
    private static Uri mNewFileUri;
    public static final Long GROUP_ZERO = 0L;
    private static String CROP_PREFIX = "crop_";

    /* loaded from: classes-dex2jar.jar:com/android/contacts/util/CoverUtils$ContactsCover.class */
    public static class ContactsCover implements Comparable<ContactsCover> {
        public int coverType;
        public String coverUri;

        public ContactsCover(String str, int i) {
            this.coverUri = str;
            this.coverType = i;
        }

        public int compareTo(ContactsCover contactsCover) {
            return this.coverType - contactsCover.coverType;
        }
    }

    /* loaded from: classes-dex2jar.jar:com/android/contacts/util/CoverUtils$CoverData.class */
    public interface CoverData {
        public static final String COVER_TYPE = "data2";
        public static final String COVER_URI = "data1";
        public static final String DEFAULT_COVER = "android.resource://com.asus.contacts/drawable/group_cover_6";
        public static final String MINE_TYPE = "vnd.android.cursor.item/cover";
        public static final String USER_SET = "data3";
    }

    /* loaded from: classes-dex2jar.jar:com/android/contacts/util/CoverUtils$CoverType.class */
    public interface CoverType {
        public static final int CUSTOM = 4;
        public static final int DEFAULT = 0;
    }

    private static void addGalleryIntentExtras(Intent intent, Uri uri, int i, int i2) {
        intent.putExtra("crop", "true");
        intent.putExtra("scale", true);
        intent.putExtra("scaleUpIfNeeded", true);
        intent.putExtra("aspectX", i);
        intent.putExtra("aspectY", i2);
        intent.putExtra("outputX", i);
        intent.putExtra("outputY", i2);
        intent.putExtra("output", uri);
        intent.addFlags(3);
        intent.setClipData(ClipData.newRawUri("output", uri));
    }

    public static void chooseFromCameraIntent(Activity activity) {
        Intent intent = new Intent("android.media.action.IMAGE_CAPTURE");
        String generateTempPhotoFileName = ContactPhotoUtils.generateTempPhotoFileName();
        mNewFileName = generateTempPhotoFileName;
        if (generateTempPhotoFileName != null) {
            AsusPreferenceManager.writeCameraPhotoNameStr(activity, mNewFileName);
            mNewFileUri = FileProvider.a(activity, PHOTO_FILE_PROVIDER_AUTHORITY, new File(ContactPhotoUtils.pathForNewCameraPhoto(mNewFileName)));
            intent.addFlags(3);
            intent.putExtra("output", mNewFileUri);
            try {
                activity.startActivityForResult(intent, 1001);
            } catch (ActivityNotFoundException e) {
                Toast.makeText(activity, 2131755026, 0).show();
                e.printStackTrace();
            }
        } else {
            Log.d(TAG, "New file name is null.");
        }
    }

    public static void chooseFromGalleryIntent(Activity activity) {
        Intent intent = new Intent();
        intent.setType("image/*");
        intent.setAction("android.intent.action.PICK");
        intent.addFlags(3);
        String generateTempPhotoFileName = ContactPhotoUtils.generateTempPhotoFileName();
        mNewFileName = generateTempPhotoFileName;
        if (generateTempPhotoFileName != null) {
            AsusPreferenceManager.writeCameraPhotoNameStr(activity, mNewFileName);
            try {
                activity.startActivityForResult(intent, REQUEST_SET_COVER_GALLERY);
            } catch (ActivityNotFoundException e) {
                e.printStackTrace();
            }
        } else {
            Log.d(TAG, "New file name is null.");
        }
    }

    public static void cropImageIntent(Activity activity, Intent intent, int i) {
        Intent intent2 = new Intent("com.android.camera.action.CROP");
        if (mNewFileName == null || mNewFileUri == null) {
            String cameraPhotoNameStr = AsusPreferenceManager.getCameraPhotoNameStr(activity);
            mNewFileName = cameraPhotoNameStr;
            if (cameraPhotoNameStr != null) {
                mNewFileUri = FileProvider.a(activity, PHOTO_FILE_PROVIDER_AUTHORITY, new File(ContactPhotoUtils.pathForNewCameraPhoto(mNewFileName)));
            } else {
                Toast.makeText(activity, FILE_NOT_FOUND, 0).show();
                return;
            }
        }
        if (i == 1001) {
            intent2.setDataAndType(mNewFileUri, "image/*");
        } else {
            Uri data = intent != null ? intent.getData() : null;
            intent2.setData(data);
            if (data != null && data.toString().startsWith("content://com.google.android.apps.photos")) {
                intent2.setPackage(GOOGLE_PHOTO_PACKAGE_NAME);
            }
        }
        mCroppedFileUri = getSavedPhotoUri(activity, CROP_PREFIX + mNewFileName);
        addGalleryIntentExtras(intent2, mCroppedFileUri, 720, 405);
        intent2.putExtra("output", mCroppedFileUri);
        try {
            intent2.putExtra("return-data", false);
            activity.startActivityForResult(intent2, REQUEST_CROP_COVER);
        } catch (ActivityNotFoundException e) {
            Log.d(TAG, "Activity not found exception.");
            e.printStackTrace();
        }
    }

    public static void cropImageIntent(Activity activity, Intent intent, int i, int i2, int i3) {
        Intent intent2 = new Intent("com.android.camera.action.CROP");
        if (mNewFileName == null || mNewFileUri == null) {
            String cameraPhotoNameStr = AsusPreferenceManager.getCameraPhotoNameStr(activity);
            mNewFileName = cameraPhotoNameStr;
            if (cameraPhotoNameStr != null) {
                mNewFileUri = FileProvider.a(activity, PHOTO_FILE_PROVIDER_AUTHORITY, new File(ContactPhotoUtils.pathForNewCameraPhoto(mNewFileName)));
            } else {
                Toast.makeText(activity, FILE_NOT_FOUND, 0).show();
                return;
            }
        }
        if (i == 1001) {
            intent2.setDataAndType(mNewFileUri, "image/*");
        } else {
            intent2.setData(intent.getData());
            Uri data = intent != null ? intent.getData() : null;
            intent2.setData(data);
            if (data != null && data.toString().startsWith("content://com.google.android.apps.photos")) {
                intent2.setPackage(GOOGLE_PHOTO_PACKAGE_NAME);
            }
        }
        mCroppedFileUri = getSavedPhotoUri(activity, CROP_PREFIX + mNewFileName);
        addGalleryIntentExtras(intent2, mCroppedFileUri, i2, i3);
        try {
            intent2.putExtra("return-data", false);
            activity.startActivityForResult(intent2, REQUEST_CROP_COVER);
        } catch (ActivityNotFoundException e) {
            Log.d(TAG, "Activity not found exception.");
            e.printStackTrace();
        } catch (Exception e2) {
            Log.d(TAG, "other exception:" + e2.toString());
        }
    }

    private static String getConfigureUri(String str, String str2) {
        String str3 = str;
        if (!TextUtils.isEmpty(str)) {
            str3 = str;
            if (str.startsWith("android.resource://")) {
                str3 = (TextUtils.isEmpty(str2) || !str2.contains("landscape")) ? str + "_port" : str + "_land";
            }
        }
        return str3;
    }

    /* JADX WARN: Removed duplicated region for block: B:34:0x0122  */
    /* JADX WARN: Removed duplicated region for block: B:37:0x0132  */
    /* JADX WARN: Removed duplicated region for block: B:40:0x0150  */
    /* JADX WARN: Removed duplicated region for block: B:59:0x01fa  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static com.android.contacts.util.CoverUtils.ContactsCover getContactCover(android.content.Context r8, java.lang.String r9, java.lang.String r10, boolean r11) {
        /*
            Method dump skipped, instructions count: 548
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.contacts.util.CoverUtils.getContactCover(android.content.Context, java.lang.String, java.lang.String, boolean):com.android.contacts.util.CoverUtils$ContactsCover");
    }

    /* JADX WARN: Removed duplicated region for block: B:20:0x00a5  */
    /* JADX WARN: Removed duplicated region for block: B:23:0x00b3  */
    /* JADX WARN: Removed duplicated region for block: B:28:0x00c7  */
    /* JADX WARN: Removed duplicated region for block: B:31:0x00d8  */
    /* JADX WARN: Removed duplicated region for block: B:53:0x013b  */
    /* JADX WARN: Removed duplicated region for block: B:58:0x0147  */
    /* JADX WARN: Removed duplicated region for block: B:67:0x0186  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static com.android.contacts.util.CoverUtils.ContactsCover getCoverByRawContactId(android.content.Context r8, android.net.Uri r9, java.lang.String r10, long r11, android.net.Uri r13) {
        /*
            Method dump skipped, instructions count: 438
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.contacts.util.CoverUtils.getCoverByRawContactId(android.content.Context, android.net.Uri, java.lang.String, long, android.net.Uri):com.android.contacts.util.CoverUtils$ContactsCover");
    }

    public static String getCropBackgroundUri() {
        return mCroppedFileUri == null ? null : mCroppedFileUri.toString();
    }

    private static File getSavedPhoto(Context context, String str) {
        File file;
        File file2 = new File(Environment.getExternalStorageDirectory().toString() + File.separator + COVER_STORAGE_FOLDER);
        File file3 = file2;
        if (!file2.exists()) {
            file3 = file2;
            if (!file2.mkdirs()) {
                Log.w(TAG, "failed to create external directory");
                File file4 = new File(context.getExternalCacheDir() + "/tmp");
                file3 = file4;
                if (!file4.exists()) {
                    file3 = file4;
                    if (!file4.mkdirs()) {
                        Log.w(TAG, "failed to create external directory Cache dir");
                        file = null;
                        return file;
                    }
                }
            }
        }
        file = new File(file3.getPath(), str);
        return file;
    }

    private static Uri getSavedPhotoUri(Context context, String str) {
        File savedPhoto = getSavedPhoto(context, str);
        return savedPhoto != null ? FileProvider.a(context, PHOTO_FILE_PROVIDER_AUTHORITY, savedPhoto) : null;
    }

    private static void insertContactCoverToDB(Context context, Uri uri, long j, int i, String str) {
        ContentValues contentValues = new ContentValues();
        contentValues.put("raw_contact_id", Long.valueOf(j));
        contentValues.put("mimetype", CoverData.MINE_TYPE);
        contentValues.put(CoverData.COVER_TYPE, Integer.valueOf(i));
        contentValues.put(CoverData.COVER_URI, str);
        try {
            context.getContentResolver().insert(uri, contentValues);
        } catch (Exception e) {
            Log.e(TAG, "insertContactCoverToDB error. Exception: " + e.toString());
        }
    }

    private static boolean isUriValid(String str) {
        return !TextUtils.isEmpty(str) && (str.startsWith("android.resource://") || str.startsWith("file://") || str.startsWith("content://media/external/images/media/") || str.startsWith("content://com.asus.contacts.files/external_files/"));
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:63:0x0123  */
    /* JADX WARN: Removed duplicated region for block: B:68:0x0138  */
    /* JADX WARN: Removed duplicated region for block: B:79:0x0117 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Type inference failed for: r10v0, types: [android.content.Intent] */
    /* JADX WARN: Type inference failed for: r10v1 */
    /* JADX WARN: Type inference failed for: r10v10 */
    /* JADX WARN: Type inference failed for: r10v11 */
    /* JADX WARN: Type inference failed for: r10v12 */
    /* JADX WARN: Type inference failed for: r10v13 */
    /* JADX WARN: Type inference failed for: r10v14 */
    /* JADX WARN: Type inference failed for: r10v2 */
    /* JADX WARN: Type inference failed for: r10v3, types: [java.io.InputStream] */
    /* JADX WARN: Type inference failed for: r10v5 */
    /* JADX WARN: Type inference failed for: r10v9 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static void updateContactCover(android.app.Activity r7, android.net.Uri r8, boolean r9, android.content.Intent r10, int r11) {
        /*
            Method dump skipped, instructions count: 338
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.contacts.util.CoverUtils.updateContactCover(android.app.Activity, android.net.Uri, boolean, android.content.Intent, int):void");
    }

    /* JADX WARN: Removed duplicated region for block: B:46:0x0143  */
    /* JADX WARN: Removed duplicated region for block: B:63:0x019d  */
    /* JADX WARN: Removed duplicated region for block: B:73:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static void updateContactCoverToDB(android.content.Context r7, android.net.Uri r8, long r9, int r11, java.lang.String r12, android.net.Uri r13) {
        /*
            Method dump skipped, instructions count: 445
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.contacts.util.CoverUtils.updateContactCoverToDB(android.content.Context, android.net.Uri, long, int, java.lang.String, android.net.Uri):void");
    }

    /* JADX WARN: Removed duplicated region for block: B:44:0x0169  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static void updateContactCoverUri(android.content.Context r8, long r9, int r11, java.lang.String r12, boolean r13) {
        /*
            Method dump skipped, instructions count: 418
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.contacts.util.CoverUtils.updateContactCoverUri(android.content.Context, long, int, java.lang.String, boolean):void");
    }
}
