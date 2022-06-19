package p193e.p194a.p294b.p295a.p296a.p297a.p298b;

import p1727n3.p1868v.C27010k0;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p294b.p354l.C8036l;
import p193e.p194a.p851h5.AbstractC14967y;
import p193e.p194a.p851h5.C14945l;
import q3.a.i0;
import s1.s;
import s1.w.d;
import s1.w.j.a;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.p;
import s1.z.c.l;
@e(c = "com.truecaller.bizmon.newBusiness.profile.ui.imagePicker.ImagePickerViewModel$requestPermissionForGallery$1", f = "ImagePickerViewModel.kt", l = {49}, m = "invokeSuspend")
/* renamed from: e.a.b.a.a.a.b.c */
/* loaded from: classes6-dex2jar.jar:e/a/b/a/a/a/b/c.class */
public final class C7492c extends i implements p<i0, d<? super s>, Object> {

    /* renamed from: e */
    public Object f23766e;

    /* renamed from: f */
    public int f23767f;

    /* renamed from: g */
    public final /* synthetic */ C7493d f23768g;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C7492c(C7493d c7493d, d dVar) {
        super(2, dVar);
        this.f23768g = c7493d;
    }

    /* renamed from: i */
    public final d<s> m29556i(Object obj, d<?> dVar) {
        l.e(dVar, "completion");
        return new C7492c(this.f23768g, dVar);
    }

    /* renamed from: k */
    public final Object m29555k(Object obj, Object obj2) {
        d dVar = (d) obj2;
        l.e(dVar, "completion");
        return new C7492c(this.f23768g, dVar).m29554s(s.a);
    }

    /* renamed from: s */
    public final Object m29554s(Object obj) {
        Object obj2;
        C27010k0<C8036l<C14945l>> c27010k0;
        a aVar = a.a;
        int i = this.f23767f;
        if (i == 0) {
            C25225a.m3932a3(obj);
            C7493d c7493d = this.f23768g;
            C27010k0<C8036l<C14945l>> c27010k02 = c7493d.f23770b;
            AbstractC14967y abstractC14967y = c7493d.f23772d;
            this.f23766e = c27010k02;
            this.f23767f = 1;
            obj2 = abstractC14967y.mo19334f(new String[]{"android.permission.READ_EXTERNAL_STORAGE"}, this);
            if (obj2 == aVar) {
                return aVar;
            }
            c27010k0 = c27010k02;
        } else if (i != 1) {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        } else {
            c27010k0 = (C27010k0) this.f23766e;
            C25225a.m3932a3(obj);
            obj2 = obj;
        }
        c27010k0.mo1001j(new C8036l<>(obj2));
        return s.a;
    }
}
