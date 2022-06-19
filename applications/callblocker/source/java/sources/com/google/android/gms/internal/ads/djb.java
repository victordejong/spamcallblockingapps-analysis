package com.google.android.gms.internal.ads;

import android.content.Context;
import com.google.android.gms.internal.ads.amp;
import com.google.android.gms.internal.ads.atw;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.atomic.AtomicReference;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/djb.class */
public final class djb extends djz {

    /* renamed from: d */
    private static final dkd<bnl> f14468d = new dkd<>();

    /* renamed from: e */
    private final Context f14469e;

    /* renamed from: f */
    private amp.C2781a f14470f;

    public djb(din dinVar, String str, String str2, atw.C2798a.C2799a c2799a, int i, int i2, Context context, amp.C2781a c2781a) {
        super(dinVar, str, str2, c2799a, i, 27);
        this.f14470f = null;
        this.f14469e = context;
        this.f14470f = c2781a;
    }

    /* renamed from: a */
    private static String m9373a(amp.C2781a c2781a) {
        return (c2781a == null || !c2781a.m12926c() || dis.m9385b(c2781a.m12925d().m12920a())) ? null : c2781a.m12925d().m12920a();
    }

    /* renamed from: c */
    private final String m9372c() {
        String str;
        atw.C2798a m9398l;
        try {
            if (this.f14500a.m9397m() != null) {
                this.f14500a.m9397m().get();
            }
            m9398l = this.f14500a.m9398l();
        } catch (InterruptedException e) {
        } catch (ExecutionException e2) {
        }
        if (m9398l != null && m9398l.m12704a()) {
            str = m9398l.m12687b();
            return str;
        }
        str = null;
        return str;
    }

    @Override // com.google.android.gms.internal.ads.djz
    /* renamed from: a */
    protected final void mo9365a() {
        bnl bnlVar;
        aps apsVar;
        AtomicReference<bnl> m9359a = f14468d.m9359a(this.f14469e.getPackageName());
        synchronized (m9359a) {
            bnl bnlVar2 = m9359a.get();
            if (bnlVar2 == null || dis.m9385b(bnlVar2.f11603a) || bnlVar2.f11603a.equals("E") || bnlVar2.f11603a.equals("0000000000000000000000000000000000000000000000000000000000000000")) {
                if (!dis.m9385b(m9373a(this.f14470f))) {
                    apsVar = aps.ENUM_SIGNAL_SOURCE_CALLER_PROVIDED;
                } else {
                    amp.C2781a c2781a = this.f14470f;
                    apsVar = (!Boolean.valueOf(dis.m9385b(m9373a(c2781a)) && c2781a != null && c2781a.m12928a() && c2781a.m12927b().m12923a() == aps.ENUM_SIGNAL_SOURCE_GASS).booleanValue() || !this.f14500a.m9401i()) ? aps.ENUM_SIGNAL_SOURCE_ADSHIELD : aps.ENUM_SIGNAL_SOURCE_GASS;
                }
                bnl bnlVar3 = new bnl((String) this.f14502c.invoke(null, this.f14469e, Boolean.valueOf(apsVar == aps.ENUM_SIGNAL_SOURCE_ADSHIELD), dyx.m8158e().m7876a(edi.f16424bd)));
                if (dis.m9385b(bnlVar3.f11603a) || bnlVar3.f11603a.equals("E")) {
                    switch (dje.f14473a[apsVar.ordinal()]) {
                        case 1:
                            bnlVar3.f11603a = this.f14470f.m12925d().m12920a();
                            break;
                        case 2:
                            String m9372c = m9372c();
                            if (!dis.m9385b(m9372c)) {
                                bnlVar3.f11603a = m9372c;
                                break;
                            }
                            break;
                    }
                }
                m9359a.set(bnlVar3);
            }
            bnlVar = m9359a.get();
        }
        synchronized (this.f14501b) {
            if (bnlVar != null) {
                this.f14501b.m12580c(bnlVar.f11603a);
                this.f14501b.m12559p(bnlVar.f11604b);
                this.f14501b.m12574e(bnlVar.f11605c);
                this.f14501b.m12572f(bnlVar.f11606d);
                this.f14501b.m12570g(bnlVar.f11607e);
            }
        }
    }
}
