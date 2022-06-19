package p193e.p194a.p1349x.p1351h0.p1352b;

import android.os.Bundle;
import com.truecaller.ghost_call.analytics.events.GhostCallInCallUIAction;
import com.truecaller.premium.analytics.LogLevel;
import java.util.Map;
import org.apache.avro.Schema;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p194a.p1011l.p1021l2.AbstractC16952a;
import p193e.p194a.p1050l5.p1051a.C17632l1;
import p193e.p194a.p1146q2.AbstractC19580x;
import s1.k;
import s1.u.i;
import s1.z.c.l;
/* renamed from: e.a.x.h0.b.b */
/* loaded from: classes9-dex2jar.jar:e/a/x/h0/b/b.class */
public final class C21339b extends AbstractC16952a {

    /* renamed from: a */
    public final LogLevel f59740a = LogLevel.VERBOSE;

    /* renamed from: b */
    public final GhostCallInCallUIAction f59741b;

    /* renamed from: c */
    public final String f59742c;

    public C21339b(GhostCallInCallUIAction ghostCallInCallUIAction, String str) {
        l.e(ghostCallInCallUIAction, "action");
        l.e(str, "proStatus");
        this.f59741b = ghostCallInCallUIAction;
        this.f59742c = str;
    }

    @Override // p193e.p194a.p1011l.p1021l2.AbstractC16952a
    /* renamed from: b */
    public k<String, Map<String, Object>> mo9877b() {
        return new k<>("PC_ActionOnInCallUI", i.W(new k[]{new k("action", this.f59741b.name()), new k("ProStatusV2", this.f59742c)}));
    }

    @Override // p193e.p194a.p1011l.p1021l2.AbstractC16952a
    /* renamed from: c */
    public AbstractC19580x.C19582b mo9876c() {
        Bundle bundle = new Bundle();
        bundle.putString("action", this.f59741b.name());
        return C22128a.m8588o1(bundle, "ProStatusV2", this.f59742c, "PC_ActionOnInCallUI", bundle);
    }

    @Override // p193e.p194a.p1011l.p1021l2.AbstractC16952a
    /* renamed from: d */
    public AbstractC19580x.C19584d<C17632l1> mo9875d() {
        Schema schema = C17632l1.f49739e;
        C17632l1.C17634b c17634b = new C17632l1.C17634b(null);
        String name = this.f59741b.name();
        c17634b.validate(c17634b.fields()[2], name);
        c17634b.f49747a = name;
        c17634b.fieldSetFlags()[2] = true;
        String str = this.f59742c;
        c17634b.validate(c17634b.fields()[3], str);
        c17634b.f49748b = str;
        c17634b.fieldSetFlags()[3] = true;
        return new AbstractC19580x.C19584d<>(c17634b.build());
    }

    @Override // p193e.p194a.p1011l.p1021l2.AbstractC16952a
    /* renamed from: e */
    public LogLevel mo9874e() {
        return this.f59740a;
    }
}
