package p193e.p194a.p1213s2.p1214g.p1215c;

import android.os.Bundle;
import com.truecaller.announce_caller_id.analytics.events.AnnounceCallerIdToggleSource;
import com.truecaller.premium.analytics.LogLevel;
import java.util.Map;
import org.apache.avro.Schema;
import p193e.p194a.p1011l.p1021l2.AbstractC16952a;
import p193e.p194a.p1050l5.p1051a.C17574i;
import p193e.p194a.p1146q2.AbstractC19580x;
import s1.k;
import s1.u.i;
import s1.z.c.l;
/* renamed from: e.a.s2.g.c.h */
/* loaded from: classes5-dex2jar.jar:e/a/s2/g/c/h.class */
public final class C20210h extends AbstractC16952a {

    /* renamed from: a */
    public final LogLevel f56944a = LogLevel.CORE;

    /* renamed from: b */
    public final Integer f56945b;

    /* renamed from: c */
    public final AnnounceCallerIdToggleSource f56946c;

    /* renamed from: d */
    public final boolean f56947d;

    public C20210h(Integer num, AnnounceCallerIdToggleSource announceCallerIdToggleSource, boolean z) {
        l.e(announceCallerIdToggleSource, "announceCallerToggleSource");
        this.f56945b = num;
        this.f56946c = announceCallerIdToggleSource;
        this.f56947d = z;
    }

    @Override // p193e.p194a.p1011l.p1021l2.AbstractC16952a
    /* renamed from: b */
    public k<String, Map<String, Object>> mo9877b() {
        Integer num = this.f56945b;
        return new k<>("AC_ToggleEnabled", i.W(new k[]{new k("CardPosition", Integer.valueOf(num != null ? num.intValue() : -1)), new k("source", this.f56946c.name()), new k("PromoShown", Boolean.valueOf(this.f56947d))}));
    }

    @Override // p193e.p194a.p1011l.p1021l2.AbstractC16952a
    /* renamed from: c */
    public AbstractC19580x.C19582b mo9876c() {
        Bundle bundle = new Bundle();
        Integer num = this.f56945b;
        bundle.putInt("CardPosition", num != null ? num.intValue() : -1);
        bundle.putString("source", this.f56946c.name());
        bundle.putBoolean("PromoShown", this.f56947d);
        return new AbstractC19580x.C19582b("AC_ToggleEnabled", bundle);
    }

    @Override // p193e.p194a.p1011l.p1021l2.AbstractC16952a
    /* renamed from: d */
    public AbstractC19580x.C19584d<C17574i> mo9875d() {
        Schema schema = C17574i.f49463f;
        C17574i.C17576b c17576b = new C17574i.C17576b(null);
        Boolean valueOf = Boolean.valueOf(this.f56947d);
        c17576b.validate(c17576b.fields()[4], valueOf);
        c17576b.f49474c = valueOf;
        c17576b.fieldSetFlags()[4] = true;
        Integer num = this.f56945b;
        int intValue = num != null ? num.intValue() : -1;
        c17576b.validate(c17576b.fields()[3], Integer.valueOf(intValue));
        c17576b.f49473b = intValue;
        c17576b.fieldSetFlags()[3] = true;
        String name = this.f56946c.name();
        c17576b.validate(c17576b.fields()[2], name);
        c17576b.f49472a = name;
        c17576b.fieldSetFlags()[2] = true;
        return new AbstractC19580x.C19584d<>(c17576b.build());
    }

    @Override // p193e.p194a.p1011l.p1021l2.AbstractC16952a
    /* renamed from: e */
    public LogLevel mo9874e() {
        return this.f56944a;
    }
}
