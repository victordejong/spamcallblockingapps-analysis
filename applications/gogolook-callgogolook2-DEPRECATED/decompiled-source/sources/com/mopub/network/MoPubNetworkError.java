package com.mopub.network;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.mopub.volley.NetworkResponse;
import com.mopub.volley.VolleyError;
/* loaded from: classes2-dex2jar.jar:com/mopub/network/MoPubNetworkError.class */
public class MoPubNetworkError extends VolleyError {
    @NonNull

    /* renamed from: b */
    public final Reason f9427b;
    @Nullable

    /* renamed from: c */
    public final Integer f9428c;

    /* loaded from: classes2-dex2jar.jar:com/mopub/network/MoPubNetworkError$Reason.class */
    public enum Reason {
        WARMING_UP,
        NO_FILL,
        BAD_HEADER_DATA,
        BAD_BODY,
        TRACKING_FAILURE,
        UNSPECIFIED
    }

    public MoPubNetworkError(@NonNull Reason reason) {
        this.f9427b = reason;
        this.f9428c = null;
    }

    public MoPubNetworkError(@NonNull NetworkResponse networkResponse, @NonNull Reason reason) {
        super(networkResponse);
        this.f9427b = reason;
        this.f9428c = null;
    }

    public MoPubNetworkError(@NonNull String str, @NonNull Reason reason) {
        this(str, reason, (Integer) null);
    }

    public MoPubNetworkError(@NonNull String str, @NonNull Reason reason, @Nullable Integer num) {
        super(str);
        this.f9427b = reason;
        this.f9428c = num;
    }

    public MoPubNetworkError(@NonNull String str, @NonNull Throwable th, @NonNull Reason reason) {
        super(str, th);
        this.f9427b = reason;
        this.f9428c = null;
    }

    public MoPubNetworkError(@NonNull Throwable th, @NonNull Reason reason) {
        super(th);
        this.f9427b = reason;
        this.f9428c = null;
    }

    @NonNull
    public Reason getReason() {
        return this.f9427b;
    }

    @Nullable
    public Integer getRefreshTimeMillis() {
        return this.f9428c;
    }
}
