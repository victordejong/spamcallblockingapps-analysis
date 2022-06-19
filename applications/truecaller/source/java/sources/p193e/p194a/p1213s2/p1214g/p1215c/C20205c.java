package p193e.p194a.p1213s2.p1214g.p1215c;

import android.os.Bundle;
import com.truecaller.announce_caller_id.analytics.events.AnnounceCallType;
import com.truecaller.premium.analytics.LogLevel;
import org.apache.avro.Schema;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p194a.p1011l.p1021l2.AbstractC16952a;
import p193e.p194a.p1050l5.p1051a.C17484d;
import p193e.p194a.p1146q2.AbstractC19580x;
import s1.z.c.l;
/* renamed from: e.a.s2.g.c.c */
/* loaded from: classes5-dex2jar.jar:e/a/s2/g/c/c.class */
public final class C20205c extends AbstractC16952a {

    /* renamed from: a */
    public final LogLevel f56926a = LogLevel.CORE;

    /* renamed from: b */
    public final boolean f56927b;

    /* renamed from: c */
    public final boolean f56928c;

    /* renamed from: d */
    public final AnnounceCallType f56929d;

    /* renamed from: e */
    public final String f56930e;

    public C20205c(boolean z, boolean z2, AnnounceCallType announceCallType, String str) {
        l.e(announceCallType, "callType");
        l.e(str, "language");
        this.f56927b = z;
        this.f56928c = z2;
        this.f56929d = announceCallType;
        this.f56930e = str;
    }

    @Override // p193e.p194a.p1011l.p1021l2.AbstractC16952a
    /* renamed from: c */
    public AbstractC19580x.C19582b mo9876c() {
        Bundle bundle = new Bundle();
        bundle.putBoolean("IsPhoneBookContact", this.f56927b);
        bundle.putBoolean("AnnouncingOnHeadset", this.f56928c);
        bundle.putString("CallType", this.f56929d.name());
        return C22128a.m8588o1(bundle, "Language", this.f56930e, "AC_CallAnnounced", bundle);
    }

    @Override // p193e.p194a.p1011l.p1021l2.AbstractC16952a
    /* renamed from: d */
    public AbstractC19580x.C19584d<C17484d> mo9875d() {
        Schema schema = C17484d.f49022g;
        C17484d.C17486b c17486b = new C17484d.C17486b(null);
        String name = this.f56929d.name();
        c17486b.validate(c17486b.fields()[4], name);
        c17486b.f49034c = name;
        c17486b.fieldSetFlags()[4] = true;
        boolean z = this.f56928c;
        c17486b.validate(c17486b.fields()[3], Boolean.valueOf(z));
        c17486b.f49033b = z;
        c17486b.fieldSetFlags()[3] = true;
        boolean z2 = this.f56927b;
        c17486b.validate(c17486b.fields()[2], Boolean.valueOf(z2));
        c17486b.f49032a = z2;
        c17486b.fieldSetFlags()[2] = true;
        String str = this.f56930e;
        c17486b.validate(c17486b.fields()[5], str);
        c17486b.f49035d = str;
        c17486b.fieldSetFlags()[5] = true;
        return new AbstractC19580x.C19584d<>(c17486b.build());
    }

    @Override // p193e.p194a.p1011l.p1021l2.AbstractC16952a
    /* renamed from: e */
    public LogLevel mo9874e() {
        return this.f56926a;
    }
}
