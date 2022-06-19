package com.mopub.volley.toolbox;

import android.graphics.Bitmap;
import android.widget.ImageView;
import com.mopub.volley.DefaultRetryPolicy;
import com.mopub.volley.NetworkResponse;
import com.mopub.volley.ParseError;
import com.mopub.volley.Request;
import com.mopub.volley.Response;
import com.mopub.volley.VolleyLog;
/* loaded from: classes3-dex2jar.jar:com/mopub/volley/toolbox/ImageRequest.class */
public class ImageRequest extends Request<Bitmap> {
    public static final float DEFAULT_IMAGE_BACKOFF_MULT = 2.0f;
    public static final int DEFAULT_IMAGE_MAX_RETRIES = 2;
    public static final int DEFAULT_IMAGE_TIMEOUT_MS = 1000;

    /* renamed from: y */
    public static final Object f5563y = new Object();

    /* renamed from: s */
    public final Object f5564s;

    /* renamed from: t */
    public Response.Listener<Bitmap> f5565t;

    /* renamed from: u */
    public final Bitmap.Config f5566u;

    /* renamed from: v */
    public final int f5567v;

    /* renamed from: w */
    public final int f5568w;

    /* renamed from: x */
    public final ImageView.ScaleType f5569x;

    @Deprecated
    public ImageRequest(String str, Response.Listener<Bitmap> listener, int i, int i2, Bitmap.Config config, Response.ErrorListener errorListener) {
        this(str, listener, i, i2, ImageView.ScaleType.CENTER_INSIDE, config, errorListener);
    }

    public ImageRequest(String str, Response.Listener<Bitmap> listener, int i, int i2, ImageView.ScaleType scaleType, Bitmap.Config config, Response.ErrorListener errorListener) {
        super(0, str, errorListener);
        this.f5564s = new Object();
        setRetryPolicy(new DefaultRetryPolicy(1000, 2, 2.0f));
        this.f5565t = listener;
        this.f5566u = config;
        this.f5567v = i;
        this.f5568w = i2;
        this.f5569x = scaleType;
    }

    /* renamed from: q */
    public static int m3096q(int i, int i2, int i3, int i4) {
        float f = 1.0f;
        while (true) {
            float f2 = f;
            float f3 = 2.0f * f2;
            if (f3 <= Math.min(i / i3, i2 / i4)) {
                f = f3;
            } else {
                return (int) f2;
            }
        }
    }

    /* renamed from: r */
    public static int m3095r(int i, int i2, int i3, int i4, ImageView.ScaleType scaleType) {
        if (i == 0 && i2 == 0) {
            return i3;
        }
        if (scaleType == ImageView.ScaleType.FIT_XY) {
            return i == 0 ? i3 : i;
        } else if (i == 0) {
            return (int) (i3 * (i2 / i4));
        } else if (i2 == 0) {
            return i;
        } else {
            double d = i4 / i3;
            if (scaleType == ImageView.ScaleType.CENTER_CROP) {
                double d2 = i2;
                if (i * d < d2) {
                    i = (int) (d2 / d);
                }
                return i;
            }
            double d3 = i2;
            if (i * d > d3) {
                i = (int) (d3 / d);
            }
            return i;
        }
    }

    @Override // com.mopub.volley.Request
    public void cancel() {
        super.cancel();
        synchronized (this.f5564s) {
            this.f5565t = null;
        }
    }

    @Override // com.mopub.volley.Request
    public Request.Priority getPriority() {
        return Request.Priority.LOW;
    }

    @Override // com.mopub.volley.Request
    /* renamed from: l */
    public Response<Bitmap> mo3087l(NetworkResponse networkResponse) {
        Response<Bitmap> m3097p;
        synchronized (f5563y) {
            try {
                m3097p = m3097p(networkResponse);
            } catch (OutOfMemoryError e) {
                VolleyLog.m3155e("Caught OOM for %d byte image, url=%s", Integer.valueOf(networkResponse.data.length), getUrl());
                return Response.error(new ParseError(e));
            }
        }
        return m3097p;
    }

    /* renamed from: o */
    public void deliverResponse(Bitmap bitmap) {
        Response.Listener<Bitmap> listener;
        synchronized (this.f5564s) {
            listener = this.f5565t;
        }
        if (listener != null) {
            listener.onResponse(bitmap);
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:12:0x00a7, code lost:
        if (r0.getHeight() > r0) goto L13;
     */
    /* renamed from: p */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final com.mopub.volley.Response<android.graphics.Bitmap> m3097p(com.mopub.volley.NetworkResponse r7) {
        /*
            Method dump skipped, instructions count: 209
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.mopub.volley.toolbox.ImageRequest.m3097p(com.mopub.volley.NetworkResponse):com.mopub.volley.Response");
    }
}
