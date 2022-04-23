package com.mopub.network;

import com.mopub.volley.NetworkResponse;
import com.mopub.volley.VolleyError;
/* loaded from: classes4-dex2jar.jar:com/mopub/network/MoPubNetworkError.class */
public class MoPubNetworkError extends VolleyError {

    /* renamed from: b  reason: collision with root package name */
    private final Reason f34728b;

    /* renamed from: c  reason: collision with root package name */
    private final Integer f34729c;

    /* loaded from: classes4-dex2jar.jar:com/mopub/network/MoPubNetworkError$Reason.class */
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
        this.f34728b = reason;
        this.f34729c = null;
    }

    public MoPubNetworkError(NetworkResponse networkResponse, Reason reason) {
        super(networkResponse);
        this.f34728b = reason;
        this.f34729c = null;
    }

    public MoPubNetworkError(String str, Reason reason) {
        this(str, reason, (Integer) null);
    }

    public MoPubNetworkError(String str, Reason reason, Integer num) {
        super(str);
        this.f34728b = reason;
        this.f34729c = num;
    }

    public MoPubNetworkError(String str, Throwable th, Reason reason) {
        super(str, th);
        this.f34728b = reason;
        this.f34729c = null;
    }

    public MoPubNetworkError(Throwable th, Reason reason) {
        super(th);
        this.f34728b = reason;
        this.f34729c = null;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        MoPubNetworkError moPubNetworkError = (MoPubNetworkError) obj;
        if (this.f34728b != moPubNetworkError.f34728b) {
            return false;
        }
        Integer num = this.f34729c;
        return num != null ? num.equals(moPubNetworkError.f34729c) : moPubNetworkError.f34729c == null;
    }

    public Reason getReason() {
        return this.f34728b;
    }

    public Integer getRefreshTimeMillis() {
        return this.f34729c;
    }

    public int hashCode() {
        int hashCode = this.f34728b.hashCode();
        Integer num = this.f34729c;
        return (hashCode * 31) + (num != null ? num.hashCode() : 0);
    }
}
