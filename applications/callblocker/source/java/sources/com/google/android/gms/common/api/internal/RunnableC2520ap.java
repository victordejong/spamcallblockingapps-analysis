package com.google.android.gms.common.api.internal;

import com.google.android.gms.p127b.p128a.C2460l;
/* renamed from: com.google.android.gms.common.api.internal.ap */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/api/internal/ap.class */
final class RunnableC2520ap implements Runnable {

    /* renamed from: a */
    private final /* synthetic */ C2460l f7105a;

    /* renamed from: b */
    private final /* synthetic */ BinderC2518an f7106b;

    public RunnableC2520ap(BinderC2518an binderC2518an, C2460l c2460l) {
        this.f7106b = binderC2518an;
        this.f7105a = c2460l;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f7106b.m14380b(this.f7105a);
    }
}
