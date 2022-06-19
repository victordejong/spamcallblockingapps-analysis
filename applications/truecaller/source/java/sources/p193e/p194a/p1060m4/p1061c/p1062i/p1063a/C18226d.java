package p193e.p194a.p1060m4.p1061c.p1062i.p1063a;

import com.truecaller.p183ui.components.DrawerHeaderView;
import com.truecaller.profile.data.dto.businessV2.BusinessProfile;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p682e.C13175c0;
import q3.a.i0;
import s1.s;
import s1.w.d;
import s1.w.f;
import s1.w.j.a;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.p;
import s1.z.c.l;
@e(c = "com.truecaller.profile.data.dto.businessV2.BizProfileLocalFileManagerImpl$readAndParseBizProfileAsync$1", f = "BizProfileLocalFileManager.kt", l = {57}, m = "invokeSuspend")
/* renamed from: e.a.m4.c.i.a.d */
/* loaded from: classes12-dex2jar.jar:e/a/m4/c/i/a/d.class */
public final class C18226d extends i implements p<i0, d<? super s>, Object> {

    /* renamed from: e */
    public int f51530e;

    /* renamed from: f */
    public final /* synthetic */ C18224c f51531f;

    /* renamed from: g */
    public final /* synthetic */ C13175c0 f51532g;

    @e(c = "com.truecaller.profile.data.dto.businessV2.BizProfileLocalFileManagerImpl$readAndParseBizProfileAsync$1$bizProfile$1", f = "BizProfileLocalFileManager.kt", l = {}, m = "invokeSuspend")
    /* renamed from: e.a.m4.c.i.a.d$a */
    /* loaded from: classes12-dex2jar.jar:e/a/m4/c/i/a/d$a.class */
    public static final class C18227a extends i implements p<i0, d<? super BusinessProfile>, Object> {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C18227a(d dVar) {
            super(2, dVar);
            C18226d.this = r5;
        }

        /* renamed from: i */
        public final d<s> m15392i(Object obj, d<?> dVar) {
            l.e(dVar, "completion");
            return new C18227a(dVar);
        }

        /* renamed from: k */
        public final Object m15391k(Object obj, Object obj2) {
            d dVar = (d) obj2;
            l.e(dVar, "completion");
            C18226d c18226d = C18226d.this;
            dVar.getContext();
            C25225a.m3932a3(s.a);
            return c18226d.f51531f.mo15398d();
        }

        /* renamed from: s */
        public final Object m15390s(Object obj) {
            C25225a.m3932a3(obj);
            return C18226d.this.f51531f.mo15398d();
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C18226d(C18224c c18224c, C13175c0 c13175c0, d dVar) {
        super(2, dVar);
        this.f51531f = c18224c;
        this.f51532g = c13175c0;
    }

    /* renamed from: i */
    public final d<s> m15395i(Object obj, d<?> dVar) {
        l.e(dVar, "completion");
        return new C18226d(this.f51531f, this.f51532g, dVar);
    }

    /* renamed from: k */
    public final Object m15394k(Object obj, Object obj2) {
        d dVar = (d) obj2;
        l.e(dVar, "completion");
        return new C18226d(this.f51531f, this.f51532g, dVar).m15393s(s.a);
    }

    /* renamed from: s */
    public final Object m15393s(Object obj) {
        a aVar = a.a;
        int i = this.f51530e;
        if (i == 0) {
            C25225a.m3932a3(obj);
            f fVar = this.f51531f.f51528e;
            C18227a c18227a = new C18227a(null);
            this.f51530e = 1;
            Object a4 = s1.a.a.a.v0.f.d.a4(fVar, c18227a, this);
            obj = a4;
            if (a4 == aVar) {
                return aVar;
            }
        } else if (i != 1) {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        } else {
            C25225a.m3932a3(obj);
        }
        BusinessProfile businessProfile = (BusinessProfile) obj;
        DrawerHeaderView drawerHeaderView = this.f51532g.f38292a.f15634o;
        if (drawerHeaderView != null) {
            if (businessProfile != null) {
                drawerHeaderView.m34535h1(businessProfile.getName());
            } else {
                drawerHeaderView.m34537f1();
            }
        }
        return s.a;
    }
}
