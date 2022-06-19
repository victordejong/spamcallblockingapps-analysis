package com.truecaller.insights.p168ui.important.presentation;

import com.huawei.hms.opendevice.AbstractC2405c;
import java.util.concurrent.atomic.AtomicBoolean;
import javax.inject.Named;
import kotlin.Metadata;
import p1727n3.p1868v.AbstractC27013m0;
import p1727n3.p1868v.AbstractC27028u;
import p193e.p1425c.p1426a.p1427a.p1429c.C22021b;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p437c.p438a.p446c.p451h.AbstractC8853k;
import p193e.p194a.p437c.p531c0.AbstractC10028o;
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
@Metadata(bv = {1, 0, 3}, d1 = {"��8\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0006\u0018��2\u00020\u0001B\u0019\u0012\b\b\u0001\u0010\t\u001a\u00020\u0006\u0012\u0006\u0010\u0011\u001a\u00020\u000e¢\u0006\u0004\b\u001a\u0010\u001bJ\u000f\u0010\u0003\u001a\u00020\u0002H\u0007¢\u0006\u0004\b\u0003\u0010\u0004J\u000f\u0010\u0005\u001a\u00020\u0002H\u0007¢\u0006\u0004\b\u0005\u0010\u0004R\u0016\u0010\t\u001a\u00020\u00068\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0007\u0010\bR\u0018\u0010\r\u001a\u0004\u0018\u00010\n8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u000b\u0010\fR\u0016\u0010\u0011\u001a\u00020\u000e8\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u000f\u0010\u0010R\u0016\u0010\u0015\u001a\u00020\u00128\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0013\u0010\u0014R\u0016\u0010\u0019\u001a\u00020\u00168\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0017\u0010\u0018¨\u0006\u001c"}, d2 = {"Lcom/truecaller/insights/ui/important/presentation/SmartSmsBannerLifeCyclePresenterImpl;", "Le/a/c/a/c/h/k;", "Ls1/s;", "onResume", "()V", "onPause", "Ls1/w/f;", "d", "Ls1/w/f;", "ioContext", "Lq3/a/p1;", AbstractC2405c.f7629a, "Lq3/a/p1;", "subscriber", "Le/a/c/c0/o;", "e", "Le/a/c/c0/o;", "insightsConfig", "Ljava/util/concurrent/atomic/AtomicBoolean;", C22021b.f61237c, "Ljava/util/concurrent/atomic/AtomicBoolean;", "alreadyCounted", "Lq3/a/i0;", "a", "Lq3/a/i0;", "coroutineScope", "<init>", "(Ls1/w/f;Le/a/c/c0/o;)V", "insights-ui_release"}, k = 1, mv = {1, 4, 1})
/* renamed from: com.truecaller.insights.ui.important.presentation.SmartSmsBannerLifeCyclePresenterImpl */
/* loaded from: classes10-dex2jar.jar:com/truecaller/insights/ui/important/presentation/SmartSmsBannerLifeCyclePresenterImpl.class */
public final class SmartSmsBannerLifeCyclePresenterImpl implements AbstractC8853k {

    /* renamed from: a */
    public final i0 f12796a;

    /* renamed from: b */
    public final AtomicBoolean f12797b = new AtomicBoolean(false);

    /* renamed from: c */
    public p1 f12798c;

    /* renamed from: d */
    public final f f12799d;

    /* renamed from: e */
    public final AbstractC10028o f12800e;

    @e(c = "com.truecaller.insights.ui.important.presentation.SmartSmsBannerLifeCyclePresenterImpl$onPause$1", f = "SmartSmsBannerLifeCyclePresenter.kt", l = {45}, m = "invokeSuspend")
    /* renamed from: com.truecaller.insights.ui.important.presentation.SmartSmsBannerLifeCyclePresenterImpl$a */
    /* loaded from: classes10-dex2jar.jar:com/truecaller/insights/ui/important/presentation/SmartSmsBannerLifeCyclePresenterImpl$a.class */
    public static final class C4095a extends i implements p<i0, d<? super s>, Object> {

        /* renamed from: e */
        public int f12801e;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C4095a(d dVar) {
            super(2, dVar);
            SmartSmsBannerLifeCyclePresenterImpl.this = r5;
        }

        /* renamed from: i */
        public final d<s> m35191i(Object obj, d<?> dVar) {
            l.e(dVar, "completion");
            return new C4095a(dVar);
        }

        /* renamed from: k */
        public final Object m35190k(Object obj, Object obj2) {
            d dVar = (d) obj2;
            l.e(dVar, "completion");
            return new C4095a(dVar).m35189s(s.a);
        }

        /* renamed from: s */
        public final Object m35189s(Object obj) {
            a aVar = a.a;
            int i = this.f12801e;
            if (i == 0) {
                C25225a.m3932a3(obj);
                p1 p1Var = SmartSmsBannerLifeCyclePresenterImpl.this.f12798c;
                if (p1Var != null) {
                    this.f12801e = 1;
                    if (s1.a.a.a.v0.f.d.V(p1Var, this) == aVar) {
                        return aVar;
                    }
                }
            } else if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            } else {
                C25225a.m3932a3(obj);
            }
            return s.a;
        }
    }

    @e(c = "com.truecaller.insights.ui.important.presentation.SmartSmsBannerLifeCyclePresenterImpl$onResume$1", f = "SmartSmsBannerLifeCyclePresenter.kt", l = {35}, m = "invokeSuspend")
    /* renamed from: com.truecaller.insights.ui.important.presentation.SmartSmsBannerLifeCyclePresenterImpl$b */
    /* loaded from: classes10-dex2jar.jar:com/truecaller/insights/ui/important/presentation/SmartSmsBannerLifeCyclePresenterImpl$b.class */
    public static final class C4096b extends i implements p<i0, d<? super s>, Object> {

        /* renamed from: e */
        public int f12803e;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C4096b(d dVar) {
            super(2, dVar);
            SmartSmsBannerLifeCyclePresenterImpl.this = r5;
        }

        /* renamed from: i */
        public final d<s> m35188i(Object obj, d<?> dVar) {
            l.e(dVar, "completion");
            return new C4096b(dVar);
        }

        /* renamed from: k */
        public final Object m35187k(Object obj, Object obj2) {
            d dVar = (d) obj2;
            l.e(dVar, "completion");
            return new C4096b(dVar).m35186s(s.a);
        }

        /* renamed from: s */
        public final Object m35186s(Object obj) {
            s sVar = s.a;
            a aVar = a.a;
            int i = this.f12803e;
            if (i == 0) {
                C25225a.m3932a3(obj);
                this.f12803e = 1;
                if (s1.a.a.a.v0.f.d.D0(3000L, this) == aVar) {
                    return aVar;
                }
            } else if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            } else {
                C25225a.m3932a3(obj);
            }
            if (SmartSmsBannerLifeCyclePresenterImpl.this.f12797b.get()) {
                return sVar;
            }
            SmartSmsBannerLifeCyclePresenterImpl.this.f12800e.mo26848d0();
            SmartSmsBannerLifeCyclePresenterImpl.this.f12797b.set(true);
            return sVar;
        }
    }

    public SmartSmsBannerLifeCyclePresenterImpl(@Named("IO") f fVar, AbstractC10028o abstractC10028o) {
        l.e(fVar, "ioContext");
        l.e(abstractC10028o, "insightsConfig");
        this.f12799d = fVar;
        this.f12800e = abstractC10028o;
        this.f12796a = s1.a.a.a.v0.f.d.h(fVar.plus(s1.a.a.a.v0.f.d.n((p1) null, 1)));
    }

    @AbstractC27013m0(AbstractC27028u.EnumC27029a.ON_PAUSE)
    public final void onPause() {
        s1.a.a.a.v0.f.d.w2(this.f12796a, (f) null, (j0) null, new C4095a(null), 3, (Object) null);
    }

    @AbstractC27013m0(AbstractC27028u.EnumC27029a.ON_RESUME)
    public final void onResume() {
        this.f12798c = s1.a.a.a.v0.f.d.w2(this.f12796a, (f) null, (j0) null, new C4096b(null), 3, (Object) null);
    }
}
