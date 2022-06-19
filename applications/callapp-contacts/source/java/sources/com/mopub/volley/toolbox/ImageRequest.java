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

    /* renamed from: g */
    private static final Object f60452g = new Object();

    /* renamed from: a */
    private final Object f60453a;

    /* renamed from: b */
    private Response.Listener<Bitmap> f60454b;

    /* renamed from: c */
    private final Bitmap.Config f60455c;

    /* renamed from: d */
    private final int f60456d;

    /* renamed from: e */
    private final int f60457e;

    /* renamed from: f */
    private final ImageView.ScaleType f60458f;

    @Deprecated
    public ImageRequest(String str, Response.Listener<Bitmap> listener, int i, int i2, Bitmap.Config config, Response.ErrorListener errorListener) {
        this(str, listener, i, i2, ImageView.ScaleType.CENTER_INSIDE, config, errorListener);
    }

    public ImageRequest(String str, Response.Listener<Bitmap> listener, int i, int i2, ImageView.ScaleType scaleType, Bitmap.Config config, Response.ErrorListener errorListener) {
        super(0, str, errorListener);
        this.f60453a = new Object();
        setRetryPolicy(new DefaultRetryPolicy(1000, 2, 2.0f));
        this.f60454b = listener;
        this.f60455c = config;
        this.f60456d = i;
        this.f60457e = i2;
        this.f60458f = scaleType;
    }

    /* renamed from: a */
    private static int m5987a(int i, int i2, int i3, int i4) {
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

    /* renamed from: a */
    private static int m5986a(int i, int i2, int i3, int i4, ImageView.ScaleType scaleType) {
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
        synchronized (this.f60453a) {
            this.f60454b = null;
        }
    }

    @Override // com.mopub.volley.Request
    public /* synthetic */ void deliverResponse(Bitmap bitmap) {
        Response.Listener<Bitmap> listener;
        Bitmap bitmap2 = bitmap;
        synchronized (this.f60453a) {
            listener = this.f60454b;
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
        if (r0.getHeight() > r0) goto L18;
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
