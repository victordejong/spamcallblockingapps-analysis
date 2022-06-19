package p193e.p194a.p1161q5.p1162k.p1163c;

import android.os.Bundle;
import com.truecaller.premium.analytics.LogLevel;
import com.truecaller.whatsappcallerid.analytics.event.WhatsAppCallerIdSourceParam;
import org.apache.avro.Schema;
import p193e.p194a.p1011l.p1021l2.AbstractC16952a;
import p193e.p194a.p1050l5.p1051a.C17550g3;
import p193e.p194a.p1146q2.AbstractC19580x;
import s1.z.c.l;
/* renamed from: e.a.q5.k.c.g */
/* loaded from: classes15-dex2jar.jar:e/a/q5/k/c/g.class */
public final class C19703g extends AbstractC16952a {

    /* renamed from: a */
    public final LogLevel f54717a = LogLevel.CORE;

    /* renamed from: b */
    public final WhatsAppCallerIdSourceParam f54718b;

    /* renamed from: c */
    public final int f54719c;

    public C19703g(WhatsAppCallerIdSourceParam whatsAppCallerIdSourceParam, int i) {
        l.e(whatsAppCallerIdSourceParam, "source");
        this.f54718b = whatsAppCallerIdSourceParam;
        this.f54719c = i;
    }

    @Override // p193e.p194a.p1011l.p1021l2.AbstractC16952a
    /* renamed from: c */
    public AbstractC19580x.C19582b mo9876c() {
        Bundle bundle = new Bundle();
        bundle.putString("Source", this.f54718b.name());
        bundle.putInt("CardPosition", this.f54719c);
        return new AbstractC19580x.C19582b("WC_ToggleDisabled", bundle);
    }

    @Override // p193e.p194a.p1011l.p1021l2.AbstractC16952a
    /* renamed from: d */
    public AbstractC19580x.C19584d<C17550g3> mo9875d() {
        Schema schema = C17550g3.f49359f;
        C17550g3.C17552b c17552b = new C17550g3.C17552b(null);
        int i = this.f54719c;
        c17552b.validate(c17552b.fields()[3], Integer.valueOf(i));
        c17552b.f49369b = i;
        c17552b.fieldSetFlags()[3] = true;
        String name = this.f54718b.name();
        c17552b.validate(c17552b.fields()[2], name);
        c17552b.f49368a = name;
        c17552b.fieldSetFlags()[2] = true;
        c17552b.validate(c17552b.fields()[4], Boolean.FALSE);
        c17552b.f49370c = false;
        c17552b.fieldSetFlags()[4] = true;
        return new AbstractC19580x.C19584d<>(c17552b.build());
    }

    @Override // p193e.p194a.p1011l.p1021l2.AbstractC16952a
    /* renamed from: e */
    public LogLevel mo9874e() {
        return this.f54717a;
    }
}
