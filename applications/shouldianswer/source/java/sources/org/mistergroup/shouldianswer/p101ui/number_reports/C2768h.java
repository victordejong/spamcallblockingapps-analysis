package org.mistergroup.shouldianswer.p101ui.number_reports;

import android.content.Context;
import androidx.lifecycle.AbstractC0919u;
import java.util.ArrayList;
import java.util.List;
import kotlin.C1771k;
import kotlin.C1775o;
import kotlin.p075c.AbstractC1641c;
import kotlin.p075c.p076a.C1622b;
import kotlin.p075c.p077b.p078a.AbstractC1634f;
import kotlin.p075c.p077b.p078a.AbstractC1640k;
import kotlin.p081e.p082a.AbstractC1663b;
import kotlin.p081e.p082a.AbstractC1674m;
import kotlin.p081e.p083b.C1694h;
import kotlinx.coroutines.AbstractC1786ad;
import kotlinx.coroutines.C1843bd;
import kotlinx.coroutines.C1892g;
import org.mistergroup.shouldianswer.MyApp;
import org.mistergroup.shouldianswer.model.NumberInfo;
import org.mistergroup.shouldianswer.utils.C3084c;
/* renamed from: org.mistergroup.shouldianswer.ui.number_reports.h */
/* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/ui/number_reports/h.class */
public final class C2768h extends AbstractC0919u {

    /* renamed from: a */
    private AbstractC1663b<? super List<C2758a>, C1775o> f8241a;

    /* renamed from: b */
    private AbstractC1663b<? super Exception, C1775o> f8242b;

    /* renamed from: c */
    private NumberInfo f8243c;

    /* renamed from: d */
    private List<C2758a> f8244d;

    /* renamed from: e */
    private int f8245e;

    @AbstractC1634f(m3162b = "NumberReviewsViewModel.kt", m3161c = {48, 81, 85}, m3160d = "invokeSuspend", m3159e = "org.mistergroup.shouldianswer.ui.number_reports.NumberReviewsViewModel$init$1")
    /* renamed from: org.mistergroup.shouldianswer.ui.number_reports.h$a */
    /* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/ui/number_reports/h$a.class */
    public static final class C2769a extends AbstractC1640k implements AbstractC1674m<AbstractC1786ad, AbstractC1641c<? super C1775o>, Object> {

        /* renamed from: a */
        Object f8246a;

        /* renamed from: b */
        Object f8247b;

        /* renamed from: c */
        Object f8248c;

        /* renamed from: d */
        Object f8249d;

        /* renamed from: e */
        int f8250e;

        /* renamed from: f */
        int f8251f;

        /* renamed from: h */
        final /* synthetic */ NumberInfo f8253h;

        /* renamed from: i */
        final /* synthetic */ Context f8254i;

        /* renamed from: j */
        private AbstractC1786ad f8255j;

        @AbstractC1634f(m3162b = "NumberReviewsViewModel.kt", m3161c = {}, m3160d = "invokeSuspend", m3159e = "org.mistergroup.shouldianswer.ui.number_reports.NumberReviewsViewModel$init$1$1")
        /* renamed from: org.mistergroup.shouldianswer.ui.number_reports.h$a$1 */
        /* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/ui/number_reports/h$a$1.class */
        public static final class C27701 extends AbstractC1640k implements AbstractC1674m<AbstractC1786ad, AbstractC1641c<? super C1775o>, Object> {

            /* renamed from: a */
            int f8256a;

            /* renamed from: c */
            final /* synthetic */ ArrayList f8258c;

            /* renamed from: d */
            private AbstractC1786ad f8259d;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            C27701(ArrayList arrayList, AbstractC1641c abstractC1641c) {
                super(2, abstractC1641c);
                C2769a.this = r5;
                this.f8258c = arrayList;
            }

            @Override // kotlin.p081e.p082a.AbstractC1674m
            /* renamed from: a */
            public final Object mo44a(AbstractC1786ad abstractC1786ad, AbstractC1641c<? super C1775o> abstractC1641c) {
                return ((C27701) mo43a((Object) abstractC1786ad, (AbstractC1641c<?>) abstractC1641c)).mo42b(C1775o.f4450a);
            }

            @Override // kotlin.p075c.p077b.p078a.AbstractC1629a
            /* renamed from: a */
            public final AbstractC1641c<C1775o> mo43a(Object obj, AbstractC1641c<?> abstractC1641c) {
                C1694h.m3117b(abstractC1641c, "completion");
                C27701 c27701 = new C27701(this.f8258c, abstractC1641c);
                c27701.f8259d = (AbstractC1786ad) obj;
                return c27701;
            }

            @Override // kotlin.p075c.p077b.p078a.AbstractC1629a
            /* renamed from: b */
            public final Object mo42b(Object obj) {
                C1622b.m3174a();
                if (this.f8256a == 0) {
                    C1771k.m2979a(obj);
                    AbstractC1786ad abstractC1786ad = this.f8259d;
                    AbstractC1663b abstractC1663b = C2768h.this.f8241a;
                    return abstractC1663b != null ? (C1775o) abstractC1663b.mo138a(this.f8258c) : null;
                }
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
        }

        @AbstractC1634f(m3162b = "NumberReviewsViewModel.kt", m3161c = {}, m3160d = "invokeSuspend", m3159e = "org.mistergroup.shouldianswer.ui.number_reports.NumberReviewsViewModel$init$1$2")
        /* renamed from: org.mistergroup.shouldianswer.ui.number_reports.h$a$2 */
        /* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/ui/number_reports/h$a$2.class */
        public static final class C27712 extends AbstractC1640k implements AbstractC1674m<AbstractC1786ad, AbstractC1641c<? super C1775o>, Object> {

            /* renamed from: a */
            int f8260a;

            /* renamed from: c */
            final /* synthetic */ Exception f8262c;

            /* renamed from: d */
            private AbstractC1786ad f8263d;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            C27712(Exception exc, AbstractC1641c abstractC1641c) {
                super(2, abstractC1641c);
                C2769a.this = r5;
                this.f8262c = exc;
            }

            @Override // kotlin.p081e.p082a.AbstractC1674m
            /* renamed from: a */
            public final Object mo44a(AbstractC1786ad abstractC1786ad, AbstractC1641c<? super C1775o> abstractC1641c) {
                return ((C27712) mo43a((Object) abstractC1786ad, (AbstractC1641c<?>) abstractC1641c)).mo42b(C1775o.f4450a);
            }

            @Override // kotlin.p075c.p077b.p078a.AbstractC1629a
            /* renamed from: a */
            public final AbstractC1641c<C1775o> mo43a(Object obj, AbstractC1641c<?> abstractC1641c) {
                C1694h.m3117b(abstractC1641c, "completion");
                C27712 c27712 = new C27712(this.f8262c, abstractC1641c);
                c27712.f8263d = (AbstractC1786ad) obj;
                return c27712;
            }

            @Override // kotlin.p075c.p077b.p078a.AbstractC1629a
            /* renamed from: b */
            public final Object mo42b(Object obj) {
                C1622b.m3174a();
                if (this.f8260a == 0) {
                    C1771k.m2979a(obj);
                    AbstractC1786ad abstractC1786ad = this.f8263d;
                    AbstractC1663b abstractC1663b = C2768h.this.f8242b;
                    return abstractC1663b != null ? (C1775o) abstractC1663b.mo138a(this.f8262c) : null;
                }
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C2769a(NumberInfo numberInfo, Context context, AbstractC1641c abstractC1641c) {
            super(2, abstractC1641c);
            C2768h.this = r5;
            this.f8253h = numberInfo;
            this.f8254i = context;
        }

        @Override // kotlin.p081e.p082a.AbstractC1674m
        /* renamed from: a */
        public final Object mo44a(AbstractC1786ad abstractC1786ad, AbstractC1641c<? super C1775o> abstractC1641c) {
            return ((C2769a) mo43a((Object) abstractC1786ad, (AbstractC1641c<?>) abstractC1641c)).mo42b(C1775o.f4450a);
        }

        @Override // kotlin.p075c.p077b.p078a.AbstractC1629a
        /* renamed from: a */
        public final AbstractC1641c<C1775o> mo43a(Object obj, AbstractC1641c<?> abstractC1641c) {
            C1694h.m3117b(abstractC1641c, "completion");
            C2769a c2769a = new C2769a(this.f8253h, this.f8254i, abstractC1641c);
            c2769a.f8255j = (AbstractC1786ad) obj;
            return c2769a;
        }

        /* JADX WARN: Can't wrap try/catch for region: R(23:2|(6:4|(4:6|(2:8|(1:10)(2:11|12))(3:13|83|14)|79|80)(4:17|85|18|19)|75|(2:77|78)|79|80)(5:23|87|24|25|(2:27|28))|20|81|29|30|31|(4:32|33|34|(5:36|37|(1:39)|40|41)(1:89))|90|43|(10:45|(1:47)|48|49|(1:51)|52|53|(1:55)|56|57)|58|59|(1:61)|62|63|(1:65)|66|67|68|(2:70|71)|79|80) */
        /* JADX WARN: Code restructure failed: missing block: B:72:0x029e, code lost:
            r10 = e;
         */
        @Override // kotlin.p075c.p077b.p078a.AbstractC1629a
        /* renamed from: b */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final java.lang.Object mo42b(java.lang.Object r7) {
            /*
                Method dump skipped, instructions count: 749
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: org.mistergroup.shouldianswer.p101ui.number_reports.C2768h.C2769a.mo42b(java.lang.Object):java.lang.Object");
        }
    }

    /* renamed from: a */
    public final void m529a(int i) {
        this.f8245e = i;
    }

    /* renamed from: a */
    public final void m528a(AbstractC1663b<? super List<C2758a>, C1775o> abstractC1663b) {
        C1694h.m3117b(abstractC1663b, "callback");
        this.f8241a = abstractC1663b;
    }

    /* renamed from: a */
    public final void m527a(NumberInfo numberInfo, boolean z) {
        NumberInfo numberInfo2;
        C1694h.m3117b(numberInfo, "numberInfo");
        Context applicationContext = MyApp.f5480c.m1802a().getApplicationContext();
        if (this.f8244d != null && (numberInfo2 = this.f8243c) != null) {
            if (numberInfo2 == null) {
                C1694h.m3124a();
            }
            if (C1694h.m3123a((Object) numberInfo2.m1479b(), (Object) numberInfo.m1479b())) {
                AbstractC1663b<? super List<C2758a>, C1775o> abstractC1663b = this.f8241a;
                if (abstractC1663b == null) {
                    return;
                }
                List<C2758a> list = this.f8244d;
                if (list == null) {
                    C1694h.m3124a();
                }
                abstractC1663b.mo138a(list);
                return;
            }
        }
        this.f8243c = numberInfo;
        this.f8244d = null;
        C1892g.m2677a(C1843bd.f4587a, C3084c.m193a(), null, new C2769a(numberInfo, applicationContext, null), 2, null);
    }

    /* renamed from: b */
    public final List<C2758a> m525b() {
        return this.f8244d;
    }

    /* renamed from: b */
    public final void m524b(AbstractC1663b<? super Exception, C1775o> abstractC1663b) {
        C1694h.m3117b(abstractC1663b, "callback");
        this.f8242b = abstractC1663b;
    }

    /* renamed from: c */
    public final int m522c() {
        return this.f8245e;
    }
}
