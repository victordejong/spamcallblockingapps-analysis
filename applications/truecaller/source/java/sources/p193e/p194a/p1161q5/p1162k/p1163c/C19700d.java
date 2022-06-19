package p193e.p194a.p1161q5.p1162k.p1163c;

import android.os.Bundle;
import com.truecaller.premium.analytics.LogLevel;
import org.apache.avro.Schema;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p194a.p1011l.p1021l2.AbstractC16952a;
import p193e.p194a.p1050l5.p1051a.C17496d3;
import p193e.p194a.p1146q2.AbstractC19580x;
import s1.z.c.l;
/* renamed from: e.a.q5.k.c.d */
/* loaded from: classes15-dex2jar.jar:e/a/q5/k/c/d.class */
public final class C19700d extends AbstractC16952a {

    /* renamed from: a */
    public final LogLevel f54711a = LogLevel.VERBOSE;

    /* renamed from: b */
    public final String f54712b;

    public C19700d(String str) {
        l.e(str, "appName");
        this.f54712b = str;
    }

    @Override // p193e.p194a.p1011l.p1021l2.AbstractC16952a
    /* renamed from: c */
    public AbstractC19580x.C19582b mo9876c() {
        Bundle bundle = new Bundle();
        return C22128a.m8588o1(bundle, "App", this.f54712b, "WC_NotificationWithNumberRecvd", bundle);
    }

    @Override // p193e.p194a.p1011l.p1021l2.AbstractC16952a
    /* renamed from: d */
    public AbstractC19580x.C19584d<C17496d3> mo9875d() {
        Schema schema = C17496d3.f49090d;
        C17496d3.C17498b c17498b = new C17496d3.C17498b(null);
        String str = this.f54712b;
        c17498b.validate(c17498b.fields()[2], str);
        c17498b.f49097a = str;
        c17498b.fieldSetFlags()[2] = true;
        return new AbstractC19580x.C19584d<>(c17498b.build());
    }

    @Override // p193e.p194a.p1011l.p1021l2.AbstractC16952a
    /* renamed from: e */
    public LogLevel mo9874e() {
        return this.f54711a;
    }
}
