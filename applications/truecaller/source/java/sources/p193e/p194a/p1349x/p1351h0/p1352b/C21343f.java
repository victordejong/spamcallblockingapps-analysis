package p193e.p194a.p1349x.p1351h0.p1352b;

import android.os.Bundle;
import com.truecaller.premium.analytics.LogLevel;
import java.util.Map;
import org.apache.avro.Schema;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p1011l.p1021l2.AbstractC16952a;
import p193e.p194a.p1050l5.p1051a.C17678o1;
import p193e.p194a.p1146q2.AbstractC19580x;
import s1.k;
import s1.z.c.l;
/* renamed from: e.a.x.h0.b.f */
/* loaded from: classes9-dex2jar.jar:e/a/x/h0/b/f.class */
public final class C21343f extends AbstractC16952a {

    /* renamed from: a */
    public final LogLevel f59754a = LogLevel.DEBUG;

    /* renamed from: b */
    public final String f59755b;

    public C21343f(String str) {
        l.e(str, "proStatus");
        this.f59755b = str;
    }

    @Override // p193e.p194a.p1011l.p1021l2.AbstractC16952a
    /* renamed from: b */
    public k<String, Map<String, Object>> mo9877b() {
        return new k<>("PC_NameNumberEmpty", C25225a.m3938Z1(new k("ProStatusV2", this.f59755b)));
    }

    @Override // p193e.p194a.p1011l.p1021l2.AbstractC16952a
    /* renamed from: c */
    public AbstractC19580x.C19582b mo9876c() {
        Bundle bundle = new Bundle();
        return C22128a.m8588o1(bundle, "ProStatusV2", this.f59755b, "PC_NameNumberEmpty", bundle);
    }

    @Override // p193e.p194a.p1011l.p1021l2.AbstractC16952a
    /* renamed from: d */
    public AbstractC19580x.C19584d<C17678o1> mo9875d() {
        Schema schema = C17678o1.f49947d;
        C17678o1.C17680b c17680b = new C17678o1.C17680b(null);
        String str = this.f59755b;
        c17680b.validate(c17680b.fields()[2], str);
        c17680b.f49954a = str;
        c17680b.fieldSetFlags()[2] = true;
        return new AbstractC19580x.C19584d<>(c17680b.build());
    }

    @Override // p193e.p194a.p1011l.p1021l2.AbstractC16952a
    /* renamed from: e */
    public LogLevel mo9874e() {
        return this.f59754a;
    }
}
