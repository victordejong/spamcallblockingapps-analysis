package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.RemoteException;
import com.google.android.gms.ads.p262u.AbstractC5850a;
/* renamed from: com.google.android.gms.internal.ads.tl */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/tl.class */
public final class C7001tl {

    /* renamed from: a */
    private AbstractC7008ts f30034a;

    /* renamed from: b */
    private final Context f30035b;

    /* renamed from: c */
    private final String f30036c;

    /* renamed from: d */
    private final C6862pu f30037d;

    /* renamed from: e */
    private final int f30038e;

    /* renamed from: f */
    private final AbstractC5850a.AbstractC5851a f30039f;

    /* renamed from: g */
    private final p70 f30040g = new p70();

    /* renamed from: h */
    private final C7154xq f30041h = C7154xq.f32156a;

    public C7001tl(Context context, String str, C6862pu c6862pu, int i, AbstractC5850a.AbstractC5851a abstractC5851a) {
        this.f30035b = context;
        this.f30036c = str;
        this.f30037d = c6862pu;
        this.f30038e = i;
        this.f30039f = abstractC5851a;
    }

    /* renamed from: a */
    public final void m10643a() {
        try {
            this.f30034a = C7118wr.m9484b().m10191i(this.f30035b, zzbdl.m8080n0(), this.f30036c, this.f30040g);
            zzbdr zzbdrVar = new zzbdr(this.f30038e);
            AbstractC7008ts abstractC7008ts = this.f30034a;
            if (abstractC7008ts == null) {
                return;
            }
            abstractC7008ts.mo9649N5(zzbdrVar);
            this.f30034a.mo9629m6(new BinderC6482fl(this.f30039f, this.f30036c));
            this.f30034a.mo9634k5(this.f30041h.m9085a(this.f30035b, this.f30037d));
        } catch (RemoteException e) {
            ei0.m15461i("#007 Could not call remote method.", e);
        }
    }
}
