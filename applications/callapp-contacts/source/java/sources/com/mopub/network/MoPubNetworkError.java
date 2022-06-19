package com.mopub.network;

import com.mopub.volley.NetworkResponse;
import com.mopub.volley.VolleyError;
/* loaded from: classes4-dex2jar.jar:com/mopub/network/MoPubNetworkError.class */
public class MoPubNetworkError extends VolleyError {

    /* renamed from: b */
    private final Reason f60296b;

    /* renamed from: c */
    private final Integer f60297c;

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
        this.f60296b = reason;
        this.f60297c = null;
    }

    public MoPubNetworkError(NetworkResponse networkResponse, Reason reason) {
        super(networkResponse);
        this.f60296b = reason;
        this.f60297c = null;
    }

    public MoPubNetworkError(String str, Reason reason) {
        this(str, reason, (Integer) null);
    }

    public MoPubNetworkError(String str, Reason reason, Integer num) {
        super(str);
        this.f60296b = reason;
        this.f60297c = num;
    }

    public MoPubNetworkError(String str, Throwable th, Reason reason) {
        super(str, th);
        this.f60296b = reason;
        this.f60297c = null;
    }

    public MoPubNetworkError(Throwable th, Reason reason) {
        super(th);
        this.f60296b = reason;
        this.f60297c = null;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        MoPubNetworkError moPubNetworkError = (MoPubNetworkError) obj;
        if (this.f60296b != moPubNetworkError.f60296b) {
            return false;
        }
        Integer num = this.f60297c;
        return num != null ? num.equals(moPubNetworkError.f60297c) : moPubNetworkError.f60297c == null;
    }

    public Reason getReason() {
        return this.f60296b;
    }

    public Integer getRefreshTimeMillis() {
        return this.f60297c;
    }

    public int hashCode() {
        int hashCode = this.f60296b.hashCode();
        Integer num = this.f60297c;
        return (hashCode * 31) + (num != null ? num.hashCode() : 0);
    }
}
