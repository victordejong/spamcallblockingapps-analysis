package p193e.p194a.p1213s2.p1214g.p1215c;

import android.os.Bundle;
import com.truecaller.announce_caller_id.analytics.events.AnnounceCallerIdToggleSource;
import com.truecaller.premium.analytics.LogLevel;
import java.util.Map;
import org.apache.avro.Schema;
import p193e.p194a.p1011l.p1021l2.AbstractC16952a;
import p193e.p194a.p1050l5.p1051a.C17556h;
import p193e.p194a.p1146q2.AbstractC19580x;
import s1.k;
import s1.u.i;
import s1.z.c.l;
/* renamed from: e.a.s2.g.c.g */
/* loaded from: classes5-dex2jar.jar:e/a/s2/g/c/g.class */
public final class C20209g extends AbstractC16952a {

    /* renamed from: a */
    public final LogLevel f56940a = LogLevel.CORE;

    /* renamed from: b */
    public final Integer f56941b;

    /* renamed from: c */
    public final AnnounceCallerIdToggleSource f56942c;

    /* renamed from: d */
    public final boolean f56943d;

    public C20209g(Integer num, AnnounceCallerIdToggleSource announceCallerIdToggleSource, boolean z) {
        l.e(announceCallerIdToggleSource, "announceCallerToggleSource");
        this.f56941b = num;
        this.f56942c = announceCallerIdToggleSource;
        this.f56943d = z;
    }

    @Override // p193e.p194a.p1011l.p1021l2.AbstractC16952a
    /* renamed from: b */
    public k<String, Map<String, Object>> mo9877b() {
        Integer num = this.f56941b;
        return new k<>("AC_ToggleDisabled", i.W(new k[]{new k("CardPosition", Integer.valueOf(num != null ? num.intValue() : -1)), new k("source", this.f56942c.name()), new k("PromoShown", Boolean.valueOf(this.f56943d))}));
    }

    @Override // p193e.p194a.p1011l.p1021l2.AbstractC16952a
    /* renamed from: c */
    public AbstractC19580x.C19582b mo9876c() {
        Bundle bundle = new Bundle();
        Integer num = this.f56941b;
        bundle.putInt("CardPosition", num != null ? num.intValue() : -1);
        bundle.putString("source", this.f56942c.name());
        bundle.putBoolean("PromoShown", this.f56943d);
        return new AbstractC19580x.C19582b("AC_ToggleDisabled", bundle);
    }

    @Override // p193e.p194a.p1011l.p1021l2.AbstractC16952a
    /* renamed from: d */
    public AbstractC19580x.C19584d<C17556h> mo9875d() {
        Schema schema = C17556h.f49378f;
        C17556h.C17558b c17558b = new C17556h.C17558b(null);
        Boolean valueOf = Boolean.valueOf(this.f56943d);
        c17558b.validate(c17558b.fields()[4], valueOf);
        c17558b.f49389c = valueOf;
        c17558b.fieldSetFlags()[4] = true;
        Integer num = this.f56941b;
        int intValue = num != null ? num.intValue() : -1;
        c17558b.validate(c17558b.fields()[3], Integer.valueOf(intValue));
        c17558b.f49388b = intValue;
        c17558b.fieldSetFlags()[3] = true;
        String name = this.f56942c.name();
        c17558b.validate(c17558b.fields()[2], name);
        c17558b.f49387a = name;
        c17558b.fieldSetFlags()[2] = true;
        return new AbstractC19580x.C19584d<>(c17558b.build());
    }

    @Override // p193e.p194a.p1011l.p1021l2.AbstractC16952a
    /* renamed from: e */
    public LogLevel mo9874e() {
        return this.f56940a;
    }
}
