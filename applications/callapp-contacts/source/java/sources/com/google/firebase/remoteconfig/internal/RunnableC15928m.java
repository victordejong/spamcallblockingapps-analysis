package com.google.firebase.remoteconfig.internal;

import com.google.android.gms.common.util.AbstractC12100d;
/* renamed from: com.google.firebase.remoteconfig.internal.m */
/* loaded from: classes4-dex2jar.jar:com/google/firebase/remoteconfig/internal/m.class */
public final /* synthetic */ class RunnableC15928m implements Runnable {

    /* renamed from: a */
    private final AbstractC12100d f56550a;

    /* renamed from: b */
    private final String f56551b;

    /* renamed from: c */
    private final C15918f f56552c;

    private RunnableC15928m(AbstractC12100d abstractC12100d, String str, C15918f c15918f) {
        this.f56550a = abstractC12100d;
        this.f56551b = str;
        this.f56552c = c15918f;
    }

    /* renamed from: a */
    public static Runnable m8046a(AbstractC12100d abstractC12100d, String str, C15918f c15918f) {
        return new RunnableC15928m(abstractC12100d, str, c15918f);
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f56550a.mo8088a(this.f56551b, this.f56552c);
    }
}
