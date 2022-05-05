package com.android.contacts.util;

import android.content.ClipData;
import android.content.Context;
import android.content.Intent;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.net.Uri;
import android.os.Environment;
import android.support.v4.content.FileProvider;
import android.util.Log;
import com.google.a.c.a;
import java.io.ByteArrayOutputStream;
import java.io.Closeable;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Locale;
/* loaded from: classes-dex2jar.jar:com/android/contacts/util/ContactPhotoUtils.class */
public class ContactPhotoUtils {
    private static final String NEW_PHOTO_DIR_PATH = Environment.getExternalStorageDirectory() + "/DCIM/Camera";
    private static final String PHOTO_DATE_FORMAT = "'IMG'_yyyyMMdd_HHmmss";
    private static final String PHOTO_FILE_PROVIDER_AUTHORITY = "com.asus.contacts.files";
    private static final String TAG = "ContactPhotoUtils";

    public static void addCropExtras(Intent intent, int i) {
        intent.putExtra("crop", "true");
        intent.putExtra("scale", true);
        intent.putExtra("scaleUpIfNeeded", true);
        intent.putExtra("aspectX", 1);
        intent.putExtra("aspectY", 1);
        intent.putExtra("outputX", i);
        intent.putExtra("outputY", i);
    }

    public static void addGalleryIntentExtras(Intent intent, Uri uri, int i) {
        intent.putExtra("crop", "true");
        intent.putExtra("scale", true);
        intent.putExtra("scaleUpIfNeeded", true);
        intent.putExtra("aspectX", 1);
        intent.putExtra("aspectY", 1);
        intent.putExtra("outputX", i);
        intent.putExtra("outputY", i);
        intent.putExtra("output", uri);
    }

    public static void addPhotoPickerExtras(Intent intent, Uri uri) {
        intent.putExtra("output", uri);
        intent.addFlags(3);
        intent.setClipData(ClipData.newRawUri("output", uri));
    }

    public static byte[] compressBitmap(Bitmap bitmap) {
        byte[] bArr;
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream(bitmap.getWidth() * bitmap.getHeight() * 4);
        try {
            bitmap.compress(Bitmap.CompressFormat.PNG, 100, byteArrayOutputStream);
            byteArrayOutputStream.flush();
            byteArrayOutputStream.close();
            bArr = byteArrayOutputStream.toByteArray();
        } catch (IOException e) {
            Log.w(TAG, "Unable to serialize photo: " + e.toString());
            bArr = null;
        }
        return bArr;
    }

    public static Uri generateTempCroppedImageUri(Context context) {
        return FileProvider.a(context, PHOTO_FILE_PROVIDER_AUTHORITY, new File(pathForTempPhoto(context, generateTempCroppedPhotoFileName())));
    }

    private static String generateTempCroppedPhotoFileName() {
        Date date = new Date(System.currentTimeMillis());
        return "ContactPhoto-" + new SimpleDateFormat(PHOTO_DATE_FORMAT, Locale.US).format(date) + "-cropped.jpg";
    }

    public static Uri generateTempImageUri(Context context) {
        Uri uri;
        try {
            uri = FileProvider.a(context, PHOTO_FILE_PROVIDER_AUTHORITY, new File(pathForTempPhoto(context, generateTempPhotoFileName())));
        } catch (Exception e) {
            Log.e(TAG, "generateTempImageUri e:" + e.toString());
            uri = null;
        }
        return uri;
    }

    public static File generateTempPhotoFile(Context context) {
        return new File(pathForCroppedPhoto(context, generateTempPhotoFileName()));
    }

    public static String generateTempPhotoFileName() {
        Date date = new Date(System.currentTimeMillis());
        return "ContactPhoto-" + new SimpleDateFormat(PHOTO_DATE_FORMAT, Locale.US).format(date) + ".jpg";
    }

    public static Bitmap getBitmapFromUri(Context context, Uri uri) {
        InputStream openInputStream = context.getContentResolver().openInputStream(uri);
        try {
            return BitmapFactory.decodeStream(openInputStream);
        } finally {
            a.a(openInputStream);
        }
    }

    public static String pathForCroppedPhoto(Context context, String str) {
        File file = new File(context.getExternalCacheDir() + "/tmp");
        file.mkdirs();
        return new File(file, str).getAbsolutePath();
    }

    public static String pathForNewCameraPhoto(String str) {
        File file = new File(NEW_PHOTO_DIR_PATH);
        file.mkdirs();
        return new File(file, str).getAbsolutePath();
    }

    private static String pathForTempPhoto(Context context, String str) {
        File cacheDir = context.getCacheDir();
        cacheDir.mkdirs();
        return new File(cacheDir, str).getAbsolutePath();
    }

    /* JADX WARN: Not initialized variable reg: 14, insn: 0x0152: MOVE  (r0 I:??[int, float, boolean, short, byte, char, OBJECT, ARRAY]) = (r14 I:??[int, float, boolean, short, byte, char, OBJECT, ARRAY]), block:B:49:0x0152 */
    public static boolean savePhotoFromUriToUri(Context context, Uri uri, Uri uri2, boolean z) {
        Closeable closeable;
        FileOutputStream fileOutputStream;
        InputStream inputStream;
        boolean z2 = false;
        if (uri != null) {
            try {
                if (uri2 == null) {
                    z2 = false;
                } else {
                    try {
                        fileOutputStream = context.getContentResolver().openAssetFileDescriptor(uri2, "rw").createOutputStream();
                    } catch (IOException e) {
                        e = e;
                        inputStream = null;
                        fileOutputStream = null;
                    } catch (NullPointerException e2) {
                        e = e2;
                        inputStream = null;
                        fileOutputStream = null;
                    } catch (Throwable th) {
                        th = th;
                        closeable = null;
                        fileOutputStream = null;
                    }
                    try {
                        inputStream = context.getContentResolver().openInputStream(uri);
                        try {
                            byte[] bArr = new byte[16384];
                            int i = 0;
                            while (true) {
                                int read = inputStream.read(bArr);
                                if (read <= 0) {
                                    break;
                                }
                                fileOutputStream.write(bArr, 0, read);
                                i += read;
                            }
                            Log.v(TAG, "Wrote " + i + " bytes for photo " + uri.toString());
                            a.a(inputStream);
                            a.a(fileOutputStream);
                            if (z) {
                                context.getContentResolver().delete(uri, null, null);
                            }
                            z2 = true;
                        } catch (IOException e3) {
                            e = e3;
                            Log.e(TAG, "Failed to write photo: " + uri.toString() + " because: " + e);
                            a.a(inputStream);
                            a.a(fileOutputStream);
                            z2 = false;
                            return z2;
                        } catch (NullPointerException e4) {
                            e = e4;
                            Log.e(TAG, "Failed to write photo: " + uri.toString() + " because: " + e);
                            a.a(inputStream);
                            a.a(fileOutputStream);
                            z2 = false;
                            return z2;
                        }
                    } catch (IOException e5) {
                        e = e5;
                        inputStream = null;
                    } catch (NullPointerException e6) {
                        e = e6;
                        inputStream = null;
                    } catch (Throwable th2) {
                        th = th2;
                        closeable = null;
                        a.a(closeable);
                        a.a(fileOutputStream);
                        if (z) {
                            context.getContentResolver().delete(uri, null, null);
                        }
                        throw th;
                    }
                }
            } catch (Throwable th3) {
                th = th3;
            }
        }
        return z2;
    }
}
