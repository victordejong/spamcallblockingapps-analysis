package okhttp3.internal.connection;

import com.google.firebase.perf.FirebasePerformance;
import okhttp3.AbstractC2092t;
import okhttp3.C1955ab;
import okhttp3.C2098w;
import okhttp3.C2104z;
import okhttp3.internal.p092b.C1993g;
/* renamed from: okhttp3.internal.connection.a */
/* loaded from: classes-dex2jar.jar:okhttp3/internal/connection/a.class */
public final class C2010a implements AbstractC2092t {

    /* renamed from: a */
    public final C2098w f5029a;

    public C2010a(C2098w c2098w) {
        this.f5029a = c2098w;
    }

    @Override // okhttp3.AbstractC2092t
    /* renamed from: a */
    public C1955ab mo1903a(AbstractC2092t.AbstractC2093a abstractC2093a) {
        C1993g c1993g = (C1993g) abstractC2093a;
        C2104z mo1902a = c1993g.mo1902a();
        C2016f m2376f = c1993g.m2376f();
        return c1993g.m2378a(mo1902a, m2376f, m2376f.m2271a(this.f5029a, abstractC2093a, !mo1902a.m1821b().equals(FirebasePerformance.HttpMethod.GET)), m2376f.m2266c());
    }
}
