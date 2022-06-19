package p193e.p194a.p1161q5.p1162k.p1163c;

import android.os.Bundle;
import com.truecaller.premium.analytics.LogLevel;
import com.truecaller.whatsappcallerid.analytics.event.WhatsAppCallerIdSourceParam;
import org.apache.avro.Schema;
import p193e.p194a.p1011l.p1021l2.AbstractC16952a;
import p193e.p194a.p1050l5.p1051a.C17568h3;
import p193e.p194a.p1146q2.AbstractC19580x;
import s1.z.c.l;
/* renamed from: e.a.q5.k.c.h */
/* loaded from: classes15-dex2jar.jar:e/a/q5/k/c/h.class */
public final class C19704h extends AbstractC16952a {

    /* renamed from: a */
    public final LogLevel f54720a = LogLevel.CORE;

    /* renamed from: b */
    public final WhatsAppCallerIdSourceParam f54721b;

    /* renamed from: c */
    public final int f54722c;

    public C19704h(WhatsAppCallerIdSourceParam whatsAppCallerIdSourceParam, int i) {
        l.e(whatsAppCallerIdSourceParam, "source");
        this.f54721b = whatsAppCallerIdSourceParam;
        this.f54722c = i;
    }

    @Override // p193e.p194a.p1011l.p1021l2.AbstractC16952a
    /* renamed from: c */
    public AbstractC19580x.C19582b mo9876c() {
        Bundle bundle = new Bundle();
        bundle.putString("Source", this.f54721b.name());
        bundle.putInt("CardPosition", this.f54722c);
        return new AbstractC19580x.C19582b("WC_ToggleEnabled", bundle);
    }

    @Override // p193e.p194a.p1011l.p1021l2.AbstractC16952a
    /* renamed from: d */
    public AbstractC19580x.C19584d<C17568h3> mo9875d() {
        Schema schema = C17568h3.f49442f;
        C17568h3.C17570b c17570b = new C17568h3.C17570b(null);
        int i = this.f54722c;
        c17570b.validate(c17570b.fields()[3], Integer.valueOf(i));
        c17570b.f49452b = i;
        c17570b.fieldSetFlags()[3] = true;
        c17570b.validate(c17570b.fields()[4], Boolean.FALSE);
        c17570b.f49453c = false;
        c17570b.fieldSetFlags()[4] = true;
        String name = this.f54721b.name();
        c17570b.validate(c17570b.fields()[2], name);
        c17570b.f49451a = name;
        c17570b.fieldSetFlags()[2] = true;
        return new AbstractC19580x.C19584d<>(c17570b.build());
    }

    @Override // p193e.p194a.p1011l.p1021l2.AbstractC16952a
    /* renamed from: e */
    public LogLevel mo9874e() {
        return this.f54720a;
    }
}
