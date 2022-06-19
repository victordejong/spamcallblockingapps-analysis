package com.mopub.volley;
/* loaded from: classes3-dex2jar.jar:com/mopub/volley/DefaultRetryPolicy.class */
public class DefaultRetryPolicy implements RetryPolicy {
    public static final float DEFAULT_BACKOFF_MULT = 1.0f;
    public static final int DEFAULT_MAX_RETRIES = 1;
    public static final int DEFAULT_TIMEOUT_MS = 2500;

    /* renamed from: a */
    public int f5452a;

    /* renamed from: b */
    public int f5453b;

    /* renamed from: c */
    public final int f5454c;

    /* renamed from: d */
    public final float f5455d;

    public DefaultRetryPolicy() {
        this(DEFAULT_TIMEOUT_MS, 1, 1.0f);
    }

    public DefaultRetryPolicy(int i, int i2, float f) {
        this.f5452a = i;
        this.f5454c = i2;
        this.f5455d = f;
    }

    /* renamed from: a */
    public boolean m3180a() {
        return this.f5453b <= this.f5454c;
    }

    public float getBackoffMultiplier() {
        return this.f5455d;
    }

    @Override // com.mopub.volley.RetryPolicy
    public int getCurrentRetryCount() {
        return this.f5453b;
    }

    @Override // com.mopub.volley.RetryPolicy
    public int getCurrentTimeout() {
        return this.f5452a;
    }

    @Override // com.mopub.volley.RetryPolicy
    public void retry(VolleyError volleyError) {
        this.f5453b++;
        int i = this.f5452a;
        this.f5452a = i + ((int) (i * this.f5455d));
        if (m3180a()) {
            return;
        }
        throw volleyError;
    }
}
