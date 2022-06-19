package p193e.p194a.p1124p.p1125a;

import com.truecaller.editprofile.p164ui.EditProfileMvp$View;
import com.truecaller.profile.data.dto.businessV2.BusinessProfile;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import q3.a.i0;
import s1.s;
import s1.w.d;
import s1.w.f;
import s1.w.j.a;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.p;
import s1.z.c.l;
@e(c = "com.truecaller.editprofile.ui.EditProfilePresenter$onEditBizProfileV2Enabled$1", f = "EditProfilePresenter.kt", l = {187}, m = "invokeSuspend")
/* renamed from: e.a.p.a.p */
/* loaded from: classes9-dex2jar.jar:e/a/p/a/p.class */
public final class C19178p extends i implements p<i0, d<? super s>, Object> {

    /* renamed from: e */
    public int f53541e;

    /* renamed from: f */
    public final /* synthetic */ C19172m f53542f;

    @e(c = "com.truecaller.editprofile.ui.EditProfilePresenter$onEditBizProfileV2Enabled$1$bizProfile$1", f = "EditProfilePresenter.kt", l = {}, m = "invokeSuspend")
    /* renamed from: e.a.p.a.p$a */
    /* loaded from: classes9-dex2jar.jar:e/a/p/a/p$a.class */
    public static final class C19179a extends i implements p<i0, d<? super BusinessProfile>, Object> {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C19179a(d dVar) {
            super(2, dVar);
            C19178p.this = r5;
        }

        /* renamed from: i */
        public final d<s> m13915i(Object obj, d<?> dVar) {
            l.e(dVar, "completion");
            return new C19179a(dVar);
        }

        /* renamed from: k */
        public final Object m13914k(Object obj, Object obj2) {
            d dVar = (d) obj2;
            l.e(dVar, "completion");
            C19178p c19178p = C19178p.this;
            dVar.getContext();
            C25225a.m3932a3(s.a);
            return c19178p.f53542f.f53483O.mo15398d();
        }

        /* renamed from: s */
        public final Object m13913s(Object obj) {
            C25225a.m3932a3(obj);
            return C19178p.this.f53542f.f53483O.mo15398d();
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C19178p(C19172m c19172m, d dVar) {
        super(2, dVar);
        this.f53542f = c19172m;
    }

    /* renamed from: i */
    public final d<s> m13918i(Object obj, d<?> dVar) {
        l.e(dVar, "completion");
        return new C19178p(this.f53542f, dVar);
    }

    /* renamed from: k */
    public final Object m13917k(Object obj, Object obj2) {
        d dVar = (d) obj2;
        l.e(dVar, "completion");
        return new C19178p(this.f53542f, dVar).m13916s(s.a);
    }

    /* renamed from: s */
    public final Object m13916s(Object obj) {
        a aVar = a.a;
        int i = this.f53541e;
        boolean z = true;
        if (i == 0) {
            C25225a.m3932a3(obj);
            f fVar = this.f53542f.f53502t;
            C19179a c19179a = new C19179a(null);
            this.f53541e = 1;
            Object a4 = s1.a.a.a.v0.f.d.a4(fVar, c19179a, this);
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
        EditProfileMvp$View editProfileMvp$View = (EditProfileMvp$View) this.f53542f.f57683a;
        if (editProfileMvp$View != null) {
            if (businessProfile != null) {
                z = false;
            }
            editProfileMvp$View.mo14039Ru(z);
        }
        return s.a;
    }
}
