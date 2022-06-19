package p193e.p194a.p1213s2.p1214g.p1215c;

import android.os.Bundle;
import com.truecaller.announce_caller_id.analytics.events.AnnounceCallIgnoredReason;
import com.truecaller.premium.analytics.LogLevel;
import java.util.Map;
import org.apache.avro.Schema;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p1011l.p1021l2.AbstractC16952a;
import p193e.p194a.p1050l5.p1051a.C17466c;
import p193e.p194a.p1146q2.AbstractC19580x;
import s1.k;
import s1.z.c.l;
/* renamed from: e.a.s2.g.c.d */
/* loaded from: classes5-dex2jar.jar:e/a/s2/g/c/d.class */
public final class C20206d extends AbstractC16952a {

    /* renamed from: a */
    public final LogLevel f56931a = LogLevel.VERBOSE;

    /* renamed from: b */
    public final AnnounceCallIgnoredReason f56932b;

    public C20206d(AnnounceCallIgnoredReason announceCallIgnoredReason) {
        l.e(announceCallIgnoredReason, "reason");
        this.f56932b = announceCallIgnoredReason;
    }

    @Override // p193e.p194a.p1011l.p1021l2.AbstractC16952a
    /* renamed from: b */
    public k<String, Map<String, Object>> mo9877b() {
        return new k<>("AC_CallAnnounceIgnored", C25225a.m3938Z1(new k("reason", this.f56932b.name())));
    }

    @Override // p193e.p194a.p1011l.p1021l2.AbstractC16952a
    /* renamed from: c */
    public AbstractC19580x.C19582b mo9876c() {
        Bundle bundle = new Bundle();
        bundle.putString("reason", this.f56932b.name());
        return new AbstractC19580x.C19582b("AC_CallAnnounceIgnored", bundle);
    }

    @Override // p193e.p194a.p1011l.p1021l2.AbstractC16952a
    /* renamed from: d */
    public AbstractC19580x.C19584d<C17466c> mo9875d() {
        Schema schema = C17466c.f48948d;
        C17466c.C17468b c17468b = new C17466c.C17468b(null);
        String name = this.f56932b.name();
        c17468b.validate(c17468b.fields()[2], name);
        c17468b.f48955a = name;
        c17468b.fieldSetFlags()[2] = true;
        return new AbstractC19580x.C19584d<>(c17468b.build());
    }

    @Override // p193e.p194a.p1011l.p1021l2.AbstractC16952a
    /* renamed from: e */
    public LogLevel mo9874e() {
        return this.f56931a;
    }
}
