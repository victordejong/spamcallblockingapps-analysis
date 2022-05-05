package com.apptentive.android.sdk.util.image;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Matrix;
import android.media.ExifInterface;
import android.net.Uri;
import android.os.AsyncTask;
import android.os.Build;
import android.text.TextUtils;
import com.apptentive.android.sdk.ApptentiveInternal;
import com.apptentive.android.sdk.ApptentiveLog;
import com.apptentive.android.sdk.ApptentiveLogTag;
import com.apptentive.android.sdk.debug.ErrorMetrics;
import com.apptentive.android.sdk.module.messagecenter.view.ApptentiveAvatarView;
import com.apptentive.android.sdk.util.CountingOutputStream;
import com.apptentive.android.sdk.util.Util;
import java.io.BufferedOutputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.lang.ref.WeakReference;
import java.net.URL;
/* loaded from: classes-dex2jar.jar:com/apptentive/android/sdk/util/image/ImageUtil.class */
public class ImageUtil {

    /* loaded from: classes-dex2jar.jar:com/apptentive/android/sdk/util/image/ImageUtil$DownloadImageTask.class */
    private static class DownloadImageTask extends AsyncTask<String, Void, Bitmap> {
        private WeakReference<ApptentiveAvatarView> resultView;

        DownloadImageTask(ApptentiveAvatarView apptentiveAvatarView) {
            this.resultView = new WeakReference<>(apptentiveAvatarView);
        }

        private Bitmap loadImageFromNetwork(String str) throws IOException {
            return BitmapFactory.decodeStream(new URL(str).openStream());
        }

        /* JADX INFO: Access modifiers changed from: protected */
        public Bitmap doInBackground(String... strArr) {
            Bitmap bitmap;
            try {
                bitmap = loadImageFromNetwork(strArr[0]);
            } catch (IOException e) {
                ErrorMetrics.logException(e);
                bitmap = null;
            }
            return bitmap;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        public void onPostExecute(Bitmap bitmap) {
            ApptentiveAvatarView apptentiveAvatarView;
            if (bitmap != null && (apptentiveAvatarView = this.resultView.get()) != null) {
                apptentiveAvatarView.setImageBitmap(bitmap);
            }
        }
    }

    public static boolean appendScaledDownImageToStream(String str, OutputStream outputStream) {
        int i;
        Throwable th;
        Exception e;
        CountingOutputStream countingOutputStream;
        try {
            i = new ExifInterface(str).getAttributeInt("Orientation", 1);
        } catch (IOException e2) {
            ErrorMetrics.logException(e2);
            i = 0;
        }
        CountingOutputStream countingOutputStream2 = null;
        CountingOutputStream countingOutputStream3 = null;
        try {
            try {
                countingOutputStream = new CountingOutputStream(new BufferedOutputStream(outputStream));
            } catch (Throwable th2) {
                th = th2;
            }
        } catch (Exception e3) {
            e = e3;
        }
        try {
            System.gc();
            Bitmap createScaledBitmapFromLocalImageSource = createScaledBitmapFromLocalImageSource(str, 1024, 1024, null, i);
            createScaledBitmapFromLocalImageSource.compress(Bitmap.CompressFormat.JPEG, 95, countingOutputStream);
            countingOutputStream.flush();
            ApptentiveLogTag apptentiveLogTag = ApptentiveLogTag.UTIL;
            ApptentiveLog.m15638v(apptentiveLogTag, "Bitmap bytes appended, size = " + (countingOutputStream.getBytesWritten() / 1024) + "k", new Object[0]);
            createScaledBitmapFromLocalImageSource.recycle();
            Util.ensureClosed(countingOutputStream);
            return true;
        } catch (Exception e4) {
            e = e4;
            countingOutputStream2 = countingOutputStream;
            ApptentiveLog.m15648a(ApptentiveLogTag.UTIL, e, "Error storing image.", new Object[0]);
            ErrorMetrics.logException(e);
            Util.ensureClosed(countingOutputStream2);
            return false;
        } catch (Throwable th3) {
            th = th3;
            countingOutputStream3 = countingOutputStream;
            Util.ensureClosed(countingOutputStream3);
            throw th;
        }
    }

    public static float calculateBitmapScaleFactor(int i, int i2, int i3, int i4) {
        return Math.min(1.0f, Math.min(i3 <= 0 ? 1.0f : i3 / i, i4 <= 0 ? 1.0f : i4 / i2));
    }

    private static Bitmap createLightweightScaledBitmap(String str, Uri uri, int i, int i2, Bitmap.Config config, int i3) {
        boolean z;
        int i4;
        int i5;
        Throwable th;
        Throwable th2;
        InputStream openInputStream;
        Context applicationContext = ApptentiveInternal.getInstance().getApplicationContext();
        r8 = null;
        InputStream inputStream = null;
        InputStream inputStream2 = null;
        Bitmap bitmap = null;
        InputStream inputStream3 = null;
        if (applicationContext != null && uri != null) {
            z = true;
        } else if (TextUtils.isEmpty(str)) {
            return null;
        } else {
            z = false;
        }
        BitmapFactory.Options options = new BitmapFactory.Options();
        if (config != null) {
            options.inPreferredConfig = config;
        }
        BitmapFactory.Options options2 = new BitmapFactory.Options();
        options2.inJustDecodeBounds = true;
        options2.inScaled = false;
        if (z && applicationContext != null) {
            try {
                try {
                    openInputStream = applicationContext.getContentResolver().openInputStream(uri);
                } catch (FileNotFoundException e) {
                }
            } catch (Throwable th3) {
                th2 = th3;
            }
            try {
                BitmapFactory.decodeStream(openInputStream, null, options2);
                Util.ensureClosed(openInputStream);
            } catch (FileNotFoundException e2) {
                inputStream3 = openInputStream;
                throw new NullPointerException("Failed to decode image");
            } catch (Throwable th4) {
                th2 = th4;
                inputStream3 = openInputStream;
                Util.ensureClosed(inputStream3);
                throw th2;
            }
        } else if (!z) {
            BitmapFactory.decodeFile(str, options2);
        }
        if (i3 == 90 || i3 == 270) {
            i5 = options2.outHeight;
            i4 = options2.outWidth;
        } else {
            i5 = options2.outWidth;
            i4 = options2.outHeight;
        }
        ApptentiveLog.m15638v(ApptentiveLogTag.UTIL, "Original bitmap dimensions: %d x %d", Integer.valueOf(i5), Integer.valueOf(i4));
        int min = Math.min(i5 / i, i4 / i2);
        if (min >= 2) {
            options.inSampleSize = min;
        }
        options.inScaled = false;
        options.inJustDecodeBounds = false;
        ApptentiveLog.m15638v(ApptentiveLogTag.UTIL, "Bitmap sample size = %d", Integer.valueOf(options.inSampleSize));
        if (z && applicationContext != null) {
            try {
                try {
                    inputStream2 = applicationContext.getContentResolver().openInputStream(uri);
                } catch (Throwable th5) {
                    th = th5;
                }
            } catch (FileNotFoundException e3) {
            }
            try {
                bitmap = BitmapFactory.decodeStream(inputStream2, null, options);
                Util.ensureClosed(inputStream2);
            } catch (FileNotFoundException e4) {
                throw new NullPointerException("Failed to decode image");
            } catch (Throwable th6) {
                th = th6;
                inputStream = inputStream2;
                Util.ensureClosed(inputStream);
                throw th;
            }
        } else if (!z) {
            bitmap = BitmapFactory.decodeFile(str, options);
        }
        ApptentiveLog.m15638v(ApptentiveLogTag.UTIL, "Sampled bitmap size = %d X %d", Integer.valueOf(options.outWidth), Integer.valueOf(options.outHeight));
        Bitmap bitmap2 = bitmap;
        if (i3 != 0) {
            bitmap2 = bitmap;
            if (i3 != -1) {
                bitmap2 = bitmap;
                if (bitmap != null) {
                    Matrix matrix = new Matrix();
                    if (i3 == 3) {
                        matrix.postRotate(180.0f);
                    } else if (i3 == 6) {
                        matrix.postRotate(90.0f);
                    } else if (i3 == 8) {
                        matrix.postRotate(270.0f);
                    }
                    try {
                        bitmap2 = Bitmap.createBitmap(bitmap, 0, 0, bitmap.getWidth(), bitmap.getHeight(), matrix, true);
                    } catch (IllegalArgumentException e5) {
                        throw new NullPointerException("Failed to decode image");
                    }
                }
            }
        }
        if (bitmap2 != null) {
            return bitmap2;
        }
        throw new NullPointerException("Failed to decode image");
    }

    /* JADX WARN: Removed duplicated region for block: B:16:0x0052  */
    /* JADX WARN: Removed duplicated region for block: B:19:0x0057 A[Catch: all -> 0x00fe, TRY_ENTER, TRY_LEAVE, TryCatch #3 {all -> 0x00fe, blocks: (B:4:0x0003, B:6:0x000e, B:8:0x0020, B:9:0x002b, B:10:0x002c, B:11:0x002f, B:13:0x0043, B:19:0x0057, B:23:0x0087, B:25:0x00a3, B:26:0x00aa, B:27:0x00ad, B:29:0x00d3, B:30:0x00de, B:36:0x00e5, B:37:0x00f0, B:38:0x00f1, B:39:0x00f4, B:40:0x00fd), top: B:51:0x0003, inners: #0, #1, #2 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static android.graphics.Bitmap createScaledBitmapFromLocalImageSource(java.lang.String r7, int r8, int r9, android.graphics.Bitmap.Config r10, int r11) throws java.io.FileNotFoundException {
        /*
            Method dump skipped, instructions count: 260
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.apptentive.android.sdk.util.image.ImageUtil.createScaledBitmapFromLocalImageSource(java.lang.String, int, int, android.graphics.Bitmap$Config, int):android.graphics.Bitmap");
    }

    public static void startDownloadAvatarTask(ApptentiveAvatarView apptentiveAvatarView, String str) {
        DownloadImageTask downloadImageTask = new DownloadImageTask(apptentiveAvatarView);
        if (Build.VERSION.SDK_INT >= 11) {
            downloadImageTask.executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, str);
        } else {
            downloadImageTask.execute(str);
        }
    }
}
