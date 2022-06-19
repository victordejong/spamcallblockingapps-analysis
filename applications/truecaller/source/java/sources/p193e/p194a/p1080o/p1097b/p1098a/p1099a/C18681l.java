package p193e.p194a.p1080o.p1097b.p1098a.p1099a;

import javax.inject.Inject;
import javax.inject.Named;
import p193e.p194a.p1080o.p1097b.AbstractC18700b;
import p193e.p194a.p1080o.p1097b.AbstractC18745n0;
import p193e.p194a.p1080o.p1103p.p1108e.p1109g.AbstractC18882c;
import p193e.p194a.p1270u2.p1271a.AbstractC20574a;
import q3.a.i0;
import q3.a.j0;
import q3.a.p1;
import s1.s;
import s1.w.d;
import s1.w.f;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.p;
import s1.z.c.l;
/* renamed from: e.a.o.b.a.a.l */
/* loaded from: classes8-dex2jar.jar:e/a/o/b/a/a/l.class */
public final class C18681l extends AbstractC20574a<AbstractC18677h> implements AbstractC18676g {

    /* renamed from: d */
    public final f f52521d;

    /* renamed from: e */
    public final AbstractC18882c f52522e;

    /* renamed from: f */
    public final AbstractC18745n0 f52523f;

    /* renamed from: g */
    public final AbstractC18700b f52524g;

    @e(c = "com.truecaller.contextcall.utils.view.ondemandreasonpicker.OnDemandCallReasonPickerViewPresenter$fetchPredefinedReasons$1", f = "OnDemandCallReasonPickerViewPresenter.kt", l = {106}, m = "invokeSuspend")
    /* renamed from: e.a.o.b.a.a.l$a */
    /* loaded from: classes8-dex2jar.jar:e/a/o/b/a/a/l$a.class */
    public static final class C18682a extends i implements p<i0, d<? super s>, Object> {

        /* renamed from: e */
        public Object f52525e;

        /* renamed from: f */
        public int f52526f;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C18682a(d dVar) {
            super(2, dVar);
            C18681l.this = r5;
        }

        /* renamed from: i */
        public final d<s> m14636i(Object obj, d<?> dVar) {
            l.e(dVar, "completion");
            return new C18682a(dVar);
        }

        /* renamed from: k */
        public final Object m14635k(Object obj, Object obj2) {
            d dVar = (d) obj2;
            l.e(dVar, "completion");
            return new C18682a(dVar).m14634s(s.a);
        }

        /* JADX WARN: Code restructure failed: missing block: B:23:0x00bf, code lost:
            if (r0.f52777d == com.truecaller.contextcall.p159db.reason.predefinedreasons.PredefinedCallReasonType.Predefined) goto L38;
         */
        /* JADX WARN: Code restructure failed: missing block: B:33:0x0102, code lost:
            if (r0.f52777d == com.truecaller.contextcall.p159db.reason.predefinedreasons.PredefinedCallReasonType.MissedCall) goto L38;
         */
        /* JADX WARN: Code restructure failed: missing block: B:37:0x011c, code lost:
            if (r0.f52777d == com.truecaller.contextcall.p159db.reason.predefinedreasons.PredefinedCallReasonType.MidCall) goto L38;
         */
        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Removed duplicated region for block: B:57:0x012d A[SYNTHETIC] */
        /* JADX WARN: Removed duplicated region for block: B:61:0x008a A[SYNTHETIC] */
        /* JADX WARN: Type inference failed for: r0v35, types: [e.a.o.b.a.a.e$a] */
        /* renamed from: s */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final java.lang.Object m14634s(java.lang.Object r6) {
            /*
                Method dump skipped, instructions count: 448
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p1080o.p1097b.p1098a.p1099a.C18681l.C18682a.m14634s(java.lang.Object):java.lang.Object");
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    @Inject
    public C18681l(@Named("UI") f fVar, AbstractC18882c abstractC18882c, AbstractC18745n0 abstractC18745n0, AbstractC18700b abstractC18700b) {
        super(fVar);
        l.e(fVar, "uiContext");
        l.e(abstractC18882c, "PredefinedCallReasonRepository");
        l.e(abstractC18745n0, "sendMidCallReasonManager");
        l.e(abstractC18700b, "callContextMessageFactory");
        this.f52521d = fVar;
        this.f52522e = abstractC18882c;
        this.f52523f = abstractC18745n0;
        this.f52524g = abstractC18700b;
    }

    /* renamed from: Ij */
    public final p1 m14637Ij() {
        return s1.a.a.a.v0.f.d.w2(this, (f) null, (j0) null, new C18682a(null), 3, (Object) null);
    }
}
