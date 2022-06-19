package p193e.p194a.p1161q5.p1162k.p1163c;

import android.os.Bundle;
import com.truecaller.premium.analytics.LogLevel;
import com.truecaller.whatsappcallerid.analytics.event.WhatsAppCallerIdSourceParam;
import org.apache.avro.Schema;
import p193e.p194a.p1011l.p1021l2.AbstractC16952a;
import p193e.p194a.p1050l5.p1051a.C17460b3;
import p193e.p194a.p1146q2.AbstractC19580x;
import s1.z.c.l;
/* renamed from: e.a.q5.k.c.b */
/* loaded from: classes15-dex2jar.jar:e/a/q5/k/c/b.class */
public final class C19698b extends AbstractC16952a {

    /* renamed from: a */
    public final LogLevel f54706a = LogLevel.CORE;

    /* renamed from: b */
    public final WhatsAppCallerIdSourceParam f54707b;

    /* renamed from: c */
    public final int f54708c;

    public C19698b(WhatsAppCallerIdSourceParam whatsAppCallerIdSourceParam, int i) {
        l.e(whatsAppCallerIdSourceParam, "source");
        this.f54707b = whatsAppCallerIdSourceParam;
        this.f54708c = i;
    }

    @Override // p193e.p194a.p1011l.p1021l2.AbstractC16952a
    /* renamed from: c */
    public AbstractC19580x.C19582b mo9876c() {
        Bundle bundle = new Bundle();
        bundle.putString("Source", this.f54707b.name());
        bundle.putInt("CardPosition", this.f54708c);
        return new AbstractC19580x.C19582b("WC_NotificationAccessGranted", bundle);
    }

    @Override // p193e.p194a.p1011l.p1021l2.AbstractC16952a
    /* renamed from: d */
    public AbstractC19580x.C19584d<C17460b3> mo9875d() {
        Schema schema = C17460b3.f48926f;
        C17460b3.C17462b c17462b = new C17460b3.C17462b(null);
        int i = this.f54708c;
        c17462b.validate(c17462b.fields()[3], Integer.valueOf(i));
        c17462b.f48936b = i;
        c17462b.fieldSetFlags()[3] = true;
        String name = this.f54707b.name();
        c17462b.validate(c17462b.fields()[2], name);
        c17462b.f48935a = name;
        c17462b.fieldSetFlags()[2] = true;
        c17462b.validate(c17462b.fields()[4], Boolean.FALSE);
        c17462b.f48937c = false;
        c17462b.fieldSetFlags()[4] = true;
        return new AbstractC19580x.C19584d<>(c17462b.build());
    }

    @Override // p193e.p194a.p1011l.p1021l2.AbstractC16952a
    /* renamed from: e */
    public LogLevel mo9874e() {
        return this.f54706a;
    }
}
