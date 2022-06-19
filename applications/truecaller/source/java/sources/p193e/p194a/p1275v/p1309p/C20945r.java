package p193e.p194a.p1275v.p1309p;

import com.truecaller.data.entity.Contact;
import javax.inject.Inject;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p619d.p637c0.AbstractC11430l0;
import p193e.p194a.p619d.p637c0.AbstractC11476s1;
import s1.w.d;
import s1.w.i;
import s1.w.j.a;
import s1.z.c.l;
/* renamed from: e.a.v.p.r */
/* loaded from: classes8-dex2jar.jar:e/a/v/p/r.class */
public final class C20945r implements AbstractC20944q {

    /* renamed from: a */
    public final AbstractC11476s1 f58896a;

    /* renamed from: e.a.v.p.r$a */
    /* loaded from: classes8-dex2jar.jar:e/a/v/p/r$a.class */
    public static final class C20946a implements AbstractC11430l0 {

        /* renamed from: a */
        public final /* synthetic */ d f58897a;

        public C20946a(d dVar) {
            this.f58897a = dVar;
        }

        @Override // p193e.p194a.p619d.p637c0.AbstractC11430l0
        /* renamed from: a */
        public void mo10471a(boolean z) {
            this.f58897a.c(Boolean.valueOf(z));
        }
    }

    @Inject
    public C20945r(AbstractC11476s1 abstractC11476s1) {
        l.e(abstractC11476s1, "voipUtil");
        this.f58896a = abstractC11476s1;
    }

    @Override // p193e.p194a.p1275v.p1309p.AbstractC20944q
    /* renamed from: a */
    public Object mo10472a(Contact contact, d<? super Boolean> dVar) {
        i iVar = new i(C25225a.m3844s1(dVar));
        this.f58896a.mo24617g(contact, new C20946a(iVar));
        Object a = iVar.a();
        if (a == a.a) {
            l.e(dVar, "frame");
        }
        return a;
    }
}
