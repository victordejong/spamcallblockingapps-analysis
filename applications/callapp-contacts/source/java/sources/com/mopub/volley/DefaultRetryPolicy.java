package com.mopub.volley;
/* loaded from: classes4-dex2jar.jar:com/mopub/volley/DefaultRetryPolicy.class */
public class DefaultRetryPolicy implements RetryPolicy {
    public static final float DEFAULT_BACKOFF_MULT = 1.0f;
    public static final int DEFAULT_MAX_RETRIES = 1;
    public static final int DEFAULT_TIMEOUT_MS = 2500;

    /* renamed from: a */
    private int f60356a;

    /* renamed from: b */
    private int f60357b;

    /* renamed from: c */
    private final int f60358c;

    /* renamed from: d */
    private final float f60359d;

    public DefaultRetryPolicy() {
        this(DEFAULT_TIMEOUT_MS, 1, 1.0f);
    }

    public DefaultRetryPolicy(int i, int i2, float f) {
        this.f60356a = i;
        this.f60358c = i2;
        this.f60359d = f;
    }

    public float getBackoffMultiplier() {
        return this.f60359d;
    }

    @Override // com.mopub.volley.RetryPolicy
    public int getCurrentRetryCount() {
        return this.f60357b;
    }

    @Override // com.mopub.volley.RetryPolicy
    public int getCurrentTimeout() {
        return this.f60356a;
    }

    @Override // com.mopub.volley.RetryPolicy
    public void retry(VolleyError volleyError) throws VolleyError {
        boolean z = true;
        int i = this.f60357b + 1;
        this.f60357b = i;
        int i2 = this.f60356a;
        this.f60356a = i2 + ((int) (i2 * this.f60359d));
        if (i > this.f60358c) {
            z = false;
        }
        if (z) {
            return;
        }
        throw volleyError;
    }
}
