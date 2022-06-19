package p193e.p194a.p1349x.p1351h0.p1352b;

import android.os.Bundle;
import com.truecaller.ghost_call.analytics.events.GhostCallCardAction;
import com.truecaller.premium.analytics.LogLevel;
import java.util.Map;
import org.apache.avro.Schema;
import p193e.p194a.p1011l.p1021l2.AbstractC16952a;
import p193e.p194a.p1050l5.p1051a.C17616k1;
import p193e.p194a.p1146q2.AbstractC19580x;
import s1.k;
import s1.u.i;
import s1.z.c.l;
/* renamed from: e.a.x.h0.b.a */
/* loaded from: classes9-dex2jar.jar:e/a/x/h0/b/a.class */
public final class C21338a extends AbstractC16952a {

    /* renamed from: a */
    public final LogLevel f59735a = LogLevel.VERBOSE;

    /* renamed from: b */
    public final int f59736b;

    /* renamed from: c */
    public final GhostCallCardAction f59737c;

    /* renamed from: d */
    public final String f59738d;

    /* renamed from: e */
    public final boolean f59739e;

    public C21338a(int i, GhostCallCardAction ghostCallCardAction, String str, boolean z) {
        l.e(ghostCallCardAction, "cardAction");
        l.e(str, "proStatus");
        this.f59736b = i;
        this.f59737c = ghostCallCardAction;
        this.f59738d = str;
        this.f59739e = z;
    }

    @Override // p193e.p194a.p1011l.p1021l2.AbstractC16952a
    /* renamed from: b */
    public k<String, Map<String, Object>> mo9877b() {
        return new k<>("PC_ActionOnCard", i.W(new k[]{new k("CardPosition", Integer.valueOf(this.f59736b)), new k("action", this.f59737c.name()), new k("ProStatusV2", this.f59738d), new k("PromoShown", Boolean.valueOf(this.f59739e))}));
    }

    @Override // p193e.p194a.p1011l.p1021l2.AbstractC16952a
    /* renamed from: c */
    public AbstractC19580x.C19582b mo9876c() {
        Bundle bundle = new Bundle();
        bundle.putInt("CardPosition", this.f59736b);
        bundle.putString("action", this.f59737c.name());
        bundle.putString("ProStatusV2", this.f59738d);
        bundle.putBoolean("PromoShown", this.f59739e);
        return new AbstractC19580x.C19582b("PC_ActionOnCard", bundle);
    }

    @Override // p193e.p194a.p1011l.p1021l2.AbstractC16952a
    /* renamed from: d */
    public AbstractC19580x.C19584d<C17616k1> mo9875d() {
        Schema schema = C17616k1.f49671g;
        C17616k1.C17618b c17618b = new C17616k1.C17618b(null);
        int i = this.f59736b;
        c17618b.validate(c17618b.fields()[3], Integer.valueOf(i));
        c17618b.f49682b = i;
        c17618b.fieldSetFlags()[3] = true;
        String name = this.f59737c.name();
        c17618b.validate(c17618b.fields()[2], name);
        c17618b.f49681a = name;
        c17618b.fieldSetFlags()[2] = true;
        String str = this.f59738d;
        c17618b.validate(c17618b.fields()[4], str);
        c17618b.f49683c = str;
        c17618b.fieldSetFlags()[4] = true;
        Boolean valueOf = Boolean.valueOf(this.f59739e);
        c17618b.validate(c17618b.fields()[5], valueOf);
        c17618b.f49684d = valueOf;
        c17618b.fieldSetFlags()[5] = true;
        return new AbstractC19580x.C19584d<>(c17618b.build());
    }

    @Override // p193e.p194a.p1011l.p1021l2.AbstractC16952a
    /* renamed from: e */
    public LogLevel mo9874e() {
        return this.f59735a;
    }
}
