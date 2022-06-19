package p193e.p194a.p1193r5.p1194s0;

import com.truecaller.whoviewedme.ProfileViewSource;
import org.apache.avro.Schema;
import p193e.p194a.p1050l5.p1051a.C17766u1;
import p193e.p194a.p1146q2.AbstractC19549v;
import p193e.p194a.p1146q2.AbstractC19580x;
import s1.z.c.l;
/* renamed from: e.a.r5.s0.b */
/* loaded from: classes8-dex2jar.jar:e/a/r5/s0/b.class */
public final class C19981b implements AbstractC19549v {

    /* renamed from: a */
    public final ProfileViewSource f56498a;

    public C19981b(ProfileViewSource profileViewSource) {
        l.e(profileViewSource, "source");
        this.f56498a = profileViewSource;
    }

    @Override // p193e.p194a.p1146q2.AbstractC19549v
    /* renamed from: a */
    public AbstractC19580x mo9106a() {
        Schema schema = C17766u1.f50415d;
        C17766u1.C17768b c17768b = new C17766u1.C17768b(null);
        String name = this.f56498a.name();
        c17768b.validate(c17768b.fields()[2], name);
        c17768b.f50422a = name;
        c17768b.fieldSetFlags()[2] = true;
        return new AbstractC19580x.C19584d(c17768b.build());
    }
}
