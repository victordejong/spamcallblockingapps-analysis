package p193e.p194a.p195a.p224d;

import android.os.CancellationSignal;
import com.truecaller.messaging.newconversation.NewConversationPresenter;
import java.util.concurrent.CancellationException;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p195a.p231g.p232j0.AbstractC6127a0;
import q3.a.i0;
import q3.a.j0;
import q3.a.p1;
import s1.s;
import s1.w.d;
import s1.w.f;
import s1.w.j.a;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.p;
import s1.z.c.l;
@e(c = "com.truecaller.messaging.newconversation.NewConversationPresenter$loadCursor$1", f = "NewConversationPresenter.kt", l = {468}, m = "invokeSuspend")
/* renamed from: e.a.a.d.x */
/* loaded from: classes7-dex2jar.jar:e/a/a/d/x.class */
public final class C5940x extends i implements p<i0, d<? super s>, Object> {

    /* renamed from: e */
    public int f19830e;

    /* renamed from: f */
    public final /* synthetic */ NewConversationPresenter f19831f;

    /* renamed from: g */
    public final /* synthetic */ String f19832g;

    /* renamed from: h */
    public final /* synthetic */ CancellationSignal f19833h;

    @e(c = "com.truecaller.messaging.newconversation.NewConversationPresenter$loadCursor$1$cursor$1", f = "NewConversationPresenter.kt", l = {}, m = "invokeSuspend")
    /* renamed from: e.a.a.d.x$a */
    /* loaded from: classes7-dex2jar.jar:e/a/a/d/x$a.class */
    public static final class C5941a extends i implements p<i0, d<? super AbstractC6127a0>, Object> {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C5941a(d dVar) {
            super(2, dVar);
            C5940x.this = r5;
        }

        /* renamed from: i */
        public final d<s> m32131i(Object obj, d<?> dVar) {
            l.e(dVar, "completion");
            return new C5941a(dVar);
        }

        /* renamed from: k */
        public final Object m32130k(Object obj, Object obj2) {
            d dVar = (d) obj2;
            l.e(dVar, "completion");
            return new C5941a(dVar).m32129s(s.a);
        }

        /* JADX WARN: Code restructure failed: missing block: B:49:0x015a, code lost:
            if ((s1.f0.r.n("tenor/gif", r0, true) || s1.f0.r.n(com.tenor.android.core.constant.ContentFormat.IMAGE_GIF, r0, true)) != false) goto L50;
         */
        /* JADX WARN: Code restructure failed: missing block: B:51:0x016c, code lost:
            if (s1.f0.r.w(r0, "video/", true) != false) goto L52;
         */
        /* JADX WARN: Code restructure failed: missing block: B:52:0x016f, code lost:
            r21 = true;
         */
        /* JADX WARN: Removed duplicated region for block: B:28:0x00c2  */
        /* JADX WARN: Removed duplicated region for block: B:63:0x0197  */
        /* JADX WARN: Removed duplicated region for block: B:67:0x01a9  */
        /* renamed from: s */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final java.lang.Object m32129s(java.lang.Object r7) {
            /*
                Method dump skipped, instructions count: 484
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p195a.p224d.C5940x.C5941a.m32129s(java.lang.Object):java.lang.Object");
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C5940x(NewConversationPresenter newConversationPresenter, String str, CancellationSignal cancellationSignal, d dVar) {
        super(2, dVar);
        this.f19831f = newConversationPresenter;
        this.f19832g = str;
        this.f19833h = cancellationSignal;
    }

    /* renamed from: i */
    public final d<s> m32134i(Object obj, d<?> dVar) {
        l.e(dVar, "completion");
        return new C5940x(this.f19831f, this.f19832g, this.f19833h, dVar);
    }

    /* renamed from: k */
    public final Object m32133k(Object obj, Object obj2) {
        d dVar = (d) obj2;
        l.e(dVar, "completion");
        return new C5940x(this.f19831f, this.f19832g, this.f19833h, dVar).m32132s(s.a);
    }

    /* renamed from: s */
    public final Object m32132s(Object obj) {
        a aVar = a.a;
        int i = this.f19830e;
        if (i == 0) {
            C25225a.m3932a3(obj);
            f fVar = this.f19831f.f13601l;
            C5941a c5941a = new C5941a(null);
            this.f19830e = 1;
            Object a4 = s1.a.a.a.v0.f.d.a4(fVar, c5941a, this);
            obj = a4;
            if (a4 == aVar) {
                return aVar;
            }
        } else if (i != 1) {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        } else {
            C25225a.m3932a3(obj);
        }
        AbstractC6127a0 abstractC6127a0 = (AbstractC6127a0) obj;
        if (!this.f19833h.isCanceled()) {
            NewConversationPresenter newConversationPresenter = this.f19831f;
            newConversationPresenter.f13595f = null;
            newConversationPresenter.f13613x.mo32206E(abstractC6127a0);
            if ((abstractC6127a0 == null || abstractC6127a0.getCount() == 0) && newConversationPresenter.m34942Tj(newConversationPresenter.f13594e)) {
                newConversationPresenter.f13613x.mo32202J(newConversationPresenter.f13594e);
                if (newConversationPresenter.f13605p.mo14245a()) {
                    String str = newConversationPresenter.f13594e;
                    p1 p1Var = newConversationPresenter.f13596g;
                    if (p1Var != null) {
                        s1.a.a.a.v0.f.d.T(p1Var, (CancellationException) null, 1, (Object) null);
                    }
                    newConversationPresenter.f13596g = s1.a.a.a.v0.f.d.w2(newConversationPresenter, (f) null, (j0) null, new C5901a0(newConversationPresenter, str, null), 3, (Object) null);
                    newConversationPresenter.f13613x.mo32200M(true);
                }
            }
            AbstractC5938v abstractC5938v = (AbstractC5938v) newConversationPresenter.f57683a;
            if (abstractC5938v != null) {
                abstractC5938v.mo32146l2();
            }
        } else if (abstractC6127a0 != null) {
            abstractC6127a0.close();
        }
        return s.a;
    }
}
