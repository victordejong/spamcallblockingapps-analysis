package p193e.p194a.p1124p.p1125a;

import com.truecaller.editprofile.C3890R;
import com.truecaller.editprofile.p164ui.EditProfileMvp$View;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p947k.AbstractC16111h;
import q3.a.i0;
import s1.s;
import s1.w.d;
import s1.w.j.a;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.p;
import s1.z.c.l;
@e(c = "com.truecaller.editprofile.ui.EditProfilePresenter$setVideoCallerIdVisibility$1", f = "EditProfilePresenter.kt", l = {198}, m = "invokeSuspend")
/* renamed from: e.a.p.a.u */
/* loaded from: classes9-dex2jar.jar:e/a/p/a/u.class */
public final class C19185u extends i implements p<i0, d<? super s>, Object> {

    /* renamed from: e */
    public int f53552e;

    /* renamed from: f */
    public final /* synthetic */ C19172m f53553f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C19185u(C19172m c19172m, d dVar) {
        super(2, dVar);
        this.f53553f = c19172m;
    }

    /* renamed from: i */
    public final d<s> m13903i(Object obj, d<?> dVar) {
        l.e(dVar, "completion");
        return new C19185u(this.f53553f, dVar);
    }

    /* renamed from: k */
    public final Object m13902k(Object obj, Object obj2) {
        d dVar = (d) obj2;
        l.e(dVar, "completion");
        return new C19185u(this.f53553f, dVar).m13901s(s.a);
    }

    /* renamed from: s */
    public final Object m13901s(Object obj) {
        a aVar = a.a;
        int i = this.f53552e;
        if (i == 0) {
            C25225a.m3932a3(obj);
            if (!this.f53553f.f53485Q.mo17820z()) {
                EditProfileMvp$View editProfileMvp$View = (EditProfileMvp$View) this.f53553f.f57683a;
                if (editProfileMvp$View != null) {
                    editProfileMvp$View.mo13991kr();
                }
                return s.a;
            }
            AbstractC16111h abstractC16111h = this.f53553f.f53485Q;
            this.f53552e = 1;
            Object mo17839g = abstractC16111h.mo17839g(this);
            obj = mo17839g;
            if (mo17839g == aVar) {
                return aVar;
            }
        } else if (i != 1) {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        } else {
            C25225a.m3932a3(obj);
        }
        if (((Boolean) obj).booleanValue()) {
            EditProfileMvp$View editProfileMvp$View2 = (EditProfileMvp$View) this.f53553f.f57683a;
            if (editProfileMvp$View2 != null) {
                editProfileMvp$View2.mo14027Wq(C3890R.string.vid_your_video_caller_id, EditProfileMvp$View.VideoCallerIdProfileAction.VISIT_YOUR_VIDEO);
            }
        } else {
            EditProfileMvp$View editProfileMvp$View3 = (EditProfileMvp$View) this.f53553f.f57683a;
            if (editProfileMvp$View3 != null) {
                editProfileMvp$View3.mo14027Wq(C3890R.string.vid_settings_setup, EditProfileMvp$View.VideoCallerIdProfileAction.CREATE_NEW_VIDEO);
            }
        }
        return s.a;
    }
}
