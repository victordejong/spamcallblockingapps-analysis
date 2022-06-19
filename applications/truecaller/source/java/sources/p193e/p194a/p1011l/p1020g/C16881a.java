package p193e.p194a.p1011l.p1020g;

import java.util.List;
import p193e.p194a.p1011l.p1020g.AbstractC16893l;
import q3.a.i0;
import s1.s;
import s1.w.d;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.a;
import s1.z.b.p;
import s1.z.c.l;
import s1.z.c.m;
@e(c = "com.truecaller.premium.gift.GoldGiftDialogPresenter$sendGift$1", f = "GoldGiftDialogPresenter.kt", l = {119}, m = "invokeSuspend")
/* renamed from: e.a.l.g.a */
/* loaded from: classes12-dex2jar.jar:e/a/l/g/a.class */
public final class C16881a extends i implements p<i0, d<? super s>, Object> {

    /* renamed from: e */
    public Object f47412e;

    /* renamed from: f */
    public Object f47413f;

    /* renamed from: g */
    public int f47414g;

    /* renamed from: h */
    public final /* synthetic */ C16900o f47415h;

    /* renamed from: e.a.l.g.a$a */
    /* loaded from: classes5-dex2jar.jar:e/a/l/g/a$a.class */
    public static final class C16882a extends m implements a<s> {

        /* renamed from: b */
        public final /* synthetic */ int f47416b;

        /* renamed from: c */
        public final /* synthetic */ Object f47417c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C16882a(int i, Object obj) {
            super(0);
            this.f47416b = i;
            this.f47417c = obj;
        }

        public final Object invoke() {
            s sVar = s.a;
            int i = this.f47416b;
            if (i == 0) {
                ((C16881a) this.f47417c).f47415h.m16786Ij();
                return sVar;
            } else if (i != 1) {
                if (i != 2) {
                    throw null;
                }
                ((C16881a) this.f47417c).f47415h.m16786Ij();
                return sVar;
            } else {
                C16900o c16900o = ((C16881a) this.f47417c).f47415h;
                AbstractC16893l.C16897d c16897d = new AbstractC16893l.C16897d((List) c16900o.f47461f.getValue());
                c16900o.f47459d = c16897d;
                AbstractC16898m abstractC16898m = (AbstractC16898m) c16900o.f57683a;
                if (abstractC16898m != null) {
                    abstractC16898m.mo16794du(c16897d);
                }
                return sVar;
            }
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C16881a(C16900o c16900o, d dVar) {
        super(2, dVar);
        this.f47415h = c16900o;
    }

    /* renamed from: i */
    public final d<s> m16807i(Object obj, d<?> dVar) {
        l.e(dVar, "completion");
        return new C16881a(this.f47415h, dVar);
    }

    /* renamed from: k */
    public final Object m16806k(Object obj, Object obj2) {
        d dVar = (d) obj2;
        l.e(dVar, "completion");
        return new C16881a(this.f47415h, dVar).m16805s(s.a);
    }

    /* JADX WARN: Code restructure failed: missing block: B:56:0x02fe, code lost:
        if (r19 != null) goto L60;
     */
    /* renamed from: s */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object m16805s(java.lang.Object r16) {
        /*
            Method dump skipped, instructions count: 797
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p1011l.p1020g.C16881a.m16805s(java.lang.Object):java.lang.Object");
    }
}
