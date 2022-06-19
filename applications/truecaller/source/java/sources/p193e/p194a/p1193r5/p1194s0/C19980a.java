package p193e.p194a.p1193r5.p1194s0;

import com.truecaller.whoviewedme.ProfileViewSource;
import org.apache.avro.Schema;
import p193e.p194a.p1050l5.p1051a.C17751t1;
import p193e.p194a.p1146q2.AbstractC19549v;
import p193e.p194a.p1146q2.AbstractC19580x;
import s1.z.c.l;
/* renamed from: e.a.r5.s0.a */
/* loaded from: classes8-dex2jar.jar:e/a/r5/s0/a.class */
public final class C19980a implements AbstractC19549v {

    /* renamed from: a */
    public final ProfileViewSource f56497a;

    public C19980a(ProfileViewSource profileViewSource) {
        l.e(profileViewSource, "source");
        this.f56497a = profileViewSource;
    }

    @Override // p193e.p194a.p1146q2.AbstractC19549v
    /* renamed from: a */
    public AbstractC19580x mo9106a() {
        Schema schema = C17751t1.f50324d;
        C17751t1.C17753b c17753b = new C17751t1.C17753b(null);
        String name = this.f56497a.name();
        c17753b.validate(c17753b.fields()[2], name);
        c17753b.f50331a = name;
        c17753b.fieldSetFlags()[2] = true;
        return new AbstractC19580x.C19584d(c17753b.build());
    }
}
