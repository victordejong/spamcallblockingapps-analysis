package p193e.p194a.p1349x.p1351h0.p1352b;

import android.os.Bundle;
import com.truecaller.premium.analytics.LogLevel;
import java.util.Map;
import org.apache.avro.Schema;
import p193e.p194a.p1011l.p1021l2.AbstractC16952a;
import p193e.p194a.p1050l5.p1051a.C17648m1;
import p193e.p194a.p1146q2.AbstractC19580x;
import s1.k;
import s1.u.i;
import s1.z.c.l;
/* renamed from: e.a.x.h0.b.c */
/* loaded from: classes9-dex2jar.jar:e/a/x/h0/b/c.class */
public final class C21340c extends AbstractC16952a {

    /* renamed from: a */
    public final LogLevel f59743a = LogLevel.CORE;

    /* renamed from: b */
    public final int f59744b;

    /* renamed from: c */
    public final String f59745c;

    /* renamed from: d */
    public final boolean f59746d;

    public C21340c(int i, String str, boolean z) {
        l.e(str, "proStatus");
        this.f59744b = i;
        this.f59745c = str;
        this.f59746d = z;
    }

    @Override // p193e.p194a.p1011l.p1021l2.AbstractC16952a
    /* renamed from: b */
    public k<String, Map<String, Object>> mo9877b() {
        return new k<>("PC_CardSeen", i.W(new k[]{new k("CardPosition", Integer.valueOf(this.f59744b)), new k("ProStatusV2", this.f59745c), new k("PromoShown", Boolean.valueOf(this.f59746d))}));
    }

    @Override // p193e.p194a.p1011l.p1021l2.AbstractC16952a
    /* renamed from: c */
    public AbstractC19580x.C19582b mo9876c() {
        Bundle bundle = new Bundle();
        bundle.putInt("CardPosition", this.f59744b);
        bundle.putString("ProStatusV2", this.f59745c);
        bundle.putBoolean("PromoShown", this.f59746d);
        return new AbstractC19580x.C19582b("PC_CardSeen", bundle);
    }

    @Override // p193e.p194a.p1011l.p1021l2.AbstractC16952a
    /* renamed from: d */
    public AbstractC19580x.C19584d<C17648m1> mo9875d() {
        Schema schema = C17648m1.f49799f;
        C17648m1.C17650b c17650b = new C17648m1.C17650b(null);
        Boolean valueOf = Boolean.valueOf(this.f59746d);
        c17650b.validate(c17650b.fields()[4], valueOf);
        c17650b.f49810c = valueOf;
        c17650b.fieldSetFlags()[4] = true;
        int i = this.f59744b;
        c17650b.validate(c17650b.fields()[2], Integer.valueOf(i));
        c17650b.f49808a = i;
        c17650b.fieldSetFlags()[2] = true;
        String str = this.f59745c;
        c17650b.validate(c17650b.fields()[3], str);
        c17650b.f49809b = str;
        c17650b.fieldSetFlags()[3] = true;
        return new AbstractC19580x.C19584d<>(c17650b.build());
    }

    @Override // p193e.p194a.p1011l.p1021l2.AbstractC16952a
    /* renamed from: e */
    public LogLevel mo9874e() {
        return this.f59743a;
    }
}
