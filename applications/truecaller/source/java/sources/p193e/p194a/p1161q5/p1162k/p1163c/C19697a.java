package p193e.p194a.p1161q5.p1162k.p1163c;

import android.os.Bundle;
import com.truecaller.premium.analytics.LogLevel;
import org.apache.avro.Schema;
import p193e.p194a.p1011l.p1021l2.AbstractC16952a;
import p193e.p194a.p1050l5.p1051a.C17442a3;
import p193e.p194a.p1146q2.AbstractC19580x;
import s1.z.c.l;
/* renamed from: e.a.q5.k.c.a */
/* loaded from: classes15-dex2jar.jar:e/a/q5/k/c/a.class */
public final class C19697a extends AbstractC16952a {

    /* renamed from: a */
    public final LogLevel f54703a = LogLevel.CORE;

    /* renamed from: b */
    public final String f54704b;

    /* renamed from: c */
    public final int f54705c;

    public C19697a(String str, int i) {
        l.e(str, "proStatus");
        this.f54704b = str;
        this.f54705c = i;
    }

    @Override // p193e.p194a.p1011l.p1021l2.AbstractC16952a
    /* renamed from: c */
    public AbstractC19580x.C19582b mo9876c() {
        Bundle bundle = new Bundle();
        bundle.putString("ProStatus", this.f54704b);
        bundle.putInt("CardPosition", this.f54705c);
        return new AbstractC19580x.C19582b("WC_CardSeen", bundle);
    }

    @Override // p193e.p194a.p1011l.p1021l2.AbstractC16952a
    /* renamed from: d */
    public AbstractC19580x.C19584d<C17442a3> mo9875d() {
        Schema schema = C17442a3.f48852f;
        C17442a3.C17444b c17444b = new C17442a3.C17444b(null);
        int i = this.f54705c;
        c17444b.validate(c17444b.fields()[2], Integer.valueOf(i));
        c17444b.f48861a = i;
        c17444b.fieldSetFlags()[2] = true;
        String str = this.f54704b;
        c17444b.validate(c17444b.fields()[3], str);
        c17444b.f48862b = str;
        c17444b.fieldSetFlags()[3] = true;
        c17444b.validate(c17444b.fields()[4], Boolean.FALSE);
        c17444b.f48863c = false;
        c17444b.fieldSetFlags()[4] = true;
        return new AbstractC19580x.C19584d<>(c17444b.build());
    }

    @Override // p193e.p194a.p1011l.p1021l2.AbstractC16952a
    /* renamed from: e */
    public LogLevel mo9874e() {
        return this.f54703a;
    }
}
