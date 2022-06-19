package p193e.p194a.p1161q5.p1162k.p1163c;

import android.os.Bundle;
import com.truecaller.premium.analytics.LogLevel;
import org.apache.avro.Schema;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p194a.p1011l.p1021l2.AbstractC16952a;
import p193e.p194a.p1050l5.p1051a.C17514e3;
import p193e.p194a.p1146q2.AbstractC19580x;
import s1.z.c.l;
/* renamed from: e.a.q5.k.c.e */
/* loaded from: classes15-dex2jar.jar:e/a/q5/k/c/e.class */
public final class C19701e extends AbstractC16952a {

    /* renamed from: a */
    public final LogLevel f54713a = LogLevel.VERBOSE;

    /* renamed from: b */
    public final String f54714b;

    public C19701e(String str) {
        l.e(str, "appName");
        this.f54714b = str;
    }

    @Override // p193e.p194a.p1011l.p1021l2.AbstractC16952a
    /* renamed from: c */
    public AbstractC19580x.C19582b mo9876c() {
        Bundle bundle = new Bundle();
        return C22128a.m8588o1(bundle, "App", this.f54714b, "WC_NumberLookupFailure", bundle);
    }

    @Override // p193e.p194a.p1011l.p1021l2.AbstractC16952a
    /* renamed from: d */
    public AbstractC19580x.C19584d<C17514e3> mo9875d() {
        Schema schema = C17514e3.f49165d;
        C17514e3.C17516b c17516b = new C17514e3.C17516b(null);
        String str = this.f54714b;
        c17516b.validate(c17516b.fields()[2], str);
        c17516b.f49172a = str;
        c17516b.fieldSetFlags()[2] = true;
        return new AbstractC19580x.C19584d<>(c17516b.build());
    }

    @Override // p193e.p194a.p1011l.p1021l2.AbstractC16952a
    /* renamed from: e */
    public LogLevel mo9874e() {
        return this.f54713a;
    }
}
