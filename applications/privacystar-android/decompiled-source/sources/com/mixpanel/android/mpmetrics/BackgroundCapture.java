package com.mixpanel.android.mpmetrics;

import android.app.Activity;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.PorterDuff;
import android.os.AsyncTask;
import android.support.p001v4.view.ViewCompat;
import com.mixpanel.android.util.ActivityImageUtils;
import com.mixpanel.android.util.StackBlurManager;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:com/mixpanel/android/mpmetrics/BackgroundCapture.class */
public class BackgroundCapture {
    private static final int GRAY_72PERCENT_OPAQUE = Color.argb(186, 28, 28, 28);
    private static final String LOGTAG = "MixpanelAPI.BackgroundCapture";

    /* loaded from: classes-dex2jar.jar:com/mixpanel/android/mpmetrics/BackgroundCapture$BackgroundCaptureTask.class */
    private static class BackgroundCaptureTask extends AsyncTask<Void, Void, Void> {
        private int mCalculatedHighlightColor = ViewCompat.MEASURED_STATE_MASK;
        private final OnBackgroundCapturedListener mListener;
        private final Activity mParentActivity;
        private Bitmap mSourceImage;

        public BackgroundCaptureTask(Activity activity, OnBackgroundCapturedListener onBackgroundCapturedListener) {
            this.mParentActivity = activity;
            this.mListener = onBackgroundCapturedListener;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        public Void doInBackground(Void... voidArr) {
            if (this.mSourceImage == null) {
                return null;
            }
            try {
                StackBlurManager.process(this.mSourceImage, 20);
                new Canvas(this.mSourceImage).drawColor(BackgroundCapture.GRAY_72PERCENT_OPAQUE, PorterDuff.Mode.SRC_ATOP);
                return null;
            } catch (ArrayIndexOutOfBoundsException e) {
                this.mSourceImage = null;
                return null;
            } catch (OutOfMemoryError e2) {
                this.mSourceImage = null;
                return null;
            }
        }

        /* JADX INFO: Access modifiers changed from: protected */
        public void onPostExecute(Void r5) {
            this.mListener.onBackgroundCaptured(this.mSourceImage, this.mCalculatedHighlightColor);
        }

        @Override // android.os.AsyncTask
        protected void onPreExecute() {
            this.mSourceImage = ActivityImageUtils.getScaledScreenshot(this.mParentActivity, 2, 2, true);
            this.mCalculatedHighlightColor = ActivityImageUtils.getHighlightColorFromBitmap(this.mSourceImage);
        }
    }

    /* loaded from: classes-dex2jar.jar:com/mixpanel/android/mpmetrics/BackgroundCapture$OnBackgroundCapturedListener.class */
    public interface OnBackgroundCapturedListener {
        void onBackgroundCaptured(Bitmap bitmap, int i);
    }

    BackgroundCapture() {
    }

    public static void captureBackground(final Activity activity, final OnBackgroundCapturedListener onBackgroundCapturedListener) {
        activity.runOnUiThread(new Runnable() { // from class: com.mixpanel.android.mpmetrics.BackgroundCapture.1
            @Override // java.lang.Runnable
            public void run() {
                new BackgroundCaptureTask(activity, onBackgroundCapturedListener).execute(new Void[0]);
            }
        });
    }
}
