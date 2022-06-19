package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.dcw;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/ddt.class */
public final class ddt implements dfc {

    /* renamed from: b */
    private static final ded f14125b = new ddw();

    /* renamed from: a */
    private final ded f14126a;

    public ddt() {
        this(new ddv(dcu.m10099a(), m10020a()));
    }

    private ddt(ded dedVar) {
        this.f14126a = (ded) dcz.m10045a(dedVar, "messageInfoFactory");
    }

    /* renamed from: a */
    private static ded m10020a() {
        ded dedVar;
        try {
            dedVar = (ded) Class.forName("com.google.protobuf.DescriptorMessageInfoFactory").getDeclaredMethod("getInstance", new Class[0]).invoke(null, new Object[0]);
        } catch (Exception e) {
            dedVar = f14125b;
        }
        return dedVar;
    }

    /* renamed from: a */
    private static boolean m10019a(dee deeVar) {
        return deeVar.mo9758a() == dcw.C2960f.f14083h;
    }

    @Override // com.google.android.gms.internal.ads.dfc
    /* renamed from: a */
    public final <T> dfd<T> mo9847a(Class<T> cls) {
        dff.m9807a((Class<?>) cls);
        dee mo9990b = this.f14126a.mo9990b(cls);
        return mo9990b.mo9757b() ? dcw.class.isAssignableFrom(cls) ? dem.m9933a(dff.m9795c(), dcm.m10106a(), mo9990b.mo9756c()) : dem.m9933a(dff.m9820a(), dcm.m10105b(), mo9990b.mo9756c()) : dcw.class.isAssignableFrom(cls) ? m10019a(mo9990b) ? dek.m9967a(cls, mo9990b, deq.m9930b(), ddp.m10027b(), dff.m9795c(), dcm.m10106a(), deb.m10001b()) : dek.m9967a(cls, mo9990b, deq.m9930b(), ddp.m10027b(), dff.m9795c(), (dck<?>) null, deb.m10001b()) : m10019a(mo9990b) ? dek.m9967a(cls, mo9990b, deq.m9931a(), ddp.m10028a(), dff.m9820a(), dcm.m10105b(), deb.m10002a()) : dek.m9967a(cls, mo9990b, deq.m9931a(), ddp.m10028a(), dff.m9803b(), (dck<?>) null, deb.m10002a());
    }
}
