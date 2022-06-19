package p193e.p194a.p1161q5.p1162k.p1163c;

import android.os.Bundle;
import com.truecaller.premium.analytics.LogLevel;
import org.apache.avro.Schema;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p194a.p1011l.p1021l2.AbstractC16952a;
import p193e.p194a.p1050l5.p1051a.C17478c3;
import p193e.p194a.p1146q2.AbstractC19580x;
import s1.z.c.l;
/* renamed from: e.a.q5.k.c.c */
/* loaded from: classes15-dex2jar.jar:e/a/q5/k/c/c.class */
public final class C19699c extends AbstractC16952a {

    /* renamed from: a */
    public final LogLevel f54709a = LogLevel.CORE;

    /* renamed from: b */
    public final String f54710b;

    public C19699c(String str) {
        l.e(str, "appName");
        this.f54710b = str;
    }

    @Override // p193e.p194a.p1011l.p1021l2.AbstractC16952a
    /* renamed from: c */
    public AbstractC19580x.C19582b mo9876c() {
        Bundle bundle = new Bundle();
        return C22128a.m8588o1(bundle, "App", this.f54710b, "WC_NotificationShown", bundle);
    }

    @Override // p193e.p194a.p1011l.p1021l2.AbstractC16952a
    /* renamed from: d */
    public AbstractC19580x.C19584d<C17478c3> mo9875d() {
        Schema schema = C17478c3.f49006d;
        C17478c3.C17480b c17480b = new C17478c3.C17480b(null);
        String str = this.f54710b;
        c17480b.validate(c17480b.fields()[2], str);
        c17480b.f49013a = str;
        c17480b.fieldSetFlags()[2] = true;
        return new AbstractC19580x.C19584d<>(c17480b.build());
    }

    @Override // p193e.p194a.p1011l.p1021l2.AbstractC16952a
    /* renamed from: e */
    public LogLevel mo9874e() {
        return this.f54709a;
    }
}
