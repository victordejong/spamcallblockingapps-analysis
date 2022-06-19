package p193e.p194a.p1124p;

import android.graphics.Bitmap;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p1053m0.C17891a1;
import p193e.p194a.p1406z3.C21852d;
import p193e.p194a.p372b0.p394b.p404m.C8409c;
import q3.a.i0;
import s1.s;
import s1.w.d;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.p;
import s1.z.c.l;
@e(c = "com.truecaller.editprofile.EditProfileAvatarHelperImpl$getAvatarRequestBodyFromUrl$2", f = "EditProfileAvatarHelper.kt", l = {}, m = "invokeSuspend")
/* renamed from: e.a.p.h */
/* loaded from: classes9-dex2jar.jar:e/a/p/h.class */
public final class C19197h extends i implements p<i0, d<? super C8409c>, Object> {

    /* renamed from: e */
    public final /* synthetic */ C19198i f53566e;

    /* renamed from: f */
    public final /* synthetic */ String f53567f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C19197h(C19198i c19198i, String str, d dVar) {
        super(2, dVar);
        this.f53566e = c19198i;
        this.f53567f = str;
    }

    /* renamed from: i */
    public final d<s> m13882i(Object obj, d<?> dVar) {
        l.e(dVar, "completion");
        return new C19197h(this.f53566e, this.f53567f, dVar);
    }

    /* renamed from: k */
    public final Object m13881k(Object obj, Object obj2) {
        Bitmap bitmap;
        d dVar = (d) obj2;
        l.e(dVar, "completion");
        C19198i c19198i = this.f53566e;
        String str = this.f53567f;
        dVar.getContext();
        C25225a.m3932a3(s.a);
        C8409c c8409c = null;
        try {
            C21852d<Bitmap> mo8415f = C17891a1.C17902k.m15664K1(c19198i.f53568a).mo8415f();
            mo8415f.m8972l0(str);
            bitmap = (Bitmap) mo8415f.m8418X().get();
        } catch (Exception e) {
            bitmap = null;
        }
        if (bitmap != null) {
            c8409c = new C8409c(bitmap, 80);
        }
        return c8409c;
    }

    /* renamed from: s */
    public final Object m13880s(Object obj) {
        Bitmap bitmap;
        C25225a.m3932a3(obj);
        C8409c c8409c = null;
        try {
            C21852d<Bitmap> mo8415f = C17891a1.C17902k.m15664K1(this.f53566e.f53568a).mo8415f();
            mo8415f.m8972l0(this.f53567f);
            bitmap = (Bitmap) mo8415f.m8418X().get();
        } catch (Exception e) {
            bitmap = null;
        }
        if (bitmap != null) {
            c8409c = new C8409c(bitmap, 80);
        }
        return c8409c;
    }
}
