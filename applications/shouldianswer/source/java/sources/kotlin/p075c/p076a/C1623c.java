package kotlin.p075c.p076a;

import kotlin.C1771k;
import kotlin.C1775o;
import kotlin.TypeCastException;
import kotlin.p075c.AbstractC1641c;
import kotlin.p075c.AbstractC1646f;
import kotlin.p075c.C1652g;
import kotlin.p075c.p077b.p078a.AbstractC1629a;
import kotlin.p075c.p077b.p078a.AbstractC1632d;
import kotlin.p075c.p077b.p078a.AbstractC1639j;
import kotlin.p075c.p077b.p078a.C1636h;
import kotlin.p081e.p082a.AbstractC1674m;
import kotlin.p081e.p083b.C1694h;
import kotlin.p081e.p083b.C1706q;
/* renamed from: kotlin.c.a.c */
/* loaded from: classes-dex2jar.jar:kotlin/c/a/c.class */
public class C1623c {

    /* renamed from: kotlin.c.a.c$a */
    /* loaded from: classes-dex2jar.jar:kotlin/c/a/c$a.class */
    public static final class C1624a extends AbstractC1639j {

        /* renamed from: a */
        final /* synthetic */ AbstractC1641c f4343a;

        /* renamed from: b */
        final /* synthetic */ AbstractC1674m f4344b;

        /* renamed from: c */
        final /* synthetic */ Object f4345c;

        /* renamed from: d */
        private int f4346d;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C1624a(AbstractC1641c abstractC1641c, AbstractC1641c abstractC1641c2, AbstractC1674m abstractC1674m, Object obj) {
            super(abstractC1641c2);
            this.f4343a = abstractC1641c;
            this.f4344b = abstractC1674m;
            this.f4345c = obj;
        }

        @Override // kotlin.p075c.p077b.p078a.AbstractC1629a
        /* renamed from: b */
        protected Object mo42b(Object obj) {
            int i = this.f4346d;
            if (i == 0) {
                this.f4346d = 1;
                C1771k.m2979a(obj);
                C1624a c1624a = this;
                AbstractC1674m abstractC1674m = this.f4344b;
                if (abstractC1674m == null) {
                    throw new TypeCastException("null cannot be cast to non-null type (R, kotlin.coroutines.Continuation<T>) -> kotlin.Any?");
                }
                obj = ((AbstractC1674m) C1706q.m3093b(abstractC1674m, 2)).mo44a(this.f4345c, c1624a);
            } else if (i != 1) {
                throw new IllegalStateException("This coroutine had already completed".toString());
            } else {
                this.f4346d = 2;
                C1771k.m2979a(obj);
            }
            return obj;
        }
    }

    /* renamed from: kotlin.c.a.c$b */
    /* loaded from: classes-dex2jar.jar:kotlin/c/a/c$b.class */
    public static final class C1625b extends AbstractC1632d {

        /* renamed from: a */
        final /* synthetic */ AbstractC1641c f4347a;

        /* renamed from: b */
        final /* synthetic */ AbstractC1646f f4348b;

        /* renamed from: c */
        final /* synthetic */ AbstractC1674m f4349c;

        /* renamed from: d */
        final /* synthetic */ Object f4350d;

        /* renamed from: e */
        private int f4351e;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C1625b(AbstractC1641c abstractC1641c, AbstractC1646f abstractC1646f, AbstractC1641c abstractC1641c2, AbstractC1646f abstractC1646f2, AbstractC1674m abstractC1674m, Object obj) {
            super(abstractC1641c2, abstractC1646f2);
            this.f4347a = abstractC1641c;
            this.f4348b = abstractC1646f;
            this.f4349c = abstractC1674m;
            this.f4350d = obj;
        }

        @Override // kotlin.p075c.p077b.p078a.AbstractC1629a
        /* renamed from: b */
        protected Object mo42b(Object obj) {
            int i = this.f4351e;
            if (i == 0) {
                this.f4351e = 1;
                C1771k.m2979a(obj);
                C1625b c1625b = this;
                AbstractC1674m abstractC1674m = this.f4349c;
                if (abstractC1674m == null) {
                    throw new TypeCastException("null cannot be cast to non-null type (R, kotlin.coroutines.Continuation<T>) -> kotlin.Any?");
                }
                obj = ((AbstractC1674m) C1706q.m3093b(abstractC1674m, 2)).mo44a(this.f4350d, c1625b);
            } else if (i != 1) {
                throw new IllegalStateException("This coroutine had already completed".toString());
            } else {
                this.f4351e = 2;
                C1771k.m2979a(obj);
            }
            return obj;
        }
    }

    /* renamed from: a */
    public static final <T> AbstractC1641c<T> m3176a(AbstractC1641c<? super T> abstractC1641c) {
        C1694h.m3117b(abstractC1641c, "$this$intercepted");
        AbstractC1632d abstractC1632d = (AbstractC1632d) (!(abstractC1641c instanceof AbstractC1632d) ? null : abstractC1641c);
        AbstractC1641c<Object> abstractC1641c2 = abstractC1641c;
        if (abstractC1632d != null) {
            AbstractC1641c<Object> m3164f = abstractC1632d.m3164f();
            abstractC1641c2 = abstractC1641c;
            if (m3164f != null) {
                abstractC1641c2 = m3164f;
            }
        }
        return (AbstractC1641c<T>) abstractC1641c2;
    }

    /* renamed from: a */
    public static final <R, T> AbstractC1641c<C1775o> m3175a(AbstractC1674m<? super R, ? super AbstractC1641c<? super T>, ? extends Object> abstractC1674m, R r, AbstractC1641c<? super T> abstractC1641c) {
        C1624a c1624a;
        C1694h.m3117b(abstractC1674m, "$this$createCoroutineUnintercepted");
        C1694h.m3117b(abstractC1641c, "completion");
        AbstractC1641c<?> m3154a = C1636h.m3154a(abstractC1641c);
        if (abstractC1674m instanceof AbstractC1629a) {
            c1624a = ((AbstractC1629a) abstractC1674m).mo43a(r, m3154a);
        } else {
            AbstractC1646f mo2555a = m3154a.mo2555a();
            if (mo2555a == C1652g.f4369a) {
                if (m3154a == null) {
                    throw new TypeCastException("null cannot be cast to non-null type kotlin.coroutines.Continuation<kotlin.Any?>");
                }
                c1624a = new C1624a(m3154a, m3154a, abstractC1674m, r);
            } else if (m3154a == null) {
                throw new TypeCastException("null cannot be cast to non-null type kotlin.coroutines.Continuation<kotlin.Any?>");
            } else {
                c1624a = new C1625b(m3154a, mo2555a, m3154a, mo2555a, abstractC1674m, r);
            }
        }
        return c1624a;
    }
}
