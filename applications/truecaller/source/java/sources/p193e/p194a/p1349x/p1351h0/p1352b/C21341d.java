package p193e.p194a.p1349x.p1351h0.p1352b;

import android.os.Bundle;
import com.truecaller.premium.analytics.LogLevel;
import java.util.Map;
import org.apache.avro.Schema;
import p193e.p194a.p1011l.p1021l2.AbstractC16952a;
import p193e.p194a.p1050l5.p1051a.C17691p1;
import p193e.p194a.p1146q2.AbstractC19580x;
import s1.k;
import s1.u.i;
import s1.z.c.l;
/* renamed from: e.a.x.h0.b.d */
/* loaded from: classes9-dex2jar.jar:e/a/x/h0/b/d.class */
public final class C21341d extends AbstractC16952a {

    /* renamed from: a */
    public final LogLevel f59747a = LogLevel.CORE;

    /* renamed from: b */
    public final String f59748b;

    /* renamed from: c */
    public final int f59749c;

    /* renamed from: d */
    public final String f59750d;

    /* renamed from: e */
    public final boolean f59751e;

    public C21341d(String str, int i, String str2, boolean z) {
        l.e(str, "delay");
        l.e(str2, "proStatus");
        this.f59748b = str;
        this.f59749c = i;
        this.f59750d = str2;
        this.f59751e = z;
    }

    @Override // p193e.p194a.p1011l.p1021l2.AbstractC16952a
    /* renamed from: b */
    public k<String, Map<String, Object>> mo9877b() {
        return new k<>("PC_Scheduled", i.W(new k[]{new k("Delay", this.f59748b), new k("CardPosition", Integer.valueOf(this.f59749c)), new k("ProStatusV2", this.f59750d), new k("PromoShown", Boolean.valueOf(this.f59751e))}));
    }

    @Override // p193e.p194a.p1011l.p1021l2.AbstractC16952a
    /* renamed from: c */
    public AbstractC19580x.C19582b mo9876c() {
        Bundle bundle = new Bundle();
        bundle.putInt("CardPosition", this.f59749c);
        bundle.putString("Delay", this.f59748b);
        bundle.putString("ProStatusV2", this.f59750d);
        bundle.putBoolean("PromoShown", this.f59751e);
        return new AbstractC19580x.C19582b("PC_Scheduled", bundle);
    }

    @Override // p193e.p194a.p1011l.p1021l2.AbstractC16952a
    /* renamed from: d */
    public AbstractC19580x.C19584d<C17691p1> mo9875d() {
        Schema schema = C17691p1.f50033g;
        C17691p1.C17693b c17693b = new C17691p1.C17693b(null);
        String str = this.f59748b;
        c17693b.validate(c17693b.fields()[2], str);
        c17693b.f50043a = str;
        c17693b.fieldSetFlags()[2] = true;
        int i = this.f59749c;
        c17693b.validate(c17693b.fields()[3], Integer.valueOf(i));
        c17693b.f50044b = i;
        c17693b.fieldSetFlags()[3] = true;
        String str2 = this.f59750d;
        c17693b.validate(c17693b.fields()[4], str2);
        c17693b.f50045c = str2;
        c17693b.fieldSetFlags()[4] = true;
        Boolean valueOf = Boolean.valueOf(this.f59751e);
        c17693b.validate(c17693b.fields()[5], valueOf);
        c17693b.f50046d = valueOf;
        c17693b.fieldSetFlags()[5] = true;
        return new AbstractC19580x.C19584d<>(c17693b.build());
    }

    @Override // p193e.p194a.p1011l.p1021l2.AbstractC16952a
    /* renamed from: e */
    public LogLevel mo9874e() {
        return this.f59747a;
    }
}
