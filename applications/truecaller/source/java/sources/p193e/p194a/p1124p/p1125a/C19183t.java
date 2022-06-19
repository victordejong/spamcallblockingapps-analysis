package p193e.p194a.p1124p.p1125a;

import android.net.Uri;
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
@e(c = "com.truecaller.editprofile.ui.EditProfilePresenter$performCenterCrop$1", f = "EditProfilePresenter.kt", l = {575}, m = "invokeSuspend")
/* renamed from: e.a.p.a.t */
/* loaded from: classes9-dex2jar.jar:e/a/p/a/t.class */
public final class C19183t extends i implements p<i0, d<? super s>, Object> {

    /* renamed from: e */
    public int f53548e;

    /* renamed from: f */
    public final /* synthetic */ C19172m f53549f;

    /* renamed from: g */
    public final /* synthetic */ Uri f53550g;

    @e(c = "com.truecaller.editprofile.ui.EditProfilePresenter$performCenterCrop$1$imageUri$1", f = "EditProfilePresenter.kt", l = {}, m = "invokeSuspend")
    /* renamed from: e.a.p.a.t$a */
    /* loaded from: classes9-dex2jar.jar:e/a/p/a/t$a.class */
    public static final class C19184a extends i implements p<i0, d<? super Uri>, Object> {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C19184a(d dVar) {
            super(2, dVar);
            C19183t.this = r5;
        }

        /* renamed from: i */
        public final d<s> m13906i(Object obj, d<?> dVar) {
            l.e(dVar, "completion");
            return new C19184a(dVar);
        }

        /* renamed from: k */
        public final Object m13905k(Object obj, Object obj2) {
            d dVar = (d) obj2;
            l.e(dVar, "completion");
            C19183t c19183t = C19183t.this;
            dVar.getContext();
            C25225a.m3932a3(s.a);
            return c19183t.f53549f.f53480L.mo13833a(c19183t.f53550g, 640);
        }

        /* renamed from: s */
        public final Object m13904s(Object obj) {
            C25225a.m3932a3(obj);
            C19183t c19183t = C19183t.this;
            return c19183t.f53549f.f53480L.mo13833a(c19183t.f53550g, 640);
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C19183t(C19172m c19172m, Uri uri, d dVar) {
        super(2, dVar);
        this.f53549f = c19172m;
        this.f53550g = uri;
    }

    /* renamed from: i */
    public final d<s> m13909i(Object obj, d<?> dVar) {
        l.e(dVar, "completion");
        return new C19183t(this.f53549f, this.f53550g, dVar);
    }

    /* renamed from: k */
    public final Object m13908k(Object obj, Object obj2) {
        d dVar = (d) obj2;
        l.e(dVar, "completion");
        return new C19183t(this.f53549f, this.f53550g, dVar).m13907s(s.a);
    }

    /* renamed from: s */
    public final Object m13907s(Object obj) {
        a aVar = a.a;
        int i = this.f53548e;
        if (i == 0) {
            C25225a.m3932a3(obj);
            f fVar = this.f53549f.f53502t;
            C19184a c19184a = new C19184a(null);
            this.f53548e = 1;
            Object a4 = s1.a.a.a.v0.f.d.a4(fVar, c19184a, this);
            obj = a4;
            if (a4 == aVar) {
                return aVar;
            }
        } else if (i != 1) {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        } else {
            C25225a.m3932a3(obj);
        }
        Uri uri = (Uri) obj;
        if (uri != null) {
            this.f53549f.m13934Vj(uri);
        }
        return s.a;
    }
}
