package com.mopub.volley.toolbox;

import android.graphics.Bitmap;
import android.widget.ImageView;
import com.mopub.volley.DefaultRetryPolicy;
import com.mopub.volley.Request;
import com.mopub.volley.Response;
/* loaded from: classes4-dex2jar.jar:com/mopub/volley/toolbox/ImageRequest.class */
public class ImageRequest extends Request<Bitmap> {
    public static final float DEFAULT_IMAGE_BACKOFF_MULT = 2.0f;
    public static final int DEFAULT_IMAGE_MAX_RETRIES = 2;
    public static final int DEFAULT_IMAGE_TIMEOUT_MS = 1000;
    private static final Object g = new Object();

    /* renamed from: a  reason: collision with root package name */
    private final Object f34862a;

    /* renamed from: b  reason: collision with root package name */
    private Response.Listener<Bitmap> f34863b;

    /* renamed from: c  reason: collision with root package name */
    private final Bitmap.Config f34864c;

    /* renamed from: d  reason: collision with root package name */
    private final int f34865d;
    private final int e;
    private final ImageView.ScaleType f;

    @Deprecated
    public ImageRequest(String str, Response.Listener<Bitmap> listener, int i, int i2, Bitmap.Config config, Response.ErrorListener errorListener) {
        this(str, listener, i, i2, ImageView.ScaleType.CENTER_INSIDE, config, errorListener);
    }

    public ImageRequest(String str, Response.Listener<Bitmap> listener, int i, int i2, ImageView.ScaleType scaleType, Bitmap.Config config, Response.ErrorListener errorListener) {
        super(0, str, errorListener);
        this.f34862a = new Object();
        setRetryPolicy(new DefaultRetryPolicy(1000, 2, 2.0f));
        this.f34863b = listener;
        this.f34864c = config;
        this.f34865d = i;
        this.e = i2;
        this.f = scaleType;
    }

    private static int a(int i, int i2, int i3, int i4) {
        float f = 1.0f;
        while (true) {
            float f2 = 2.0f * f;
            if (f2 > Math.min(i / i3, i2 / i4)) {
                return (int) f;
            }
            f = f2;
        }
    }

    private static int a(int i, int i2, int i3, int i4, ImageView.ScaleType scaleType) {
        if (i == 0 && i2 == 0) {
            return i3;
        }
        if (scaleType == ImageView.ScaleType.FIT_XY) {
            return i == 0 ? i3 : i;
        }
        if (i == 0) {
            return (int) (i3 * (i2 / i4));
        } else if (i2 == 0) {
            return i;
        } else {
            double d2 = i4 / i3;
            if (scaleType == ImageView.ScaleType.CENTER_CROP) {
                double d3 = i2;
                if (i * d2 < d3) {
                    i = (int) (d3 / d2);
                }
                return i;
            }
            double d4 = i2;
            if (i * d2 > d4) {
                i = (int) (d4 / d2);
            }
            return i;
        }
    }

    @Override // com.mopub.volley.Request
    public void cancel() {
        super.cancel();
        synchronized (this.f34862a) {
            this.f34863b = null;
        }
    }

    @Override // com.mopub.volley.Request
    public /* synthetic */ void deliverResponse(Bitmap bitmap) {
        Response.Listener<Bitmap> listener;
        Bitmap bitmap2 = bitmap;
        synchronized (this.f34862a) {
            listener = this.f34863b;
        }
        if (listener != null) {
            listener.onResponse(bitmap2);
        }
    }

    @Override // com.mopub.volley.Request
    public Request.Priority getPriority() {
        return Request.Priority.LOW;
    }

    /* JADX WARN: Code restructure failed: missing block: B:17:0x00bb, code lost:
        if (r0.getHeight() > r0) goto L_0x00be;
     */
    @Override // com.mopub.volley.Request
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public com.mopub.volley.Response<android.graphics.Bitmap> parseNetworkResponse(com.mopub.volley.NetworkResponse r7) {
        /*
            Method dump skipped, instructions count: 308
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.mopub.volley.toolbox.ImageRequest.parseNetworkResponse(com.mopub.volley.NetworkResponse):com.mopub.volley.Response");
    }
}
