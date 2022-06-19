package p193e.p194a.p1342w4;

import com.truecaller.settings.CallingSettings;
import javax.inject.Inject;
import javax.inject.Provider;
import p193e.p194a.p1410z4.AbstractC21881d;
import s1.z.c.l;
/* renamed from: e.a.w4.b */
/* loaded from: classes13-dex2jar.jar:e/a/w4/b.class */
public final class C21202b {

    /* renamed from: a */
    public final Provider<AbstractC21881d> f59404a;

    /* renamed from: b */
    public final Provider<CallingSettings> f59405b;

    @Inject
    public C21202b(Provider<AbstractC21881d> provider, Provider<CallingSettings> provider2) {
        l.e(provider, "generalSettings");
        l.e(provider2, "callingSettings");
        this.f59404a = provider;
        this.f59405b = provider2;
    }
}
