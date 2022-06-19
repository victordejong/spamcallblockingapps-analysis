package p193e.p194a.p1365y.p1366a.p1370e;

import android.net.Uri;
import com.truecaller.flashsdk.C3909R;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p1365y.p1381b.AbstractC21614m;
import p193e.p194a.p437c.p578p.C10480a;
import q3.a.i0;
import q3.a.t0;
import s1.s;
import s1.w.d;
import s1.w.f;
import s1.w.j.a;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.p;
import s1.z.c.l;
@e(c = "com.truecaller.flashsdk.ui.base.BaseFlashPresenterImpl$onCameraImageResult$1", f = "BaseFlashPresenter.kt", l = {292}, m = "invokeSuspend")
/* renamed from: e.a.y.a.e.c */
/* loaded from: classes9-dex2jar.jar:e/a/y/a/e/c.class */
public final class C21489c extends i implements p<i0, d<? super s>, Object> {

    /* renamed from: e */
    public /* synthetic */ Object f60000e;

    /* renamed from: f */
    public int f60001f;

    /* renamed from: g */
    public final /* synthetic */ AbstractC21491d f60002g;

    /* renamed from: h */
    public final /* synthetic */ AbstractC21492e f60003h;

    @e(c = "com.truecaller.flashsdk.ui.base.BaseFlashPresenterImpl$onCameraImageResult$1$flashImageUri$1", f = "BaseFlashPresenter.kt", l = {292}, m = "invokeSuspend")
    /* renamed from: e.a.y.a.e.c$a */
    /* loaded from: classes9-dex2jar.jar:e/a/y/a/e/c$a.class */
    public static final class C21490a extends i implements p<i0, d<? super Uri>, Object> {

        /* renamed from: e */
        public int f60004e;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C21490a(d dVar) {
            super(2, dVar);
            C21489c.this = r5;
        }

        /* renamed from: i */
        public final d<s> m9668i(Object obj, d<?> dVar) {
            l.e(dVar, "completion");
            return new C21490a(dVar);
        }

        /* renamed from: k */
        public final Object m9667k(Object obj, Object obj2) {
            d dVar = (d) obj2;
            l.e(dVar, "completion");
            return new C21490a(dVar).m9666s(s.a);
        }

        /* renamed from: s */
        public final Object m9666s(Object obj) {
            a aVar = a.a;
            int i = this.f60004e;
            if (i == 0) {
                C25225a.m3932a3(obj);
                AbstractC21491d abstractC21491d = C21489c.this.f60002g;
                AbstractC21614m abstractC21614m = abstractC21491d.f60025t;
                Uri uri = abstractC21491d.f60017l;
                this.f60004e = 1;
                Object mo9356d = abstractC21614m.mo9356d(uri, this);
                obj = mo9356d;
                if (mo9356d == aVar) {
                    return aVar;
                }
            } else if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            } else {
                C25225a.m3932a3(obj);
            }
            return obj;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C21489c(AbstractC21491d abstractC21491d, AbstractC21492e abstractC21492e, d dVar) {
        super(2, dVar);
        this.f60002g = abstractC21491d;
        this.f60003h = abstractC21492e;
    }

    /* renamed from: i */
    public final d<s> m9671i(Object obj, d<?> dVar) {
        l.e(dVar, "completion");
        C21489c c21489c = new C21489c(this.f60002g, this.f60003h, dVar);
        c21489c.f60000e = obj;
        return c21489c;
    }

    /* renamed from: k */
    public final Object m9670k(Object obj, Object obj2) {
        d dVar = (d) obj2;
        l.e(dVar, "completion");
        C21489c c21489c = new C21489c(this.f60002g, this.f60003h, dVar);
        c21489c.f60000e = obj;
        return c21489c.m9669s(s.a);
    }

    /* renamed from: s */
    public final Object m9669s(Object obj) {
        a aVar = a.a;
        int i = this.f60001f;
        try {
            if (i == 0) {
                C25225a.m3932a3(obj);
                i0 i0Var = (i0) this.f60000e;
                f plus = this.f60002g.f60011f.plus(t0.d);
                C21490a c21490a = new C21490a(null);
                this.f60000e = i0Var;
                this.f60001f = 1;
                Object a4 = s1.a.a.a.v0.f.d.a4(plus, c21490a, this);
                obj = a4;
                if (a4 == aVar) {
                    return aVar;
                }
            } else if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            } else {
                i0 i0Var2 = (i0) this.f60000e;
                C25225a.m3932a3(obj);
            }
            Uri uri = (Uri) obj;
            if (uri != null) {
                this.f60002g.mo9433C(uri);
            } else {
                AbstractC21492e abstractC21492e = this.f60003h;
                abstractC21492e.mo9617V9();
                abstractC21492e.mo9602l(this.f60002g.f60020o.mo9375b(C3909R.string.try_again, new Object[0]));
            }
        } catch (Exception e) {
            C10480a.m26061I1(e);
            AbstractC21492e abstractC21492e2 = this.f60003h;
            abstractC21492e2.mo9617V9();
            abstractC21492e2.mo9602l(this.f60002g.f60020o.mo9375b(C3909R.string.try_again, new Object[0]));
        }
        return s.a;
    }
}
