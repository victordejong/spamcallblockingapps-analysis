package com.mopub.volley;
/* loaded from: classes2-dex2jar.jar:com/mopub/volley/DefaultRetryPolicy.class */
public class DefaultRetryPolicy implements RetryPolicy {
    public static final float DEFAULT_BACKOFF_MULT = 1.0f;
    public static final int DEFAULT_MAX_RETRIES = 1;
    public static final int DEFAULT_TIMEOUT_MS = 2500;

    /* renamed from: a */
    public int f9478a;

    /* renamed from: b */
    public int f9479b;

    /* renamed from: c */
    public final int f9480c;

    /* renamed from: d */
    public final float f9481d;

    public DefaultRetryPolicy() {
        this(2500, 1, 1.0f);
    }

    public DefaultRetryPolicy(int i, int i2, float f) {
        this.f9478a = i;
        this.f9480c = i2;
        this.f9481d = f;
    }

    /* renamed from: a */
    public boolean m29964a() {
        return this.f9479b <= this.f9480c;
    }

    public float getBackoffMultiplier() {
        return this.f9481d;
    }

    @Override // com.mopub.volley.RetryPolicy
    public int getCurrentRetryCount() {
        return this.f9479b;
    }

    @Override // com.mopub.volley.RetryPolicy
    public int getCurrentTimeout() {
        return this.f9478a;
    }

    @Override // com.mopub.volley.RetryPolicy
    public void retry(VolleyError volleyError) throws VolleyError {
        this.f9479b++;
        int i = this.f9478a;
        this.f9478a = i + ((int) (i * this.f9481d));
        if (!m29964a()) {
            throw volleyError;
        }
    }
}
