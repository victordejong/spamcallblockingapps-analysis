package p193e.p194a.p1213s2.p1214g.p1215c;

import android.os.Bundle;
import com.truecaller.announce_caller_id.analytics.events.AnnounceCallerIdSettingsAction;
import com.truecaller.premium.analytics.LogLevel;
import java.util.Map;
import org.apache.avro.Schema;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p1011l.p1021l2.AbstractC16952a;
import p193e.p194a.p1050l5.p1051a.C17448b;
import p193e.p194a.p1146q2.AbstractC19580x;
import s1.k;
import s1.z.c.l;
/* renamed from: e.a.s2.g.c.b */
/* loaded from: classes5-dex2jar.jar:e/a/s2/g/c/b.class */
public final class C20204b extends AbstractC16952a {

    /* renamed from: a */
    public final LogLevel f56924a = LogLevel.VERBOSE;

    /* renamed from: b */
    public final AnnounceCallerIdSettingsAction f56925b;

    public C20204b(AnnounceCallerIdSettingsAction announceCallerIdSettingsAction) {
        l.e(announceCallerIdSettingsAction, "settingsAction");
        this.f56925b = announceCallerIdSettingsAction;
    }

    @Override // p193e.p194a.p1011l.p1021l2.AbstractC16952a
    /* renamed from: b */
    public k<String, Map<String, Object>> mo9877b() {
        return new k<>("AC_ActionOnSettings", C25225a.m3938Z1(new k("action", this.f56925b.name())));
    }

    @Override // p193e.p194a.p1011l.p1021l2.AbstractC16952a
    /* renamed from: c */
    public AbstractC19580x.C19582b mo9876c() {
        Bundle bundle = new Bundle();
        bundle.putString("action", this.f56925b.name());
        return new AbstractC19580x.C19582b("AC_ActionOnSettings", bundle);
    }

    @Override // p193e.p194a.p1011l.p1021l2.AbstractC16952a
    /* renamed from: d */
    public AbstractC19580x.C19584d<C17448b> mo9875d() {
        Schema schema = C17448b.f48872d;
        C17448b.C17450b c17450b = new C17448b.C17450b(null);
        String name = this.f56925b.name();
        c17450b.validate(c17450b.fields()[2], name);
        c17450b.f48879a = name;
        c17450b.fieldSetFlags()[2] = true;
        C17448b build = c17450b.build();
        l.d(build, "AppACActionOnSettings.ne…ame)\n            .build()");
        return new AbstractC19580x.C19584d<>(build);
    }

    @Override // p193e.p194a.p1011l.p1021l2.AbstractC16952a
    /* renamed from: e */
    public LogLevel mo9874e() {
        return this.f56924a;
    }
}
