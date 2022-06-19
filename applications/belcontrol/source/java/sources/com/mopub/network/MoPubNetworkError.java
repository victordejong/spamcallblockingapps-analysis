package com.mopub.network;

import com.mopub.volley.NetworkResponse;
import com.mopub.volley.VolleyError;
/* loaded from: classes3-dex2jar.jar:com/mopub/network/MoPubNetworkError.class */
public class MoPubNetworkError extends VolleyError {

    /* renamed from: b */
    public final Reason f5398b;

    /* renamed from: c */
    public final Integer f5399c;

    /* loaded from: classes3-dex2jar.jar:com/mopub/network/MoPubNetworkError$Reason.class */
    public enum Reason {
        WARMING_UP,
        NO_FILL,
        BAD_HEADER_DATA,
        BAD_BODY,
        TRACKING_FAILURE,
        TOO_MANY_REQUESTS,
        UNSPECIFIED
    }

    public MoPubNetworkError(Reason reason) {
        this.f5398b = reason;
        this.f5399c = null;
    }

    public MoPubNetworkError(NetworkResponse networkResponse, Reason reason) {
        super(networkResponse);
        this.f5398b = reason;
        this.f5399c = null;
    }

    public MoPubNetworkError(String str, Reason reason) {
        this(str, reason, (Integer) null);
    }

    public MoPubNetworkError(String str, Reason reason, Integer num) {
        super(str);
        this.f5398b = reason;
        this.f5399c = num;
    }

    public MoPubNetworkError(String str, Throwable th, Reason reason) {
        super(str, th);
        this.f5398b = reason;
        this.f5399c = null;
    }

    public MoPubNetworkError(Throwable th, Reason reason) {
        super(th);
        this.f5398b = reason;
        this.f5399c = null;
    }

    public boolean equals(Object obj) {
        boolean z = true;
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        MoPubNetworkError moPubNetworkError = (MoPubNetworkError) obj;
        if (this.f5398b != moPubNetworkError.f5398b) {
            return false;
        }
        Integer num = this.f5399c;
        Integer num2 = moPubNetworkError.f5399c;
        if (num != null) {
            z = num.equals(num2);
        } else if (num2 != null) {
            z = false;
        }
        return z;
    }

    public Reason getReason() {
        return this.f5398b;
    }

    public Integer getRefreshTimeMillis() {
        return this.f5399c;
    }

    public int hashCode() {
        int hashCode = this.f5398b.hashCode();
        Integer num = this.f5399c;
        return (hashCode * 31) + (num != null ? num.hashCode() : 0);
    }
}
