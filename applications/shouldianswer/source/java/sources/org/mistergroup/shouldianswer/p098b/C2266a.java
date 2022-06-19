package org.mistergroup.shouldianswer.p098b;

import android.graphics.BitmapFactory;
import android.media.RingtoneManager;
import android.os.Handler;
import androidx.core.app.C0445h;
import java.util.Date;
import kotlin.C1771k;
import kotlin.C1775o;
import kotlin.p075c.AbstractC1641c;
import kotlin.p075c.p076a.C1622b;
import kotlin.p075c.p077b.p078a.AbstractC1634f;
import kotlin.p075c.p077b.p078a.AbstractC1640k;
import kotlin.p081e.p082a.AbstractC1674m;
import kotlin.p081e.p083b.C1691e;
import kotlin.p081e.p083b.C1694h;
import kotlin.p081e.p083b.C1699m;
import kotlin.p087i.C1747g;
import kotlinx.coroutines.AbstractC1786ad;
import kotlinx.coroutines.C1843bd;
import kotlinx.coroutines.C1892g;
import org.mistergroup.shouldianswer.MyApp;
import org.mistergroup.shouldianswer.model.C2398ai;
import org.mistergroup.shouldianswer.model.C2450r;
import org.mistergroup.shouldianswer.model.NumberInfo;
import org.mistergroup.shouldianswer.p101ui.number_detail.NumberDetailFragment;
import org.mistergroup.shouldianswer.utils.C3074a;
import org.mistergroup.shouldianswer.utils.C3084c;
import org.mistergroup.shouldianswer.utils.C3104j;
import org.mistergroup.shouldianswer.utils.C3113m;
import org.mistergroup.shouldianswer.utils.C3133w;
import org.mistergroup.shouldianswer.utils.C3135y;
/* renamed from: org.mistergroup.shouldianswer.b.a */
/* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/b/a.class */
public final class C2266a {

    /* renamed from: a */
    public static final C2267a f6340a = new C2267a(null);

    /* renamed from: b */
    private static String f6341b;

    /* renamed from: c */
    private static long f6342c;

    /* renamed from: org.mistergroup.shouldianswer.b.a$a */
    /* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/b/a$a.class */
    public static final class C2267a {
        private C2267a() {
        }

        public /* synthetic */ C2267a(C1691e c1691e) {
            this();
        }

        /* renamed from: a */
        public final void m1712a(String str) {
            C2266a.f6341b = str;
        }
    }

    @AbstractC1634f(m3162b = "BlockNotification.kt", m3161c = {44}, m3160d = "invokeSuspend", m3159e = "org.mistergroup.shouldianswer.notifications.BlockNotification$show$1")
    /* renamed from: org.mistergroup.shouldianswer.b.a$b */
    /* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/b/a$b.class */
    public static final class C2268b extends AbstractC1640k implements AbstractC1674m<AbstractC1786ad, AbstractC1641c<? super C1775o>, Object> {

        /* renamed from: a */
        Object f6343a;

        /* renamed from: b */
        int f6344b;

        /* renamed from: c */
        final /* synthetic */ NumberInfo f6345c;

        /* renamed from: d */
        final /* synthetic */ long f6346d;

        /* renamed from: e */
        private AbstractC1786ad f6347e;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C2268b(NumberInfo numberInfo, long j, AbstractC1641c abstractC1641c) {
            super(2, abstractC1641c);
            this.f6345c = numberInfo;
            this.f6346d = j;
        }

        @Override // kotlin.p081e.p082a.AbstractC1674m
        /* renamed from: a */
        public final Object mo44a(AbstractC1786ad abstractC1786ad, AbstractC1641c<? super C1775o> abstractC1641c) {
            return ((C2268b) mo43a((Object) abstractC1786ad, (AbstractC1641c<?>) abstractC1641c)).mo42b(C1775o.f4450a);
        }

        @Override // kotlin.p075c.p077b.p078a.AbstractC1629a
        /* renamed from: a */
        public final AbstractC1641c<C1775o> mo43a(Object obj, AbstractC1641c<?> abstractC1641c) {
            C1694h.m3117b(abstractC1641c, "completion");
            C2268b c2268b = new C2268b(this.f6345c, this.f6346d, abstractC1641c);
            c2268b.f6347e = (AbstractC1786ad) obj;
            return c2268b;
        }

        @Override // kotlin.p075c.p077b.p078a.AbstractC1629a
        /* renamed from: b */
        public final Object mo42b(Object obj) {
            Object a = C1622b.m3174a();
            int i = this.f6344b;
            if (i == 0) {
                C1771k.m2979a(obj);
                AbstractC1786ad abstractC1786ad = this.f6347e;
                C2450r c2450r = C2450r.f7170a;
                NumberInfo numberInfo = this.f6345c;
                long j = this.f6346d;
                this.f6343a = abstractC1786ad;
                this.f6344b = 1;
                if (c2450r.m986a(numberInfo, j, this) == a) {
                    return a;
                }
            } else if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            } else {
                AbstractC1786ad abstractC1786ad2 = (AbstractC1786ad) this.f6343a;
                C1771k.m2979a(obj);
            }
            return C1775o.f4450a;
        }
    }

    @AbstractC1634f(m3162b = "BlockNotification.kt", m3161c = {50, 52, 58, 64}, m3160d = "invokeSuspend", m3159e = "org.mistergroup.shouldianswer.notifications.BlockNotification$show$2")
    /* renamed from: org.mistergroup.shouldianswer.b.a$c */
    /* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/b/a$c.class */
    public static final class C2269c extends AbstractC1640k implements AbstractC1674m<AbstractC1786ad, AbstractC1641c<? super C1775o>, Object> {

        /* renamed from: a */
        Object f6348a;

        /* renamed from: b */
        Object f6349b;

        /* renamed from: c */
        Object f6350c;

        /* renamed from: d */
        Object f6351d;

        /* renamed from: e */
        int f6352e;

        /* renamed from: f */
        int f6353f;

        /* renamed from: g */
        boolean f6354g;

        /* renamed from: h */
        int f6355h;

        /* renamed from: i */
        final /* synthetic */ NumberInfo f6356i;

        /* renamed from: j */
        final /* synthetic */ MyApp f6357j;

        /* renamed from: k */
        final /* synthetic */ String f6358k;

        /* renamed from: l */
        private AbstractC1786ad f6359l;

        @AbstractC1634f(m3162b = "BlockNotification.kt", m3161c = {}, m3160d = "invokeSuspend", m3159e = "org.mistergroup.shouldianswer.notifications.BlockNotification$show$2$1")
        /* renamed from: org.mistergroup.shouldianswer.b.a$c$1 */
        /* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/b/a$c$1.class */
        public static final class C22701 extends AbstractC1640k implements AbstractC1674m<AbstractC1786ad, AbstractC1641c<? super C1775o>, Object> {

            /* renamed from: a */
            int f6360a;

            /* renamed from: c */
            final /* synthetic */ C1699m.C1702c f6362c;

            /* renamed from: d */
            final /* synthetic */ String f6363d;

            /* renamed from: e */
            final /* synthetic */ String f6364e;

            /* renamed from: f */
            final /* synthetic */ int f6365f;

            /* renamed from: g */
            final /* synthetic */ int f6366g;

            /* renamed from: h */
            private AbstractC1786ad f6367h;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            C22701(C1699m.C1702c c1702c, String str, String str2, int i, int i2, AbstractC1641c abstractC1641c) {
                super(2, abstractC1641c);
                C2269c.this = r5;
                this.f6362c = c1702c;
                this.f6363d = str;
                this.f6364e = str2;
                this.f6365f = i;
                this.f6366g = i2;
            }

            @Override // kotlin.p081e.p082a.AbstractC1674m
            /* renamed from: a */
            public final Object mo44a(AbstractC1786ad abstractC1786ad, AbstractC1641c<? super C1775o> abstractC1641c) {
                return ((C22701) mo43a((Object) abstractC1786ad, (AbstractC1641c<?>) abstractC1641c)).mo42b(C1775o.f4450a);
            }

            @Override // kotlin.p075c.p077b.p078a.AbstractC1629a
            /* renamed from: a */
            public final AbstractC1641c<C1775o> mo43a(Object obj, AbstractC1641c<?> abstractC1641c) {
                C1694h.m3117b(abstractC1641c, "completion");
                C22701 c22701 = new C22701(this.f6362c, this.f6363d, this.f6364e, this.f6365f, this.f6366g, abstractC1641c);
                c22701.f6367h = (AbstractC1786ad) obj;
                return c22701;
            }

            /* JADX WARN: Type inference failed for: r1v4, types: [T, java.lang.String] */
            @Override // kotlin.p075c.p077b.p078a.AbstractC1629a
            /* renamed from: b */
            public final Object mo42b(Object obj) {
                C1622b.m3174a();
                if (this.f6360a == 0) {
                    C1771k.m2979a(obj);
                    AbstractC1786ad abstractC1786ad = this.f6367h;
                    C1699m.C1702c c1702c = this.f6362c;
                    c1702c.f4391a = C1747g.m3037a((String) c1702c.f4391a, "%s", this.f6363d, false, 4, (Object) null);
                    String str = this.f6363d;
                    String str2 = str;
                    if (!(this.f6364e.length() == 0)) {
                        str2 = str + " - " + this.f6364e;
                    }
                    C0445h.C0450d m6598f = new C0445h.C0450d(C2269c.this.f6357j, C3113m.f9165a.m136a()).m6633a(this.f6365f).m6626a(BitmapFactory.decodeResource(C2269c.this.f6357j.getResources(), this.f6366g)).m6620a((CharSequence) str2).m6611b((CharSequence) ((String) this.f6362c.f4391a)).m6604d(1).m6608c(-1).m6602d(true).m6598f(1);
                    m6598f.m6625a(RingtoneManager.getDefaultUri(2));
                    C0445h.C0449c c0449c = new C0445h.C0449c();
                    c0449c.m6635a((String) this.f6362c.f4391a);
                    m6598f.m6621a(c0449c);
                    m6598f.m6628a(NumberDetailFragment.f8028b.m555a(C2269c.this.f6357j, C2269c.this.f6356i));
                    C3135y.f9272b.m21c().notify(780517129, m6598f.m6616b());
                    return C1775o.f4450a;
                }
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C2269c(NumberInfo numberInfo, MyApp myApp, String str, AbstractC1641c abstractC1641c) {
            super(2, abstractC1641c);
            this.f6356i = numberInfo;
            this.f6357j = myApp;
            this.f6358k = str;
        }

        @Override // kotlin.p081e.p082a.AbstractC1674m
        /* renamed from: a */
        public final Object mo44a(AbstractC1786ad abstractC1786ad, AbstractC1641c<? super C1775o> abstractC1641c) {
            return ((C2269c) mo43a((Object) abstractC1786ad, (AbstractC1641c<?>) abstractC1641c)).mo42b(C1775o.f4450a);
        }

        @Override // kotlin.p075c.p077b.p078a.AbstractC1629a
        /* renamed from: a */
        public final AbstractC1641c<C1775o> mo43a(Object obj, AbstractC1641c<?> abstractC1641c) {
            C1694h.m3117b(abstractC1641c, "completion");
            C2269c c2269c = new C2269c(this.f6356i, this.f6357j, this.f6358k, abstractC1641c);
            c2269c.f6359l = (AbstractC1786ad) obj;
            return c2269c;
        }

        /* JADX WARN: Removed duplicated region for block: B:35:0x014e A[Catch: Exception -> 0x00c0, TRY_ENTER, TRY_LEAVE, TryCatch #0 {Exception -> 0x00c0, blocks: (B:13:0x0055, B:17:0x009b, B:20:0x00b9, B:28:0x00f6, B:33:0x0118, B:35:0x014e, B:36:0x015b, B:38:0x0161, B:44:0x01b9, B:55:0x01ec, B:56:0x0208, B:57:0x0224, B:58:0x0240, B:59:0x0259, B:59:0x0259, B:60:0x025c), top: B:68:0x000a }] */
        /* JADX WARN: Removed duplicated region for block: B:36:0x015b A[Catch: Exception -> 0x00c0, TRY_ENTER, TryCatch #0 {Exception -> 0x00c0, blocks: (B:13:0x0055, B:17:0x009b, B:20:0x00b9, B:28:0x00f6, B:33:0x0118, B:35:0x014e, B:36:0x015b, B:38:0x0161, B:44:0x01b9, B:55:0x01ec, B:56:0x0208, B:57:0x0224, B:58:0x0240, B:59:0x0259, B:59:0x0259, B:60:0x025c), top: B:68:0x000a }] */
        /* JADX WARN: Removed duplicated region for block: B:41:0x01a8  */
        /* JADX WARN: Removed duplicated region for block: B:43:0x01aa  */
        /* JADX WARN: Removed duplicated region for block: B:47:0x01d1  */
        /* JADX WARN: Removed duplicated region for block: B:58:0x0240 A[Catch: Exception -> 0x00c0, TRY_ENTER, TryCatch #0 {Exception -> 0x00c0, blocks: (B:13:0x0055, B:17:0x009b, B:20:0x00b9, B:28:0x00f6, B:33:0x0118, B:35:0x014e, B:36:0x015b, B:38:0x0161, B:44:0x01b9, B:55:0x01ec, B:56:0x0208, B:57:0x0224, B:58:0x0240, B:59:0x0259, B:59:0x0259, B:60:0x025c), top: B:68:0x000a }] */
        /* JADX WARN: Removed duplicated region for block: B:63:0x02b7  */
        /* JADX WARN: Type inference failed for: r0v31, types: [T, java.lang.Object, java.lang.String] */
        /* JADX WARN: Type inference failed for: r0v37, types: [T, java.lang.Object, java.lang.String] */
        /* JADX WARN: Type inference failed for: r0v44, types: [T, java.lang.Object, java.lang.String] */
        /* JADX WARN: Type inference failed for: r0v50, types: [T, java.lang.Object, java.lang.String] */
        /* JADX WARN: Type inference failed for: r0v76, types: [T, java.lang.Object, java.lang.String] */
        @Override // kotlin.p075c.p077b.p078a.AbstractC1629a
        /* renamed from: b */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final java.lang.Object mo42b(java.lang.Object r10) {
            /*
                Method dump skipped, instructions count: 711
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: org.mistergroup.shouldianswer.p098b.C2266a.C2269c.mo42b(java.lang.Object):java.lang.Object");
        }
    }

    /* renamed from: a */
    public final void m1713a(NumberInfo numberInfo, long j) {
        C1694h.m3117b(numberInfo, "numberInfo");
        MyApp m1802a = MyApp.f5480c.m1802a();
        C3104j.m157a(C3104j.f9124a, "NOTIFICATION: BlockNotification.show", (String) null, 2, (Object) null);
        C3113m.f9165a.m129h();
        String m1479b = numberInfo.m1479b();
        if (f6341b != null && C3133w.f9268a.m29a(m1479b, f6341b) && new Date().getTime() - f6342c < 4000) {
            C3104j.m157a(C3104j.f9124a, "BlockNotification.show terminate due lastNumber=number", (String) null, 2, (Object) null);
            return;
        }
        f6341b = m1479b;
        f6342c = new Date().getTime();
        C3104j.m157a(C3104j.f9124a, "BlockNotification.show.begin", (String) null, 2, (Object) null);
        C3074a.f8976a.m227c("BlockNotification.Show");
        C1892g.m2677a(C1843bd.f4587a, C3084c.m193a(), null, new C2268b(numberInfo, j, null), 2, null);
        if (!C2398ai.f6930a.m1248r()) {
            return;
        }
        new Handler();
        C1892g.m2677a(C1843bd.f4587a, null, null, new C2269c(numberInfo, m1802a, m1479b, null), 3, null);
        C3104j.m157a(C3104j.f9124a, "BlockNotification.show.end", (String) null, 2, (Object) null);
    }
}
