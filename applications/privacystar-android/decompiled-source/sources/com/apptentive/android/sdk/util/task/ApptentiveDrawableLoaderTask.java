package com.apptentive.android.sdk.util.task;

import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.media.ExifInterface;
import android.os.AsyncTask;
import android.text.TextUtils;
import android.webkit.URLUtil;
import android.widget.ImageView;
import com.apptentive.android.sdk.ApptentiveLog;
import com.apptentive.android.sdk.ApptentiveLogTag;
import com.apptentive.android.sdk.util.image.ImageUtil;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.lang.ref.WeakReference;
/* loaded from: classes-dex2jar.jar:com/apptentive/android/sdk/util/task/ApptentiveDrawableLoaderTask.class */
public class ApptentiveDrawableLoaderTask extends AsyncTask<String, Void, Bitmap> {
    private boolean decoderError;

    /* renamed from: e */
    private Exception f82e = null;
    private WeakReference<ImageView> imageViewReference;
    private BitmapLoadListener mListener;
    protected BitmapFactory.Options options;

    /* loaded from: classes-dex2jar.jar:com/apptentive/android/sdk/util/task/ApptentiveDrawableLoaderTask$BitmapLoadListener.class */
    public interface BitmapLoadListener {
        void loadBitmap(Bitmap bitmap);

        void notFound();

        void onLoadCancelled();

        void onLoadError();
    }

    public ApptentiveDrawableLoaderTask(ImageView imageView, BitmapLoadListener bitmapLoadListener) {
        this.imageViewReference = new WeakReference<>(imageView);
        this.mListener = bitmapLoadListener;
    }

    private Bitmap loadFromLocalImageSource(String str, int i, int i2, boolean z) {
        int i3;
        Bitmap bitmap;
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        try {
            i3 = new ExifInterface(str).getAttributeInt("Orientation", 1);
        } catch (IOException e) {
            i3 = 0;
        }
        this.decoderError = false;
        try {
            bitmap = ImageUtil.createScaledBitmapFromLocalImageSource(str, i, i2, null, i3);
        } catch (FileNotFoundException e2) {
            if (!URLUtil.isValidUrl(str)) {
                this.decoderError = true;
            }
            bitmap = null;
            return bitmap;
        } catch (Exception e3) {
            this.decoderError = true;
            if (z) {
                File file = new File(str);
                if (file.exists()) {
                    file.delete();
                }
            }
            bitmap = null;
            return bitmap;
        }
        return bitmap;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public Bitmap doInBackground(String... strArr) {
        int parseInt;
        int parseInt2;
        Bitmap bitmap = null;
        String str = strArr[0];
        String str2 = strArr[1];
        try {
            parseInt = Integer.parseInt(strArr[2]);
            parseInt2 = Integer.parseInt(strArr[3]);
        } catch (Exception e) {
            this.f82e = e;
        }
        if (isCancelled()) {
            return null;
        }
        Bitmap bitmap2 = null;
        if (!TextUtils.isEmpty(str2)) {
            bitmap2 = null;
            if (new File(str2).exists()) {
                bitmap2 = loadFromLocalImageSource(str2, parseInt, parseInt2, false);
            }
        }
        bitmap = bitmap2;
        if (bitmap2 == null) {
            bitmap = bitmap2;
            bitmap = loadFromLocalImageSource(str, parseInt, parseInt2, false);
            return bitmap;
        }
        return bitmap;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void onPostExecute(Bitmap bitmap) {
        if (this.f82e != null) {
            ApptentiveLogTag apptentiveLogTag = ApptentiveLogTag.UTIL;
            ApptentiveLog.m399w(apptentiveLogTag, "Unhandled exception thrown from ApptentiveDrawableLoaderTask:" + this.f82e, new Object[0]);
            this.decoderError = true;
        }
        if (bitmap != null || this.decoderError || isCancelled()) {
            if (isCancelled()) {
                bitmap = null;
            }
            if (this.imageViewReference.get() == null || this.decoderError) {
                if (this.mListener != null) {
                    this.mListener.onLoadError();
                }
            } else if (bitmap != null) {
                this.mListener.loadBitmap(bitmap);
            } else if (!isCancelled()) {
                this.mListener.onLoadError();
            } else if (isCancelled()) {
                this.mListener.onLoadCancelled();
            }
        } else {
            this.mListener.notFound();
        }
    }
}
