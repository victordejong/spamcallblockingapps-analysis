package p193e.p194a.p1124p.p1125a;

import com.truecaller.editprofile.C3890R;
import com.truecaller.editprofile.p164ui.EditProfileMvp$View;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p1124p.AbstractC19188c;
import p193e.p194a.p372b0.p406e.AbstractC8417d;
import q3.a.i0;
import s1.s;
import s1.w.d;
import s1.w.j.a;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.p;
import s1.z.c.l;
@e(c = "com.truecaller.editprofile.ui.EditProfilePresenter$onRemoveSecondaryNumber$1", f = "EditProfilePresenter.kt", l = {707}, m = "invokeSuspend")
/* renamed from: e.a.p.a.q */
/* loaded from: classes9-dex2jar.jar:e/a/p/a/q.class */
public final class C19180q extends i implements p<i0, d<? super s>, Object> {

    /* renamed from: e */
    public int f53544e;

    /* renamed from: f */
    public final /* synthetic */ C19172m f53545f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C19180q(C19172m c19172m, d dVar) {
        super(2, dVar);
        this.f53545f = c19172m;
    }

    /* renamed from: i */
    public final d<s> m13912i(Object obj, d<?> dVar) {
        l.e(dVar, "completion");
        return new C19180q(this.f53545f, dVar);
    }

    /* renamed from: k */
    public final Object m13911k(Object obj, Object obj2) {
        d dVar = (d) obj2;
        l.e(dVar, "completion");
        return new C19180q(this.f53545f, dVar).m13910s(s.a);
    }

    /* renamed from: s */
    public final Object m13910s(Object obj) {
        a aVar = a.a;
        int i = this.f53544e;
        if (i == 0) {
            C25225a.m3932a3(obj);
            C19172m c19172m = this.f53545f;
            EditProfileMvp$View editProfileMvp$View = (EditProfileMvp$View) c19172m.f57683a;
            if (editProfileMvp$View != null) {
                editProfileMvp$View.mo14062Bb();
            }
            c19172m.f53498p = true;
            AbstractC19188c abstractC19188c = this.f53545f.f53475C;
            this.f53544e = 1;
            Object mo13899b = abstractC19188c.mo13899b(this);
            obj = mo13899b;
            if (mo13899b == aVar) {
                return aVar;
            }
        } else if (i != 1) {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        } else {
            C25225a.m3932a3(obj);
        }
        AbstractC8417d abstractC8417d = (AbstractC8417d) obj;
        C19172m c19172m2 = this.f53545f;
        EditProfileMvp$View editProfileMvp$View2 = (EditProfileMvp$View) c19172m2.f57683a;
        if (editProfileMvp$View2 != null) {
            editProfileMvp$View2.mo13980pz();
        }
        c19172m2.f53498p = false;
        if (l.a(abstractC8417d, AbstractC8417d.C8423b.f26103a)) {
            this.f53545f.m13930Zj();
        } else if (abstractC8417d instanceof AbstractC8417d.AbstractC8418a.C8419a) {
            C19172m c19172m3 = this.f53545f;
            EditProfileMvp$View editProfileMvp$View3 = (EditProfileMvp$View) c19172m3.f57683a;
            if (editProfileMvp$View3 != null) {
                String mo13768b = c19172m3.f53505w.mo13768b(C3890R.string.ErrorGeneral, new Object[0]);
                l.d(mo13768b, "resourceProvider.getString(R.string.ErrorGeneral)");
                editProfileMvp$View3.mo13988m(mo13768b);
            }
        } else if (l.a(abstractC8417d, AbstractC8417d.AbstractC8418a.C8420b.f26100a)) {
            C19172m c19172m4 = this.f53545f;
            EditProfileMvp$View editProfileMvp$View4 = (EditProfileMvp$View) c19172m4.f57683a;
            if (editProfileMvp$View4 != null) {
                String mo13768b2 = c19172m4.f53505w.mo13768b(C3890R.string.ErrorConnectionGeneral, new Object[0]);
                l.d(mo13768b2, "resourceProvider.getStri…g.ErrorConnectionGeneral)");
                editProfileMvp$View4.mo13988m(mo13768b2);
            }
        } else if (l.a(abstractC8417d, AbstractC8417d.AbstractC8418a.C8421c.f26101a)) {
            C19172m c19172m5 = this.f53545f;
            EditProfileMvp$View editProfileMvp$View5 = (EditProfileMvp$View) c19172m5.f57683a;
            if (editProfileMvp$View5 != null) {
                String mo13768b3 = c19172m5.f53505w.mo13768b(C3890R.string.ErrorGeneral, new Object[0]);
                l.d(mo13768b3, "resourceProvider.getString(R.string.ErrorGeneral)");
                editProfileMvp$View5.mo13988m(mo13768b3);
            }
            this.f53545f.m13930Zj();
        } else if (l.a(abstractC8417d, AbstractC8417d.AbstractC8418a.C8422d.f26102a)) {
            C19172m c19172m6 = this.f53545f;
            EditProfileMvp$View editProfileMvp$View6 = (EditProfileMvp$View) c19172m6.f57683a;
            if (editProfileMvp$View6 != null) {
                String mo13768b4 = c19172m6.f53505w.mo13768b(C3890R.string.ErrorGeneral, new Object[0]);
                l.d(mo13768b4, "resourceProvider.getString(R.string.ErrorGeneral)");
                editProfileMvp$View6.mo13988m(mo13768b4);
            }
            this.f53545f.m13930Zj();
        }
        return s.a;
    }
}
