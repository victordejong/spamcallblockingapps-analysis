package com.google.firebase.remoteconfig.internal;

import com.google.android.gms.common.util.AbstractC1608d;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.google.firebase.remoteconfig.internal.l */
/* loaded from: classes2-dex2jar.jar:com/google/firebase/remoteconfig/internal/l.class */
public final /* synthetic */ class RunnableC2526l implements Runnable {

    /* renamed from: b */
    private final AbstractC1608d f10833b;

    /* renamed from: c */
    private final String f10834c;

    /* renamed from: d */
    private final C2517f f10835d;

    private RunnableC2526l(AbstractC1608d dVar, String str, C2517f fVar) {
        this.f10833b = dVar;
        this.f10834c = str;
        this.f10835d = fVar;
    }

    /* renamed from: a */
    public static Runnable m3216a(AbstractC1608d dVar, String str, C2517f fVar) {
        return new RunnableC2526l(dVar, str, fVar);
    }

    @Override // java.lang.Runnable
    public void run() {
        this.f10833b.mo3178a(this.f10834c, this.f10835d);
    }
}
