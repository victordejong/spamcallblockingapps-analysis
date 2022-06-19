package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.internal.C2341q;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/bit.class */
public final class bit extends AbstractBinderC3164gg {

    /* renamed from: a */
    private final /* synthetic */ Object f11351a;

    /* renamed from: b */
    private final /* synthetic */ String f11352b;

    /* renamed from: c */
    private final /* synthetic */ long f11353c;

    /* renamed from: d */
    private final /* synthetic */ C3658yo f11354d;

    /* renamed from: e */
    private final /* synthetic */ bij f11355e;

    public bit(bij bijVar, Object obj, String str, long j, C3658yo c3658yo) {
        this.f11355e = bijVar;
        this.f11351a = obj;
        this.f11352b = str;
        this.f11353c = j;
        this.f11354d = c3658yo;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC3161gd
    /* renamed from: a */
    public final void mo7818a() {
        bht bhtVar;
        synchronized (this.f11351a) {
            this.f11355e.m11877a(this.f11352b, true, "", (int) (C2341q.m14737j().mo13861b() - this.f11353c));
            bhtVar = this.f11355e.f11329k;
            bhtVar.m11916b(this.f11352b);
            this.f11354d.m6731b(true);
        }
    }

    @Override // com.google.android.gms.internal.ads.AbstractC3161gd
    /* renamed from: a */
    public final void mo7817a(String str) {
        bht bhtVar;
        synchronized (this.f11351a) {
            this.f11355e.m11877a(this.f11352b, false, str, (int) (C2341q.m14737j().mo13861b() - this.f11353c));
            bhtVar = this.f11355e.f11329k;
            bhtVar.m11918a(this.f11352b, "error");
            this.f11354d.m6731b(false);
        }
    }
}
