package com.mopub.volley;
/* loaded from: classes4-dex2jar.jar:com/mopub/volley/DefaultRetryPolicy.class */
public class DefaultRetryPolicy implements RetryPolicy {
    public static final float DEFAULT_BACKOFF_MULT = 1.0f;
    public static final int DEFAULT_MAX_RETRIES = 1;
    public static final int DEFAULT_TIMEOUT_MS = 2500;

    /* renamed from: a  reason: collision with root package name */
    private int f34783a;

    /* renamed from: b  reason: collision with root package name */
    private int f34784b;

    /* renamed from: c  reason: collision with root package name */
    private final int f34785c;

    /* renamed from: d  reason: collision with root package name */
    private final float f34786d;

    public DefaultRetryPolicy() {
        this(DEFAULT_TIMEOUT_MS, 1, 1.0f);
    }

    public DefaultRetryPolicy(int i, int i2, float f) {
        this.f34783a = i;
        this.f34785c = i2;
        this.f34786d = f;
    }

    public float getBackoffMultiplier() {
        return this.f34786d;
    }

    @Override // com.mopub.volley.RetryPolicy
    public int getCurrentRetryCount() {
        return this.f34784b;
    }

    @Override // com.mopub.volley.RetryPolicy
    public int getCurrentTimeout() {
        return this.f34783a;
    }

    @Override // com.mopub.volley.RetryPolicy
    public void retry(VolleyError volleyError) throws VolleyError {
        boolean z = true;
        int i = this.f34784b + 1;
        this.f34784b = i;
        int i2 = this.f34783a;
        this.f34783a = i2 + ((int) (i2 * this.f34786d));
        if (i > this.f34785c) {
            z = false;
        }
        if (!z) {
            throw volleyError;
        }
    }
}
