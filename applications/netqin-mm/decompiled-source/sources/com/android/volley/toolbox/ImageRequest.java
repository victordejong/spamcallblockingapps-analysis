package com.android.volley.toolbox;

import android.graphics.Bitmap;
import android.widget.ImageView;
import com.android.volley.DefaultRetryPolicy;
import com.android.volley.NetworkResponse;
import com.android.volley.ParseError;
import com.android.volley.Request;
import com.android.volley.Response;
import com.android.volley.VolleyLog;
/* loaded from: classes-dex2jar.jar:com/android/volley/toolbox/ImageRequest.class */
public class ImageRequest extends Request<Bitmap> {
    public static final float DEFAULT_IMAGE_BACKOFF_MULT = 2.0f;
    public static final int DEFAULT_IMAGE_MAX_RETRIES = 2;
    public static final int DEFAULT_IMAGE_TIMEOUT_MS = 1000;
    public static final Object sDecodeLock = new Object();
    public final Bitmap.Config mDecodeConfig;
    public Response.Listener<Bitmap> mListener;
    public final Object mLock;
    public final int mMaxHeight;
    public final int mMaxWidth;
    public final ImageView.ScaleType mScaleType;

    @Deprecated
    public ImageRequest(String str, Response.Listener<Bitmap> listener, int i, int i2, Bitmap.Config config, Response.ErrorListener errorListener) {
        this(str, listener, i, i2, ImageView.ScaleType.CENTER_INSIDE, config, errorListener);
    }

    public ImageRequest(String str, Response.Listener<Bitmap> listener, int i, int i2, ImageView.ScaleType scaleType, Bitmap.Config config, Response.ErrorListener errorListener) {
        super(0, str, errorListener);
        this.mLock = new Object();
        setRetryPolicy(new DefaultRetryPolicy(1000, 2, 2.0f));
        this.mListener = listener;
        this.mDecodeConfig = config;
        this.mMaxWidth = i;
        this.mMaxHeight = i2;
        this.mScaleType = scaleType;
    }

    /* JADX WARN: Code restructure failed: missing block: B:12:0x00a7, code lost:
        if (r0.getHeight() > r0) goto L_0x00aa;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private com.android.volley.Response<android.graphics.Bitmap> doParse(com.android.volley.NetworkResponse r7) {
        /*
            Method dump skipped, instructions count: 209
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.volley.toolbox.ImageRequest.doParse(com.android.volley.NetworkResponse):com.android.volley.Response");
    }

    public static int findBestSampleSize(int i, int i2, int i3, int i4) {
        double d = i;
        double d2 = i3;
        Double.isNaN(d);
        Double.isNaN(d2);
        double d3 = d / d2;
        double d4 = i2;
        double d5 = i4;
        Double.isNaN(d4);
        Double.isNaN(d5);
        double min = Math.min(d3, d4 / d5);
        float f = 1.0f;
        while (true) {
            float f2 = 2.0f * f;
            if (f2 > min) {
                return (int) f;
            }
            f = f2;
        }
    }

    public static int getResizedDimension(int i, int i2, int i3, int i4, ImageView.ScaleType scaleType) {
        if (i == 0 && i2 == 0) {
            return i3;
        }
        if (scaleType == ImageView.ScaleType.FIT_XY) {
            return i == 0 ? i3 : i;
        }
        if (i == 0) {
            double d = i2;
            double d2 = i4;
            Double.isNaN(d);
            Double.isNaN(d2);
            double d3 = d / d2;
            double d4 = i3;
            Double.isNaN(d4);
            return (int) (d4 * d3);
        } else if (i2 == 0) {
            return i;
        } else {
            double d5 = i4;
            double d6 = i3;
            Double.isNaN(d5);
            Double.isNaN(d6);
            double d7 = d5 / d6;
            if (scaleType == ImageView.ScaleType.CENTER_CROP) {
                double d8 = i;
                Double.isNaN(d8);
                double d9 = i2;
                if (d8 * d7 < d9) {
                    Double.isNaN(d9);
                    i = (int) (d9 / d7);
                }
                return i;
            }
            double d10 = i;
            Double.isNaN(d10);
            double d11 = i2;
            if (d10 * d7 > d11) {
                Double.isNaN(d11);
                i = (int) (d11 / d7);
            }
            return i;
        }
    }

    @Override // com.android.volley.Request
    public void cancel() {
        super.cancel();
        synchronized (this.mLock) {
            this.mListener = null;
        }
    }

    public void deliverResponse(Bitmap bitmap) {
        Response.Listener<Bitmap> listener;
        synchronized (this.mLock) {
            listener = this.mListener;
        }
        if (listener != null) {
            listener.onResponse(bitmap);
        }
    }

    @Override // com.android.volley.Request
    public Request.Priority getPriority() {
        return Request.Priority.LOW;
    }

    @Override // com.android.volley.Request
    public Response<Bitmap> parseNetworkResponse(NetworkResponse networkResponse) {
        Response<Bitmap> doParse;
        synchronized (sDecodeLock) {
            try {
                doParse = doParse(networkResponse);
            } catch (OutOfMemoryError e) {
                VolleyLog.m19481e("Caught OOM for %d byte image, url=%s", Integer.valueOf(networkResponse.data.length), getUrl());
                return Response.error(new ParseError(e));
            }
        }
        return doParse;
    }
}
