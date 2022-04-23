package com.google.android.gms.measurement.internal;

import com.tmobile.services.nameid.model.TmoUserStatus;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/zzeq.class */
public final class zzeq implements Runnable {

    /* renamed from: f */
    private final /* synthetic */ int f9102f;

    /* renamed from: g */
    private final /* synthetic */ String f9103g;

    /* renamed from: h */
    private final /* synthetic */ Object f9104h;

    /* renamed from: i */
    private final /* synthetic */ Object f9105i;

    /* renamed from: j */
    private final /* synthetic */ Object f9106j;

    /* renamed from: k */
    private final /* synthetic */ zzer f9107k;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzeq(zzer zzerVar, int i, String str, Object obj, Object obj2, Object obj3) {
        this.f9107k = zzerVar;
        this.f9102f = i;
        this.f9103g = str;
        this.f9104h = obj;
        this.f9105i = obj2;
        this.f9106j = obj3;
    }

    @Override // java.lang.Runnable
    public final void run() {
        char c;
        long j;
        char c2;
        long j2;
        zzfd x = this.f9107k.f9354a.m11349x();
        if (!x.m11307r()) {
            this.f9107k.m11543y(6, "Persisted config not initialized. Not logging error/warn");
            return;
        }
        c = this.f9107k.f9108c;
        if (c == 0) {
            if (this.f9107k.m11311l().m10902A()) {
                this.f9107k.f9108c = 'C';
            } else {
                this.f9107k.f9108c = 'c';
            }
        }
        j = this.f9107k.f9109d;
        if (j < 0) {
            this.f9107k.f9109d = 32053L;
        }
        char charAt = "01VDIWEA?".charAt(this.f9102f);
        c2 = this.f9107k.f9108c;
        j2 = this.f9107k.f9109d;
        String x2 = zzer.m11544x(true, this.f9103g, this.f9104h, this.f9105i, this.f9106j);
        StringBuilder sb = new StringBuilder(String.valueOf(x2).length() + 24);
        sb.append(TmoUserStatus.CUSTOMER_TYPE_PREPAID);
        sb.append(charAt);
        sb.append(c2);
        sb.append(j2);
        sb.append(":");
        sb.append(x2);
        String sb2 = sb.toString();
        String str = sb2;
        if (sb2.length() > 1024) {
            str = this.f9103g.substring(0, 1024);
        }
        x.f9185d.m11436b(str, 1L);
    }
}
