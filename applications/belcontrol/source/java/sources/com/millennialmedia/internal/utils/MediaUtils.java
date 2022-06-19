package com.millennialmedia.internal.utils;

import android.content.Context;
import android.content.Intent;
import android.content.pm.ResolveInfo;
import android.database.Cursor;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Matrix;
import android.media.ExifInterface;
import android.media.MediaScannerConnection;
import android.net.Uri;
import android.os.Build;
import android.provider.MediaStore;
import android.util.Base64;
import com.millennialmedia.MMLog;
import com.millennialmedia.internal.MMIntentWrapperActivity;
import com.millennialmedia.internal.utils.IOUtils;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.util.List;
/* loaded from: classes3-dex2jar.jar:com/millennialmedia/internal/utils/MediaUtils.class */
public class MediaUtils {
    private static final String TAG = "MediaUtils";

    /* loaded from: classes3-dex2jar.jar:com/millennialmedia/internal/utils/MediaUtils$PhotoListener.class */
    public interface PhotoListener {
        void onError(String str);

        void onPhoto(Uri uri);
    }

    /* loaded from: classes3-dex2jar.jar:com/millennialmedia/internal/utils/MediaUtils$PlayVideoListener.class */
    public interface PlayVideoListener {
        void onError(String str);

        void onVideoStarted(Uri uri);
    }

    /* loaded from: classes3-dex2jar.jar:com/millennialmedia/internal/utils/MediaUtils$SavePictureListener.class */
    public interface SavePictureListener {
        void onError(String str);

        void onPictureSaved(File file);
    }

    public static String base64EncodeBitmap(Bitmap bitmap, String str) {
        Bitmap.CompressFormat compressFormat;
        if ("image/jpg".equalsIgnoreCase(str) || "image/jpeg".equalsIgnoreCase(str)) {
            compressFormat = Bitmap.CompressFormat.JPEG;
        } else if ("image/webp".equalsIgnoreCase(str)) {
            compressFormat = Bitmap.CompressFormat.WEBP;
        } else {
            compressFormat = Bitmap.CompressFormat.PNG;
            str = "image/png";
        }
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        if (!bitmap.compress(compressFormat, 100, byteArrayOutputStream)) {
            MMLog.m4068e(TAG, "Unable to compress bitmap for encoding");
            return null;
        }
        byte[] byteArray = byteArrayOutputStream.toByteArray();
        return "data:" + str + ";base64," + Base64.encodeToString(byteArray, 0);
    }

    private static Bitmap decodeBitmapUri(Context context, Uri uri, BitmapFactory.Options options) {
        try {
            InputStream openInputStream = context.getContentResolver().openInputStream(uri);
            Bitmap decodeStream = BitmapFactory.decodeStream(openInputStream, null, options);
            IOUtils.closeStream(openInputStream);
            return decodeStream;
        } catch (Exception e) {
            String str = TAG;
            MMLog.m4067e(str, "Bitmap file not found <" + uri.toString() + ">", e);
            throw e;
        }
    }

    public static String getMimeTypeFromUri(Context context, Uri uri) {
        BitmapFactory.Options options = new BitmapFactory.Options();
        options.inJustDecodeBounds = true;
        try {
            decodeBitmapUri(context, uri, options);
            return options.outMimeType;
        } catch (Exception e) {
            return null;
        }
    }

    public static void getPhotoFromCamera(Context context, final PhotoListener photoListener) {
        if (photoListener == null) {
            MMLog.m4068e(TAG, "PhotoListener is required");
        } else if (!EnvironmentUtils.hasCamera()) {
            photoListener.onError("This device does not have a camera");
        } else {
            File picturesDirectory = EnvironmentUtils.getPicturesDirectory();
            if (picturesDirectory == null) {
                photoListener.onError("Cannot access pictures directory");
                return;
            }
            try {
                final File createTempFile = File.createTempFile("CAMERA_", ".tmp", picturesDirectory);
                Uri uriForMediaContentProvider = Build.VERSION.SDK_INT >= 24 ? MediaContentProvider.getUriForMediaContentProvider(EnvironmentUtils.getApplicationContext(), createTempFile) : Uri.fromFile(createTempFile);
                if (uriForMediaContentProvider == null) {
                    photoListener.onError("Unable to get URI for temporary file for picture");
                    return;
                }
                Intent intent = new Intent("android.media.action.IMAGE_CAPTURE");
                intent.putExtra("output", uriForMediaContentProvider);
                MMIntentWrapperActivity.launch(context, intent, new MMIntentWrapperActivity.MMIntentWrapperListener() { // from class: com.millennialmedia.internal.utils.MediaUtils.3
                    @Override // com.millennialmedia.internal.MMIntentWrapperActivity.MMIntentWrapperListener
                    public void onData(Intent intent2) {
                        File file = createTempFile;
                        if (file == null || !file.exists()) {
                            photoListener.onError("Unable to get image from camera");
                            return;
                        }
                        photoListener.onPhoto(Uri.fromFile(createTempFile));
                        createTempFile.delete();
                    }

                    @Override // com.millennialmedia.internal.MMIntentWrapperActivity.MMIntentWrapperListener
                    public void onError(String str) {
                        File file = createTempFile;
                        if (file != null && file.exists()) {
                            createTempFile.delete();
                        }
                        photoListener.onError(str);
                    }
                });
            } catch (IOException e) {
                photoListener.onError("Unable to create temporary file for picture");
            }
        }
    }

    public static void getPhotoFromGallery(Context context, final PhotoListener photoListener) {
        if (photoListener == null) {
            MMLog.m4068e(TAG, "PhotoListener is required");
        } else {
            MMIntentWrapperActivity.launch(context, getPictureChooserIntent(), new MMIntentWrapperActivity.MMIntentWrapperListener() { // from class: com.millennialmedia.internal.utils.MediaUtils.4
                @Override // com.millennialmedia.internal.MMIntentWrapperActivity.MMIntentWrapperListener
                public void onData(Intent intent) {
                    Uri data;
                    if (intent == null || (data = intent.getData()) == null) {
                        photoListener.onError("Unable to get image from gallery");
                    } else {
                        photoListener.onPhoto(data);
                    }
                }

                @Override // com.millennialmedia.internal.MMIntentWrapperActivity.MMIntentWrapperListener
                public void onError(String str) {
                    photoListener.onError(str);
                }
            });
        }
    }

    private static Intent getPictureChooserIntent() {
        return new Intent("android.intent.action.PICK", MediaStore.Images.Media.EXTERNAL_CONTENT_URI);
    }

    private static int getRotationAngle(Context context, Uri uri) {
        String path = uri.getPath();
        Cursor query = context.getContentResolver().query(uri, new String[]{"_data"}, null, null, null);
        String str = path;
        if (query != null) {
            int columnIndex = query.getColumnIndex("_data");
            str = path;
            if (query.moveToFirst()) {
                str = query.getString(columnIndex);
            }
            query.close();
        }
        int i = 0;
        if (str != null) {
            try {
                int attributeInt = new ExifInterface(new File(str).getCanonicalPath()).getAttributeInt("Orientation", 1);
                i = attributeInt != 3 ? attributeInt != 6 ? attributeInt != 8 ? 0 : 270 : 90 : 180;
            } catch (IOException e) {
                i = 0;
            }
        }
        return i;
    }

    public static Bitmap getScaledBitmapFromUri(Context context, Uri uri, int i, int i2, boolean z, boolean z2) {
        int i3;
        int i4;
        BitmapFactory.Options options = new BitmapFactory.Options();
        options.inJustDecodeBounds = true;
        try {
            decodeBitmapUri(context, uri, options);
            if (z2) {
                i3 = getRotationAngle(context, uri);
                if (i3 == 90 || i3 == 270) {
                    i = i2;
                    i2 = i;
                }
            } else {
                i3 = 0;
            }
            options.inSampleSize = 1;
            int i5 = options.outWidth;
            if (i5 > i || options.outHeight > i2) {
                int i6 = i5 / 2;
                int i7 = options.outHeight / 2;
                while (true) {
                    int i8 = options.inSampleSize;
                    if (i6 / i8 <= i || i7 / i8 <= i2) {
                        break;
                    }
                    options.inSampleSize = i8 * 2;
                }
            }
            options.inJustDecodeBounds = false;
            Bitmap decodeBitmapUri = decodeBitmapUri(context, uri, options);
            if (decodeBitmapUri == null || (i4 = options.outWidth) == 0 || options.outHeight == 0) {
                MMLog.m4068e(TAG, "Failed to load bitmap <" + uri.toString() + ">");
                return null;
            }
            float min = Math.min(1.0f, i / i4);
            float min2 = Math.min(1.0f, i2 / options.outHeight);
            float f = min;
            float f2 = min2;
            if (z) {
                f = Math.min(min, min2);
                f2 = f;
            }
            if (f == 1.0f && f2 == 1.0f && i3 == 0) {
                if (MMLog.isDebugEnabled()) {
                    MMLog.m4070d(TAG, "Unscaled and unrotated bitmap: " + decodeBitmapUri.getWidth() + " x " + decodeBitmapUri.getHeight());
                }
                return decodeBitmapUri;
            }
            Matrix matrix = new Matrix();
            matrix.postScale(f, f2);
            if (i3 > 0) {
                if (MMLog.isDebugEnabled()) {
                    MMLog.m4070d(TAG, "Rotating image " + i3 + " degrees");
                }
                matrix.postRotate(i3);
            }
            Bitmap createBitmap = Bitmap.createBitmap(decodeBitmapUri, 0, 0, options.outWidth, options.outHeight, matrix, true);
            if (createBitmap == null) {
                MMLog.m4068e(TAG, "Unable to create scaled bitmap");
            } else if (MMLog.isDebugEnabled()) {
                MMLog.m4070d(TAG, "Scaled and rotated bitmap: " + createBitmap.getWidth() + " x " + createBitmap.getHeight());
            }
            decodeBitmapUri.recycle();
            return createBitmap;
        } catch (Exception e) {
            return null;
        }
    }

    public static boolean isPictureChooserAvailable() {
        boolean z = false;
        if (EnvironmentUtils.isExternalStorageReadable()) {
            List<ResolveInfo> queryIntentActivities = EnvironmentUtils.getApplicationContext().getPackageManager().queryIntentActivities(getPictureChooserIntent(), 65536);
            z = false;
            if (queryIntentActivities != null) {
                z = false;
                if (queryIntentActivities.size() > 0) {
                    z = true;
                }
            }
        }
        return z;
    }

    public static void savePicture(final Context context, String str, String str2, final SavePictureListener savePictureListener) {
        if (savePictureListener == null) {
            MMLog.m4068e(TAG, "PictureListener is required");
        } else if (!EnvironmentUtils.isExternalStorageWritable()) {
            savePictureListener.onError("Storage not mounted, cannot add image to photo library");
        } else if (str == null) {
            savePictureListener.onError("url is required");
        } else {
            Uri parse = Uri.parse(str);
            if (!parse.getScheme().startsWith("http")) {
                File file = new File(parse.getPath());
                if (file.exists()) {
                    scanPicture(context, file, savePictureListener, false);
                    return;
                }
                savePictureListener.onError("No file found at " + file.getAbsolutePath());
                return;
            }
            File picturesDirectory = EnvironmentUtils.getPicturesDirectory();
            if (picturesDirectory == null) {
                savePictureListener.onError("Cannot access pictures directory");
                return;
            }
            String str3 = str2;
            if (str2 == null) {
                str3 = parse.getLastPathSegment();
            }
            File uniqueFileName = IOUtils.getUniqueFileName(picturesDirectory, str3);
            if (uniqueFileName == null) {
                savePictureListener.onError("Unable to store photo");
            } else {
                IOUtils.downloadFile(str, null, uniqueFileName, new IOUtils.DownloadListener() { // from class: com.millennialmedia.internal.utils.MediaUtils.1
                    @Override // com.millennialmedia.internal.utils.IOUtils.DownloadListener
                    public void onDownloadFailed(Throwable th) {
                        savePictureListener.onError("Unable to download file");
                    }

                    @Override // com.millennialmedia.internal.utils.IOUtils.DownloadListener
                    public void onDownloadSucceeded(File file2) {
                        if (MMLog.isDebugEnabled()) {
                            String str4 = MediaUtils.TAG;
                            MMLog.m4070d(str4, "Picture downloaded to: " + file2.getAbsolutePath());
                        }
                        MediaUtils.scanPicture(context, file2, savePictureListener, true);
                    }
                });
            }
        }
    }

    public static void scanPicture(Context context, final File file, final SavePictureListener savePictureListener, final boolean z) {
        MediaScannerConnection.scanFile(context, new String[]{file.getAbsolutePath()}, null, new MediaScannerConnection.OnScanCompletedListener() { // from class: com.millennialmedia.internal.utils.MediaUtils.2
            @Override // android.media.MediaScannerConnection.OnScanCompletedListener
            public void onScanCompleted(String str, Uri uri) {
                if (uri != null) {
                    savePictureListener.onPictureSaved(file);
                    return;
                }
                if (z) {
                    file.delete();
                }
                SavePictureListener savePictureListener2 = savePictureListener;
                savePictureListener2.onError("Failed to scan file " + str);
            }
        });
    }

    public static void setFileDescription(File file, String str) {
        if (str != null) {
            try {
                ExifInterface exifInterface = new ExifInterface(file.getCanonicalPath());
                exifInterface.setAttribute("UserComment", str);
                exifInterface.saveAttributes();
            } catch (IOException e) {
                if (!MMLog.isDebugEnabled()) {
                    return;
                }
                String str2 = TAG;
                MMLog.m4070d(str2, "Cannot set description on media file <" + file.getAbsolutePath() + ">");
            }
        }
    }

    public static void startVideoPlayer(Context context, String str, PlayVideoListener playVideoListener) {
        if (playVideoListener == null) {
            MMLog.m4068e(TAG, "VideoListener is required");
        } else if (str == null) {
            playVideoListener.onError("url is required");
        } else {
            Uri parse = Uri.parse(str);
            Intent intent = new Intent("android.intent.action.VIEW");
            intent.setDataAndType(parse, "video/*");
            if (Utils.startActivity(context, intent)) {
                playVideoListener.onVideoStarted(parse);
            } else {
                playVideoListener.onError("No video application installed");
            }
        }
    }
}
