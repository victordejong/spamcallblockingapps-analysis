package p193e.p194a.p1213s2.p1214g.p1215c;

import android.os.Bundle;
import com.truecaller.premium.analytics.LogLevel;
import java.util.Map;
import org.apache.avro.Schema;
import p193e.p194a.p1011l.p1021l2.AbstractC16952a;
import p193e.p194a.p1050l5.p1051a.C17502e;
import p193e.p194a.p1146q2.AbstractC19580x;
import s1.k;
import s1.u.i;
import s1.z.c.l;
/* renamed from: e.a.s2.g.c.e */
/* loaded from: classes5-dex2jar.jar:e/a/s2/g/c/e.class */
public final class C20207e extends AbstractC16952a {

    /* renamed from: a */
    public final LogLevel f56933a = LogLevel.CORE;

    /* renamed from: b */
    public final int f56934b;

    /* renamed from: c */
    public final String f56935c;

    /* renamed from: d */
    public final boolean f56936d;

    public C20207e(int i, String str, boolean z) {
        l.e(str, "proStatus");
        this.f56934b = i;
        this.f56935c = str;
        this.f56936d = z;
    }

    @Override // p193e.p194a.p1011l.p1021l2.AbstractC16952a
    /* renamed from: b */
    public k<String, Map<String, Object>> mo9877b() {
        return new k<>("AC_CardSeen", i.W(new k[]{new k("CardPosition", Integer.valueOf(this.f56934b)), new k("ProStatusV2", this.f56935c), new k("PromoShown", Boolean.valueOf(this.f56936d))}));
    }

    @Override // p193e.p194a.p1011l.p1021l2.AbstractC16952a
    /* renamed from: c */
    public AbstractC19580x.C19582b mo9876c() {
        Bundle bundle = new Bundle();
        bundle.putInt("CardPosition", this.f56934b);
        bundle.putString("ProStatusV2", this.f56935c);
        bundle.putBoolean("PromoShown", this.f56936d);
        return new AbstractC19580x.C19582b("AC_CardSeen", bundle);
    }

    @Override // p193e.p194a.p1011l.p1021l2.AbstractC16952a
    /* renamed from: d */
    public AbstractC19580x.C19584d<C17502e> mo9875d() {
        Schema schema = C17502e.f49108f;
        C17502e.C17504b c17504b = new C17502e.C17504b(null);
        Boolean valueOf = Boolean.valueOf(this.f56936d);
        c17504b.validate(c17504b.fields()[4], valueOf);
        c17504b.f49119c = valueOf;
        c17504b.fieldSetFlags()[4] = true;
        int i = this.f56934b;
        c17504b.validate(c17504b.fields()[2], Integer.valueOf(i));
        c17504b.f49117a = i;
        c17504b.fieldSetFlags()[2] = true;
        String str = this.f56935c;
        c17504b.validate(c17504b.fields()[3], str);
        c17504b.f49118b = str;
        c17504b.fieldSetFlags()[3] = true;
        C17502e build = c17504b.build();
        l.d(build, "AppACCardSeen.newBuilder…tus)\n            .build()");
        return new AbstractC19580x.C19584d<>(build);
    }

    @Override // p193e.p194a.p1011l.p1021l2.AbstractC16952a
    /* renamed from: e */
    public LogLevel mo9874e() {
        return this.f56933a;
    }
}
