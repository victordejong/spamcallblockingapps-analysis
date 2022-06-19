package p193e.p194a.p1349x.p1351h0.p1352b;

import android.os.Bundle;
import com.truecaller.premium.analytics.LogLevel;
import java.util.Map;
import org.apache.avro.Schema;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p1011l.p1021l2.AbstractC16952a;
import p193e.p194a.p1050l5.p1051a.C17663n1;
import p193e.p194a.p1146q2.AbstractC19580x;
import s1.k;
import s1.z.c.l;
/* renamed from: e.a.x.h0.b.e */
/* loaded from: classes9-dex2jar.jar:e/a/x/h0/b/e.class */
public final class C21342e extends AbstractC16952a {

    /* renamed from: a */
    public final LogLevel f59752a = LogLevel.CORE;

    /* renamed from: b */
    public final String f59753b;

    public C21342e(String str) {
        l.e(str, "proStatus");
        this.f59753b = str;
    }

    @Override // p193e.p194a.p1011l.p1021l2.AbstractC16952a
    /* renamed from: b */
    public k<String, Map<String, Object>> mo9877b() {
        return new k<>("PC_InCallUIShown", C25225a.m3938Z1(new k("ProStatusV2", this.f59753b)));
    }

    @Override // p193e.p194a.p1011l.p1021l2.AbstractC16952a
    /* renamed from: c */
    public AbstractC19580x.C19582b mo9876c() {
        Bundle bundle = new Bundle();
        return C22128a.m8588o1(bundle, "ProStatusV2", this.f59753b, "PC_InCallUIShown", bundle);
    }

    @Override // p193e.p194a.p1011l.p1021l2.AbstractC16952a
    /* renamed from: d */
    public AbstractC19580x.C19584d<C17663n1> mo9875d() {
        Schema schema = C17663n1.f49879d;
        C17663n1.C17665b c17665b = new C17663n1.C17665b(null);
        String str = this.f59753b;
        c17665b.validate(c17665b.fields()[2], str);
        c17665b.f49886a = str;
        c17665b.fieldSetFlags()[2] = true;
        return new AbstractC19580x.C19584d<>(c17665b.build());
    }

    @Override // p193e.p194a.p1011l.p1021l2.AbstractC16952a
    /* renamed from: e */
    public LogLevel mo9874e() {
        return this.f59752a;
    }
}
