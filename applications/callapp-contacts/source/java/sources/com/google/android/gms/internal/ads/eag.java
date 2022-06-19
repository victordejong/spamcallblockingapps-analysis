package com.google.android.gms.internal.ads;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/eag.class */
public final class eag implements Runnable {

    /* renamed from: a */
    private final /* synthetic */ eah f48461a;

    public eag(eah eahVar) {
        this.f48461a = eahVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        eah eahVar = this.f48461a;
        if (eahVar.f48492w || eahVar.f48483n || eahVar.f48481l == null || !eahVar.f48482m) {
            return;
        }
        int size = eahVar.f48479j.size();
        for (int i = 0; i < size; i++) {
            if (eahVar.f48479j.valueAt(i).f48581c.m15340e() == null) {
                return;
            }
        }
        eahVar.f48476g.m15242b();
        ebg[] ebgVarArr = new ebg[size];
        eahVar.f48488s = new boolean[size];
        eahVar.f48487r = new boolean[size];
        eahVar.f48486q = eahVar.f48481l.mo15417b();
        for (int i2 = 0; i2 < size; i2++) {
            zzht m15340e = eahVar.f48479j.valueAt(i2).f48581c.m15340e();
            ebgVarArr[i2] = new ebg(m15340e);
            String str = m15340e.zzaho;
            boolean z = true;
            if (!ecu.m15239b(str)) {
                z = ecu.m15240a(str);
            }
            eahVar.f48488s[i2] = z;
            eahVar.f48489t = z | eahVar.f48489t;
        }
        eahVar.f48485p = new ebi(ebgVarArr);
        eahVar.f48483n = true;
        eahVar.f48471b.mo15350a(new ebh(eahVar.f48486q, eahVar.f48481l.mo15423a()), null);
        eahVar.f48480k.mo15357a((eas) eahVar);
    }
}
