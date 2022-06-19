package p193e.p194a.p1213s2.p1214g.p1215c;

import android.os.Bundle;
import com.truecaller.premium.analytics.LogLevel;
import java.util.Map;
import org.apache.avro.Schema;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p194a.p1011l.p1021l2.AbstractC16952a;
import p193e.p194a.p1050l5.p1051a.C17520f;
import p193e.p194a.p1146q2.AbstractC19580x;
import s1.k;
import s1.u.i;
import s1.z.c.l;
/* renamed from: e.a.s2.g.c.f */
/* loaded from: classes5-dex2jar.jar:e/a/s2/g/c/f.class */
public final class C20208f extends AbstractC16952a {

    /* renamed from: a */
    public final LogLevel f56937a = LogLevel.VERBOSE;

    /* renamed from: b */
    public final int f56938b;

    /* renamed from: c */
    public final String f56939c;

    public C20208f(int i, String str) {
        l.e(str, "proStatus");
        this.f56938b = i;
        this.f56939c = str;
    }

    @Override // p193e.p194a.p1011l.p1021l2.AbstractC16952a
    /* renamed from: b */
    public k<String, Map<String, Object>> mo9877b() {
        return new k<>("AC_SettingsTapped", i.W(new k[]{new k("CardPosition", Integer.valueOf(this.f56938b)), new k("ProStatusV2", this.f56939c)}));
    }

    @Override // p193e.p194a.p1011l.p1021l2.AbstractC16952a
    /* renamed from: c */
    public AbstractC19580x.C19582b mo9876c() {
        Bundle bundle = new Bundle();
        bundle.putInt("CardPosition", this.f56938b);
        return C22128a.m8588o1(bundle, "ProStatusV2", this.f56939c, "AC_SettingsTapped", bundle);
    }

    @Override // p193e.p194a.p1011l.p1021l2.AbstractC16952a
    /* renamed from: d */
    public AbstractC19580x.C19584d<C17520f> mo9875d() {
        Schema schema = C17520f.f49187e;
        C17520f.C17522b c17522b = new C17520f.C17522b(null);
        int i = this.f56938b;
        c17522b.validate(c17522b.fields()[2], Integer.valueOf(i));
        c17522b.f49195a = i;
        c17522b.fieldSetFlags()[2] = true;
        String str = this.f56939c;
        c17522b.validate(c17522b.fields()[3], str);
        c17522b.f49196b = str;
        c17522b.fieldSetFlags()[3] = true;
        return new AbstractC19580x.C19584d<>(c17522b.build());
    }

    @Override // p193e.p194a.p1011l.p1021l2.AbstractC16952a
    /* renamed from: e */
    public LogLevel mo9874e() {
        return this.f56937a;
    }
}
