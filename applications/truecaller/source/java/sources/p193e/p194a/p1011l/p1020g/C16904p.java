package p193e.p194a.p1011l.p1020g;

import android.net.Uri;
import com.truecaller.C2752R;
import java.util.List;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p1011l.p1020g.AbstractC16893l;
import q3.a.i0;
import s1.s;
import s1.w.d;
import s1.w.j.a;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.p;
import s1.z.c.l;
@e(c = "com.truecaller.premium.gift.GoldGiftDialogPresenter$onContactPicked$1", f = "GoldGiftDialogPresenter.kt", l = {82}, m = "invokeSuspend")
/* renamed from: e.a.l.g.p */
/* loaded from: classes12-dex2jar.jar:e/a/l/g/p.class */
public final class C16904p extends i implements p<i0, d<? super s>, Object> {

    /* renamed from: e */
    public /* synthetic */ Object f47476e;

    /* renamed from: f */
    public int f47477f;

    /* renamed from: g */
    public final /* synthetic */ C16900o f47478g;

    /* renamed from: h */
    public final /* synthetic */ Uri f47479h;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C16904p(C16900o c16900o, Uri uri, d dVar) {
        super(2, dVar);
        this.f47478g = c16900o;
        this.f47479h = uri;
    }

    /* renamed from: i */
    public final d<s> m16784i(Object obj, d<?> dVar) {
        l.e(dVar, "completion");
        C16904p c16904p = new C16904p(this.f47478g, this.f47479h, dVar);
        c16904p.f47476e = obj;
        return c16904p;
    }

    /* renamed from: k */
    public final Object m16783k(Object obj, Object obj2) {
        d dVar = (d) obj2;
        l.e(dVar, "completion");
        C16904p c16904p = new C16904p(this.f47478g, this.f47479h, dVar);
        c16904p.f47476e = obj;
        return c16904p.m16782s(s.a);
    }

    /* renamed from: s */
    public final Object m16782s(Object obj) {
        a aVar = a.a;
        int i = this.f47477f;
        if (i == 0) {
            C25225a.m3932a3(obj);
            i0 i0Var = (i0) this.f47476e;
            C16885d c16885d = this.f47478g.f47465j;
            Uri uri = this.f47479h;
            this.f47476e = i0Var;
            this.f47477f = 1;
            Object a4 = s1.a.a.a.v0.f.d.a4(c16885d.f47424c, new C16884c(c16885d, uri, null), this);
            obj = a4;
            if (a4 == aVar) {
                return aVar;
            }
        } else if (i != 1) {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        } else {
            i0 i0Var2 = (i0) this.f47476e;
            C25225a.m3932a3(obj);
        }
        C16883b c16883b = (C16883b) obj;
        if (c16883b != null) {
            C16900o c16900o = this.f47478g;
            c16900o.f47460e = c16883b;
            String mo13768b = c16900o.f47464i.mo13768b(C2752R.string.GoldGiftContactTitle, c16883b.f47418a, c16883b.f47419b);
            l.d(mo13768b, "resourceProvider.getStri…ntactTitle, name, number)");
            AbstractC16893l.C16894a c16894a = new AbstractC16893l.C16894a(mo13768b, (List) this.f47478g.f47462g.getValue());
            c16900o.f47459d = c16894a;
            AbstractC16898m abstractC16898m = (AbstractC16898m) c16900o.f57683a;
            if (abstractC16898m != null) {
                abstractC16898m.mo16794du(c16894a);
            }
        } else {
            AbstractC16898m abstractC16898m2 = (AbstractC16898m) this.f47478g.f57683a;
            if (abstractC16898m2 != null) {
                abstractC16898m2.mo16795Xo();
            }
            this.f47478g.m16785Jj();
        }
        return s.a;
    }
}
