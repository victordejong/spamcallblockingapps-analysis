package org.mistergroup.shouldianswer.services.incall;

import android.app.Notification;
import android.app.NotificationManager;
import android.app.PendingIntent;
import android.content.Intent;
import android.content.IntentFilter;
import android.graphics.Bitmap;
import android.os.Handler;
import android.os.Looper;
import android.os.SystemClock;
import android.telecom.Call;
import android.widget.RemoteViews;
import androidx.core.app.C0445h;
import java.lang.ref.WeakReference;
import java.util.Collection;
import java.util.Date;
import java.util.HashMap;
import java.util.Timer;
import java.util.TimerTask;
import kotlin.C1771k;
import kotlin.C1775o;
import kotlin.p075c.AbstractC1641c;
import kotlin.p075c.p076a.C1622b;
import kotlin.p075c.p077b.p078a.AbstractC1634f;
import kotlin.p075c.p077b.p078a.AbstractC1640k;
import kotlin.p081e.p082a.AbstractC1663b;
import kotlin.p081e.p082a.AbstractC1674m;
import kotlin.p081e.p083b.C1694h;
import kotlin.p081e.p083b.C1699m;
import kotlinx.coroutines.AbstractC1786ad;
import kotlinx.coroutines.C1843bd;
import kotlinx.coroutines.C1890e;
import kotlinx.coroutines.C1892g;
import org.mistergroup.shouldianswer.MyApp;
import org.mistergroup.shouldianswer.model.C2385ac;
import org.mistergroup.shouldianswer.model.C2398ai;
import org.mistergroup.shouldianswer.model.C2464x;
import org.mistergroup.shouldianswer.model.EnumC2395ag;
import org.mistergroup.shouldianswer.model.EnumC2436k;
import org.mistergroup.shouldianswer.model.NumberInfo;
import org.mistergroup.shouldianswer.p098b.C2273d;
import org.mistergroup.shouldianswer.p101ui.incall.InCallActivity;
import org.mistergroup.shouldianswer.p101ui.number_detail.NumberDetailFragment;
import org.mistergroup.shouldianswer.utils.C3084c;
import org.mistergroup.shouldianswer.utils.C3086e;
import org.mistergroup.shouldianswer.utils.C3104j;
import org.mistergroup.shouldianswer.utils.C3113m;
import org.mistergroup.shouldianswer.utils.C3115o;
import org.mistergroup.shouldianswer.utils.C3117q;
import org.mistergroup.shouldianswer.utils.C3135y;
/* renamed from: org.mistergroup.shouldianswer.services.incall.c */
/* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/services/incall/c.class */
public final class C2488c {

    /* renamed from: f */
    private static boolean f7279f;

    /* renamed from: g */
    private static NumberInfo f7280g;

    /* renamed from: h */
    private static boolean f7281h;

    /* renamed from: i */
    private static AbstractC1663b<? super C2485a, C1775o> f7282i;

    /* renamed from: k */
    private static Timer f7284k;

    /* renamed from: m */
    private static WeakReference<InCallActivity> f7286m;

    /* renamed from: n */
    private static WeakReference<MyInCallService> f7287n;

    /* renamed from: p */
    private static Bitmap f7289p;

    /* renamed from: q */
    private static long f7290q;

    /* renamed from: r */
    private static Bitmap f7291r;

    /* renamed from: s */
    private static EnumC2395ag f7292s;

    /* renamed from: t */
    private static String f7293t;

    /* renamed from: u */
    private static String f7294u;

    /* renamed from: w */
    private static Bitmap f7296w;

    /* renamed from: a */
    public static final C2488c f7274a = new C2488c();

    /* renamed from: b */
    private static final int f7275b = f7275b;

    /* renamed from: b */
    private static final int f7275b = f7275b;

    /* renamed from: c */
    private static final String f7276c = f7276c;

    /* renamed from: c */
    private static final String f7276c = f7276c;

    /* renamed from: d */
    private static final String f7277d = f7277d;

    /* renamed from: d */
    private static final String f7277d = f7277d;

    /* renamed from: e */
    private static final String f7278e = f7278e;

    /* renamed from: e */
    private static final String f7278e = f7278e;

    /* renamed from: l */
    private static boolean f7285l = true;

    /* renamed from: o */
    private static final HashMap<Call, C2485a> f7288o = new HashMap<>();

    /* renamed from: v */
    private static Integer f7295v = 0;

    /* renamed from: j */
    private static final NotificationManager f7283j = C3135y.f9272b.m21c();

    @AbstractC1634f(m3162b = "MyInCallPresenter.kt", m3161c = {338, 339}, m3160d = "invokeSuspend", m3159e = "org.mistergroup.shouldianswer.services.incall.MyInCallPresenter$addCall$1")
    /* renamed from: org.mistergroup.shouldianswer.services.incall.c$a */
    /* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/services/incall/c$a.class */
    public static final class C2489a extends AbstractC1640k implements AbstractC1674m<AbstractC1786ad, AbstractC1641c<? super C1775o>, Object> {

        /* renamed from: a */
        Object f7297a;

        /* renamed from: b */
        Object f7298b;

        /* renamed from: c */
        int f7299c;

        /* renamed from: d */
        final /* synthetic */ NumberInfo f7300d;

        /* renamed from: e */
        final /* synthetic */ long f7301e;

        /* renamed from: f */
        final /* synthetic */ C1699m.C1700a f7302f;

        /* renamed from: g */
        private AbstractC1786ad f7303g;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C2489a(NumberInfo numberInfo, long j, C1699m.C1700a c1700a, AbstractC1641c abstractC1641c) {
            super(2, abstractC1641c);
            this.f7300d = numberInfo;
            this.f7301e = j;
            this.f7302f = c1700a;
        }

        @Override // kotlin.p081e.p082a.AbstractC1674m
        /* renamed from: a */
        public final Object mo44a(AbstractC1786ad abstractC1786ad, AbstractC1641c<? super C1775o> abstractC1641c) {
            return ((C2489a) mo43a((Object) abstractC1786ad, (AbstractC1641c<?>) abstractC1641c)).mo42b(C1775o.f4450a);
        }

        @Override // kotlin.p075c.p077b.p078a.AbstractC1629a
        /* renamed from: a */
        public final AbstractC1641c<C1775o> mo43a(Object obj, AbstractC1641c<?> abstractC1641c) {
            C1694h.m3117b(abstractC1641c, "completion");
            C2489a c2489a = new C2489a(this.f7300d, this.f7301e, this.f7302f, abstractC1641c);
            c2489a.f7303g = (AbstractC1786ad) obj;
            return c2489a;
        }

        @Override // kotlin.p075c.p077b.p078a.AbstractC1629a
        /* renamed from: b */
        public final Object mo42b(Object obj) {
            Object obj2;
            C1699m.C1700a c1700a;
            AbstractC1786ad abstractC1786ad;
            Object a = C1622b.m3174a();
            int i = this.f7299c;
            if (i == 0) {
                C1771k.m2979a(obj);
                abstractC1786ad = this.f7303g;
                C3086e c3086e = C3086e.f9028a;
                NumberInfo numberInfo = this.f7300d;
                long j = this.f7301e;
                this.f7297a = abstractC1786ad;
                this.f7299c = 1;
                if (c3086e.m181b(numberInfo, j, this) == a) {
                    return a;
                }
            } else if (i != 1) {
                if (i != 2) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                c1700a = (C1699m.C1700a) this.f7298b;
                AbstractC1786ad abstractC1786ad2 = (AbstractC1786ad) this.f7297a;
                C1771k.m2979a(obj);
                obj2 = obj;
                c1700a.f4389a = ((Boolean) obj2).booleanValue();
                return C1775o.f4450a;
            } else {
                C1771k.m2979a(obj);
                abstractC1786ad = (AbstractC1786ad) this.f7297a;
            }
            C1699m.C1700a c1700a2 = this.f7302f;
            NumberInfo numberInfo2 = this.f7300d;
            this.f7297a = abstractC1786ad;
            this.f7298b = c1700a2;
            this.f7299c = 2;
            obj2 = numberInfo2.m1460j(this);
            if (obj2 == a) {
                return a;
            }
            c1700a = c1700a2;
            c1700a.f4389a = ((Boolean) obj2).booleanValue();
            return C1775o.f4450a;
        }
    }

    /* renamed from: org.mistergroup.shouldianswer.services.incall.c$b */
    /* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/services/incall/c$b.class */
    public static final class C2490b extends TimerTask {

        /* renamed from: a */
        final /* synthetic */ Handler f7304a;

        /* renamed from: org.mistergroup.shouldianswer.services.incall.c$b$a */
        /* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/services/incall/c$b$a.class */
        static final class RunnableC2491a implements Runnable {

            /* renamed from: a */
            public static final RunnableC2491a f7305a = new RunnableC2491a();

            RunnableC2491a() {
            }

            @Override // java.lang.Runnable
            public final void run() {
                C2488c.f7274a.m885d();
            }
        }

        C2490b(Handler handler) {
            this.f7304a = handler;
        }

        @Override // java.util.TimerTask, java.lang.Runnable
        public void run() {
            this.f7304a.post(RunnableC2491a.f7305a);
        }
    }

    @AbstractC1634f(m3162b = "MyInCallPresenter.kt", m3161c = {401, 405}, m3160d = "invokeSuspend", m3159e = "org.mistergroup.shouldianswer.services.incall.MyInCallPresenter$removeCall$1")
    /* renamed from: org.mistergroup.shouldianswer.services.incall.c$c */
    /* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/services/incall/c$c.class */
    public static final class C2492c extends AbstractC1640k implements AbstractC1674m<AbstractC1786ad, AbstractC1641c<? super C1775o>, Object> {

        /* renamed from: a */
        Object f7306a;

        /* renamed from: b */
        boolean f7307b;

        /* renamed from: c */
        int f7308c;

        /* renamed from: d */
        final /* synthetic */ NumberInfo f7309d;

        /* renamed from: e */
        final /* synthetic */ C2485a f7310e;

        /* renamed from: f */
        private AbstractC1786ad f7311f;

        @AbstractC1634f(m3162b = "MyInCallPresenter.kt", m3161c = {}, m3160d = "invokeSuspend", m3159e = "org.mistergroup.shouldianswer.services.incall.MyInCallPresenter$removeCall$1$1")
        /* renamed from: org.mistergroup.shouldianswer.services.incall.c$c$1 */
        /* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/services/incall/c$c$1.class */
        public static final class C24931 extends AbstractC1640k implements AbstractC1674m<AbstractC1786ad, AbstractC1641c<? super C1775o>, Object> {

            /* renamed from: a */
            int f7312a;

            /* renamed from: c */
            private AbstractC1786ad f7314c;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            C24931(AbstractC1641c abstractC1641c) {
                super(2, abstractC1641c);
                C2492c.this = r5;
            }

            @Override // kotlin.p081e.p082a.AbstractC1674m
            /* renamed from: a */
            public final Object mo44a(AbstractC1786ad abstractC1786ad, AbstractC1641c<? super C1775o> abstractC1641c) {
                return ((C24931) mo43a((Object) abstractC1786ad, (AbstractC1641c<?>) abstractC1641c)).mo42b(C1775o.f4450a);
            }

            @Override // kotlin.p075c.p077b.p078a.AbstractC1629a
            /* renamed from: a */
            public final AbstractC1641c<C1775o> mo43a(Object obj, AbstractC1641c<?> abstractC1641c) {
                C1694h.m3117b(abstractC1641c, "completion");
                C24931 c24931 = new C24931(abstractC1641c);
                c24931.f7314c = (AbstractC1786ad) obj;
                return c24931;
            }

            @Override // kotlin.p075c.p077b.p078a.AbstractC1629a
            /* renamed from: b */
            public final Object mo42b(Object obj) {
                C1622b.m3174a();
                if (this.f7312a == 0) {
                    C1771k.m2979a(obj);
                    AbstractC1786ad abstractC1786ad = this.f7314c;
                    C3104j.m157a(C3104j.f9124a, "MyInCallPresenter.removeCall NumberDetailFragment.start", (String) null, 2, (Object) null);
                    NumberDetailFragment.f8028b.m553b(MyApp.f5480c.m1802a(), C2492c.this.f7309d);
                    return C1775o.f4450a;
                }
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C2492c(NumberInfo numberInfo, C2485a c2485a, AbstractC1641c abstractC1641c) {
            super(2, abstractC1641c);
            this.f7309d = numberInfo;
            this.f7310e = c2485a;
        }

        @Override // kotlin.p081e.p082a.AbstractC1674m
        /* renamed from: a */
        public final Object mo44a(AbstractC1786ad abstractC1786ad, AbstractC1641c<? super C1775o> abstractC1641c) {
            return ((C2492c) mo43a((Object) abstractC1786ad, (AbstractC1641c<?>) abstractC1641c)).mo42b(C1775o.f4450a);
        }

        @Override // kotlin.p075c.p077b.p078a.AbstractC1629a
        /* renamed from: a */
        public final AbstractC1641c<C1775o> mo43a(Object obj, AbstractC1641c<?> abstractC1641c) {
            C1694h.m3117b(abstractC1641c, "completion");
            C2492c c2492c = new C2492c(this.f7309d, this.f7310e, abstractC1641c);
            c2492c.f7311f = (AbstractC1786ad) obj;
            return c2492c;
        }

        @Override // kotlin.p075c.p077b.p078a.AbstractC1629a
        /* renamed from: b */
        public final Object mo42b(Object obj) {
            AbstractC1786ad abstractC1786ad;
            Object a = C1622b.m3174a();
            int i = this.f7308c;
            if (i == 0) {
                C1771k.m2979a(obj);
                abstractC1786ad = this.f7311f;
                NumberInfo numberInfo = this.f7309d;
                this.f7306a = abstractC1786ad;
                this.f7308c = 1;
                Object m1466g = numberInfo.m1466g(this);
                obj = m1466g;
                if (m1466g == a) {
                    return a;
                }
            } else if (i != 1) {
                if (i != 2) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                boolean z = this.f7307b;
                AbstractC1786ad abstractC1786ad2 = (AbstractC1786ad) this.f7306a;
                C1771k.m2979a(obj);
                return C1775o.f4450a;
            } else {
                abstractC1786ad = (AbstractC1786ad) this.f7306a;
                C1771k.m2979a(obj);
            }
            boolean booleanValue = ((Boolean) obj).booleanValue();
            C3104j c3104j = C3104j.f9124a;
            C3104j.m157a(c3104j, "MyInCallPresenter.removeCall wantAlertFinal=" + String.valueOf(booleanValue), (String) null, 2, (Object) null);
            C3104j c3104j2 = C3104j.f9124a;
            C3104j.m157a(c3104j2, "MyInCallPresenter.removeCall showAfterCallNumberInfo=" + String.valueOf(C2398ai.f6930a.m1234y()), (String) null, 2, (Object) null);
            if (booleanValue && C2398ai.f6930a.m1234y() && !this.f7310e.m915c()) {
                this.f7306a = abstractC1786ad;
                this.f7307b = booleanValue;
                this.f7308c = 2;
                if (C1890e.m2686a(C3084c.m192b(), new C24931(null), this) == a) {
                    return a;
                }
            }
            return C1775o.f4450a;
        }
    }

    @AbstractC1634f(m3162b = "MyInCallPresenter.kt", m3161c = {114, 177}, m3160d = "invokeSuspend", m3159e = "org.mistergroup.shouldianswer.services.incall.MyInCallPresenter$updateNotification$1")
    /* renamed from: org.mistergroup.shouldianswer.services.incall.c$d */
    /* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/services/incall/c$d.class */
    public static final class C2494d extends AbstractC1640k implements AbstractC1674m<AbstractC1786ad, AbstractC1641c<? super C1775o>, Object> {

        /* renamed from: a */
        Object f7315a;

        /* renamed from: b */
        Object f7316b;

        /* renamed from: c */
        Object f7317c;

        /* renamed from: d */
        Object f7318d;

        /* renamed from: e */
        Object f7319e;

        /* renamed from: f */
        Object f7320f;

        /* renamed from: g */
        Object f7321g;

        /* renamed from: h */
        Object f7322h;

        /* renamed from: i */
        Object f7323i;

        /* renamed from: j */
        Object f7324j;

        /* renamed from: k */
        Object f7325k;

        /* renamed from: l */
        Object f7326l;

        /* renamed from: m */
        Object f7327m;

        /* renamed from: n */
        Object f7328n;

        /* renamed from: o */
        Object f7329o;

        /* renamed from: p */
        Object f7330p;

        /* renamed from: q */
        Object f7331q;

        /* renamed from: r */
        int f7332r;

        /* renamed from: s */
        int f7333s;

        /* renamed from: t */
        final /* synthetic */ MyApp f7334t;

        /* renamed from: u */
        final /* synthetic */ C2485a f7335u;

        /* renamed from: v */
        private AbstractC1786ad f7336v;

        @AbstractC1634f(m3162b = "MyInCallPresenter.kt", m3161c = {131}, m3160d = "invokeSuspend", m3159e = "org.mistergroup.shouldianswer.services.incall.MyInCallPresenter$updateNotification$1$2")
        /* renamed from: org.mistergroup.shouldianswer.services.incall.c$d$1 */
        /* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/services/incall/c$d$1.class */
        public static final class C24951 extends AbstractC1640k implements AbstractC1674m<AbstractC1786ad, AbstractC1641c<? super C1775o>, Object> {

            /* renamed from: a */
            Object f7337a;

            /* renamed from: b */
            Object f7338b;

            /* renamed from: c */
            int f7339c;

            /* renamed from: d */
            final /* synthetic */ C2385ac f7340d;

            /* renamed from: e */
            private AbstractC1786ad f7341e;

            @AbstractC1634f(m3162b = "MyInCallPresenter.kt", m3161c = {}, m3160d = "invokeSuspend", m3159e = "org.mistergroup.shouldianswer.services.incall.MyInCallPresenter$updateNotification$1$2$1")
            /* renamed from: org.mistergroup.shouldianswer.services.incall.c$d$1$1 */
            /* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/services/incall/c$d$1$1.class */
            public static final class C24961 extends AbstractC1640k implements AbstractC1674m<AbstractC1786ad, AbstractC1641c<? super C1775o>, Object> {

                /* renamed from: a */
                int f7342a;

                /* renamed from: b */
                final /* synthetic */ Bitmap f7343b;

                /* renamed from: c */
                private AbstractC1786ad f7344c;

                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                C24961(Bitmap bitmap, AbstractC1641c abstractC1641c) {
                    super(2, abstractC1641c);
                    this.f7343b = bitmap;
                }

                @Override // kotlin.p081e.p082a.AbstractC1674m
                /* renamed from: a */
                public final Object mo44a(AbstractC1786ad abstractC1786ad, AbstractC1641c<? super C1775o> abstractC1641c) {
                    return ((C24961) mo43a((Object) abstractC1786ad, (AbstractC1641c<?>) abstractC1641c)).mo42b(C1775o.f4450a);
                }

                @Override // kotlin.p075c.p077b.p078a.AbstractC1629a
                /* renamed from: a */
                public final AbstractC1641c<C1775o> mo43a(Object obj, AbstractC1641c<?> abstractC1641c) {
                    C1694h.m3117b(abstractC1641c, "completion");
                    C24961 c24961 = new C24961(this.f7343b, abstractC1641c);
                    c24961.f7344c = (AbstractC1786ad) obj;
                    return c24961;
                }

                @Override // kotlin.p075c.p077b.p078a.AbstractC1629a
                /* renamed from: b */
                public final Object mo42b(Object obj) {
                    C1622b.m3174a();
                    if (this.f7342a == 0) {
                        C1771k.m2979a(obj);
                        AbstractC1786ad abstractC1786ad = this.f7344c;
                        C2488c c2488c = C2488c.f7274a;
                        C2488c.f7289p = this.f7343b;
                        return C1775o.f4450a;
                    }
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
            }

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            C24951(C2385ac c2385ac, AbstractC1641c abstractC1641c) {
                super(2, abstractC1641c);
                this.f7340d = c2385ac;
            }

            @Override // kotlin.p081e.p082a.AbstractC1674m
            /* renamed from: a */
            public final Object mo44a(AbstractC1786ad abstractC1786ad, AbstractC1641c<? super C1775o> abstractC1641c) {
                return ((C24951) mo43a((Object) abstractC1786ad, (AbstractC1641c<?>) abstractC1641c)).mo42b(C1775o.f4450a);
            }

            @Override // kotlin.p075c.p077b.p078a.AbstractC1629a
            /* renamed from: a */
            public final AbstractC1641c<C1775o> mo43a(Object obj, AbstractC1641c<?> abstractC1641c) {
                C1694h.m3117b(abstractC1641c, "completion");
                C24951 c24951 = new C24951(this.f7340d, abstractC1641c);
                c24951.f7341e = (AbstractC1786ad) obj;
                return c24951;
            }

            @Override // kotlin.p075c.p077b.p078a.AbstractC1629a
            /* renamed from: b */
            public final Object mo42b(Object obj) {
                Object a = C1622b.m3174a();
                int i = this.f7339c;
                if (i == 0) {
                    C1771k.m2979a(obj);
                    AbstractC1786ad abstractC1786ad = this.f7341e;
                    Bitmap m101b = C3117q.f9185a.m101b(this.f7340d.m1353d());
                    this.f7337a = abstractC1786ad;
                    this.f7338b = m101b;
                    this.f7339c = 1;
                    if (C1890e.m2686a(C3084c.m192b(), new C24961(m101b, null), this) == a) {
                        return a;
                    }
                } else if (i != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                } else {
                    Bitmap bitmap = (Bitmap) this.f7338b;
                    AbstractC1786ad abstractC1786ad2 = (AbstractC1786ad) this.f7337a;
                    C1771k.m2979a(obj);
                }
                return C1775o.f4450a;
            }
        }

        @AbstractC1634f(m3162b = "MyInCallPresenter.kt", m3161c = {}, m3160d = "invokeSuspend", m3159e = "org.mistergroup.shouldianswer.services.incall.MyInCallPresenter$updateNotification$1$3")
        /* renamed from: org.mistergroup.shouldianswer.services.incall.c$d$2 */
        /* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/services/incall/c$d$2.class */
        public static final class C24972 extends AbstractC1640k implements AbstractC1674m<AbstractC1786ad, AbstractC1641c<? super C1775o>, Object> {

            /* renamed from: a */
            int f7345a;

            /* renamed from: c */
            final /* synthetic */ C1699m.C1702c f7347c;

            /* renamed from: d */
            final /* synthetic */ C1699m.C1702c f7348d;

            /* renamed from: e */
            final /* synthetic */ C1699m.C1702c f7349e;

            /* renamed from: f */
            final /* synthetic */ Bitmap f7350f;

            /* renamed from: g */
            final /* synthetic */ PendingIntent f7351g;

            /* renamed from: h */
            final /* synthetic */ PendingIntent f7352h;

            /* renamed from: i */
            final /* synthetic */ PendingIntent f7353i;

            /* renamed from: j */
            final /* synthetic */ C0445h.C0453g f7354j;

            /* renamed from: k */
            final /* synthetic */ PendingIntent f7355k;

            /* renamed from: l */
            final /* synthetic */ Integer f7356l;

            /* renamed from: m */
            final /* synthetic */ C0445h.C0446a f7357m;

            /* renamed from: n */
            final /* synthetic */ C0445h.C0446a f7358n;

            /* renamed from: o */
            final /* synthetic */ C0445h.C0446a f7359o;

            /* renamed from: p */
            private AbstractC1786ad f7360p;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            C24972(C1699m.C1702c c1702c, C1699m.C1702c c1702c2, C1699m.C1702c c1702c3, Bitmap bitmap, PendingIntent pendingIntent, PendingIntent pendingIntent2, PendingIntent pendingIntent3, C0445h.C0453g c0453g, PendingIntent pendingIntent4, Integer num, C0445h.C0446a c0446a, C0445h.C0446a c0446a2, C0445h.C0446a c0446a3, AbstractC1641c abstractC1641c) {
                super(2, abstractC1641c);
                C2494d.this = r5;
                this.f7347c = c1702c;
                this.f7348d = c1702c2;
                this.f7349e = c1702c3;
                this.f7350f = bitmap;
                this.f7351g = pendingIntent;
                this.f7352h = pendingIntent2;
                this.f7353i = pendingIntent3;
                this.f7354j = c0453g;
                this.f7355k = pendingIntent4;
                this.f7356l = num;
                this.f7357m = c0446a;
                this.f7358n = c0446a2;
                this.f7359o = c0446a3;
            }

            @Override // kotlin.p081e.p082a.AbstractC1674m
            /* renamed from: a */
            public final Object mo44a(AbstractC1786ad abstractC1786ad, AbstractC1641c<? super C1775o> abstractC1641c) {
                return ((C24972) mo43a((Object) abstractC1786ad, (AbstractC1641c<?>) abstractC1641c)).mo42b(C1775o.f4450a);
            }

            @Override // kotlin.p075c.p077b.p078a.AbstractC1629a
            /* renamed from: a */
            public final AbstractC1641c<C1775o> mo43a(Object obj, AbstractC1641c<?> abstractC1641c) {
                C1694h.m3117b(abstractC1641c, "completion");
                C24972 c24972 = new C24972(this.f7347c, this.f7348d, this.f7349e, this.f7350f, this.f7351g, this.f7352h, this.f7353i, this.f7354j, this.f7355k, this.f7356l, this.f7357m, this.f7358n, this.f7359o, abstractC1641c);
                c24972.f7360p = (AbstractC1786ad) obj;
                return c24972;
            }

            @Override // kotlin.p075c.p077b.p078a.AbstractC1629a
            /* renamed from: b */
            public final Object mo42b(Object obj) {
                C1622b.m3174a();
                if (this.f7345a == 0) {
                    C1771k.m2979a(obj);
                    AbstractC1786ad abstractC1786ad = this.f7360p;
                    RemoteViews remoteViews = new RemoteViews(C2494d.this.f7334t.getPackageName(), 2131558462);
                    remoteViews.setTextViewText(2131362442, (String) this.f7347c.f4391a);
                    remoteViews.setTextViewText(2131362435, (String) this.f7348d.f4391a);
                    remoteViews.setTextViewText(2131362440, (String) this.f7349e.f4391a);
                    remoteViews.setImageViewBitmap(2131362155, this.f7350f);
                    remoteViews.setOnClickPendingIntent(2131361876, this.f7351g);
                    remoteViews.setOnClickPendingIntent(2131361967, this.f7352h);
                    remoteViews.setOnClickPendingIntent(2131361932, this.f7353i);
                    remoteViews.setViewVisibility(2131362367, 8);
                    remoteViews.setViewVisibility(2131362368, 8);
                    C2488c c2488c = C2488c.f7274a;
                    int i = (!C2488c.f7281h || C2488c.f7274a.m908a() != null) ? 0 : 1;
                    MyApp myApp = C2494d.this.f7334t;
                    C3113m c3113m = C3113m.f9165a;
                    C0445h.C0450d m6628a = new C0445h.C0450d(myApp, i != 0 ? c3113m.m132e() : c3113m.m133d()).m6633a(2131230982).m6624a(remoteViews).m6612b(remoteViews).m6626a(this.f7350f).m6620a((CharSequence) ((String) this.f7347c.f4391a)).m6611b((CharSequence) ((String) this.f7349e.f4391a)).m6607c((CharSequence) ((String) this.f7348d.f4391a)).m6619a("call").m6609b(false).m6622a(this.f7354j).m6604d(i).m6618a(true).m6628a(this.f7355k);
                    if (i != 0) {
                        m6628a.m6627a(this.f7355k, true);
                    }
                    m6628a.m6617a(new long[0]);
                    Integer num = this.f7356l;
                    if (num != null && num.intValue() == 4) {
                        Call m909i = C2494d.this.f7335u.m909i();
                        if (m909i == null) {
                            C1694h.m3124a();
                        }
                        Call.Details details = m909i.getDetails();
                        C1694h.m3122a((Object) details, "callInfo.call!!.details");
                        long connectTimeMillis = details.getConnectTimeMillis();
                        m6628a.m6629a(connectTimeMillis).m6609b(true);
                        remoteViews.setViewVisibility(2131362368, 0);
                        remoteViews.setViewVisibility(2131362367, 0);
                        remoteViews.setChronometer(2131362367, connectTimeMillis - (System.currentTimeMillis() - SystemClock.elapsedRealtime()), null, true);
                    }
                    remoteViews.setViewVisibility(2131361876, 8);
                    remoteViews.setViewVisibility(2131361967, 8);
                    remoteViews.setViewVisibility(2131361932, 8);
                    Integer m911g = C2494d.this.f7335u.m911g();
                    if (m911g != null && m911g.intValue() == 2) {
                        m6628a.m6623a(this.f7357m);
                        m6628a.m6623a(this.f7358n);
                        remoteViews.setViewVisibility(2131361876, 0);
                        remoteViews.setViewVisibility(2131361967, 0);
                        remoteViews.setViewVisibility(2131361932, 8);
                    } else if ((m911g != null && m911g.intValue() == 4) || (m911g != null && m911g.intValue() == 1)) {
                        remoteViews.setViewVisibility(2131361876, 8);
                        remoteViews.setViewVisibility(2131361967, 4);
                        remoteViews.setViewVisibility(2131361932, 0);
                        m6628a.m6623a(this.f7359o);
                    }
                    Notification m6616b = m6628a.m6616b();
                    m6616b.flags |= 32;
                    C3104j.m157a(C3104j.f9124a, "MyInCallPresenter.updateNotification notificationManager.notify", (String) null, 2, (Object) null);
                    C2488c c2488c2 = C2488c.f7274a;
                    NotificationManager notificationManager = C2488c.f7283j;
                    C2488c c2488c3 = C2488c.f7274a;
                    notificationManager.notify(C2488c.f7275b, m6616b);
                    C2488c c2488c4 = C2488c.f7274a;
                    C2488c.f7285l = false;
                    return C1775o.f4450a;
                }
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C2494d(MyApp myApp, C2485a c2485a, AbstractC1641c abstractC1641c) {
            super(2, abstractC1641c);
            this.f7334t = myApp;
            this.f7335u = c2485a;
        }

        @Override // kotlin.p081e.p082a.AbstractC1674m
        /* renamed from: a */
        public final Object mo44a(AbstractC1786ad abstractC1786ad, AbstractC1641c<? super C1775o> abstractC1641c) {
            return ((C2494d) mo43a((Object) abstractC1786ad, (AbstractC1641c<?>) abstractC1641c)).mo42b(C1775o.f4450a);
        }

        @Override // kotlin.p075c.p077b.p078a.AbstractC1629a
        /* renamed from: a */
        public final AbstractC1641c<C1775o> mo43a(Object obj, AbstractC1641c<?> abstractC1641c) {
            C1694h.m3117b(abstractC1641c, "completion");
            C2494d c2494d = new C2494d(this.f7334t, this.f7335u, abstractC1641c);
            c2494d.f7336v = (AbstractC1786ad) obj;
            return c2494d;
        }

        /* JADX WARN: Can't wrap try/catch for region: R(18:2|(1:130)|(2:4|(2:6|(4:8|9|119|120)(2:10|11))(3:12|13|14))(3:15|16|(4:126|18|19|(2:21|22)(1:23))(10:67|68|(1:70)(1:71)|72|123|73|(2:75|(2:77|(2:79|(4:81|82|84|(2:86|87)(27:88|89|90|124|91|92|93|(1:95)|96|97|98|128|99|100|101|102|103|104|131|105|106|121|107|108|(2:110|111)|119|120)))))|83|84|(0)(0)))|24|(5:26|27|(1:29)|30|(4:32|33|34|(1:36)))(1:37)|38|39|(5:41|42|(2:44|(2:46|(2:48|(1:50)(2:51|52))(2:53|54))(1:55))(1:56)|57|(2:59|60)(2:61|62))(2:63|64)|68|(0)(0)|72|123|73|(0)|83|84|(0)(0)|(1:(0))) */
        /* JADX WARN: Code restructure failed: missing block: B:116:0x064f, code lost:
            r18 = e;
         */
        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Removed duplicated region for block: B:70:0x03be A[Catch: Exception -> 0x0384, TRY_LEAVE, TryCatch #5 {Exception -> 0x0384, blocks: (B:34:0x0262, B:36:0x027e, B:37:0x029d, B:39:0x02a9, B:41:0x02b2, B:51:0x02de, B:52:0x02e7, B:57:0x02fa, B:59:0x0310, B:61:0x034a, B:62:0x0356, B:68:0x03b5, B:70:0x03be, B:71:0x03c9, B:103:0x059a), top: B:130:0x000e }] */
        /* JADX WARN: Removed duplicated region for block: B:71:0x03c9 A[Catch: Exception -> 0x0384, TRY_ENTER, TryCatch #5 {Exception -> 0x0384, blocks: (B:34:0x0262, B:36:0x027e, B:37:0x029d, B:39:0x02a9, B:41:0x02b2, B:51:0x02de, B:52:0x02e7, B:57:0x02fa, B:59:0x0310, B:61:0x034a, B:62:0x0356, B:68:0x03b5, B:70:0x03be, B:71:0x03c9, B:103:0x059a), top: B:130:0x000e }] */
        /* JADX WARN: Removed duplicated region for block: B:75:0x03e8 A[Catch: Exception -> 0x064f, TryCatch #1 {Exception -> 0x064f, blocks: (B:73:0x03d2, B:75:0x03e8, B:77:0x03f6, B:79:0x040a, B:86:0x042c, B:88:0x0430, B:88:0x0430, B:89:0x0433, B:92:0x0468, B:93:0x046b, B:95:0x04aa, B:97:0x04b4, B:101:0x0529), top: B:123:0x03d2 }] */
        /* JADX WARN: Removed duplicated region for block: B:86:0x042c A[Catch: Exception -> 0x064f, TRY_ENTER, TryCatch #1 {Exception -> 0x064f, blocks: (B:73:0x03d2, B:75:0x03e8, B:77:0x03f6, B:79:0x040a, B:86:0x042c, B:88:0x0430, B:88:0x0430, B:89:0x0433, B:92:0x0468, B:93:0x046b, B:95:0x04aa, B:97:0x04b4, B:101:0x0529), top: B:123:0x03d2 }] */
        /* JADX WARN: Removed duplicated region for block: B:88:0x0430 A[Catch: Exception -> 0x064f, Exception -> 0x064f, TRY_ENTER, TRY_LEAVE, TryCatch #1 {Exception -> 0x064f, blocks: (B:73:0x03d2, B:75:0x03e8, B:77:0x03f6, B:79:0x040a, B:86:0x042c, B:88:0x0430, B:88:0x0430, B:89:0x0433, B:92:0x0468, B:93:0x046b, B:95:0x04aa, B:97:0x04b4, B:101:0x0529), top: B:123:0x03d2 }] */
        /* JADX WARN: Type inference failed for: r1v60, types: [T, java.lang.String] */
        /* JADX WARN: Type inference failed for: r1v62, types: [T, java.lang.String] */
        /* JADX WARN: Type inference failed for: r1v95, types: [T, java.lang.String] */
        @Override // kotlin.p075c.p077b.p078a.AbstractC1629a
        /* renamed from: b */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final java.lang.Object mo42b(java.lang.Object r18) {
            /*
                Method dump skipped, instructions count: 1634
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: org.mistergroup.shouldianswer.services.incall.C2488c.C2494d.mo42b(java.lang.Object):java.lang.Object");
        }
    }

    static {
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction(f7276c);
        intentFilter.addAction(f7277d);
        intentFilter.addAction(f7278e);
        MyApp.f5480c.m1802a().registerReceiver(new C2487b(), intentFilter);
    }

    private C2488c() {
    }

    /* renamed from: g */
    private final C2485a m879g() {
        Integer m911g;
        Integer m911g2;
        C2485a c2485a = null;
        Collection<C2485a> values = f7288o.values();
        C1694h.m3122a((Object) values, "callInfos.values");
        for (C2485a c2485a2 : values) {
            if (c2485a == null || ((m911g = c2485a2.m911g()) != null && m911g.intValue() == 2 && ((m911g2 = c2485a.m911g()) == null || m911g2.intValue() != 2))) {
                c2485a = c2485a2;
            }
        }
        return c2485a;
    }

    /* renamed from: h */
    private final void m877h() {
        MyApp m1802a = MyApp.f5480c.m1802a();
        C2485a m879g = m879g();
        if (m879g != null) {
            C1892g.m2677a(C1843bd.f4587a, null, null, new C2494d(m1802a, m879g, null), 3, null);
        }
    }

    /* renamed from: i */
    private final void m875i() {
        f7283j.cancel(f7275b);
    }

    /* renamed from: j */
    private final void m873j() {
        if (f7286m == null) {
            try {
                C3104j.m157a(C3104j.f9124a, "MyInCallPresenter.startActivity!", (String) null, 2, (Object) null);
                Intent m785a = InCallActivity.f7454l.m785a(MyApp.f5480c.m1802a(), false, false, false);
                m785a.setFlags(268435456);
                MyApp.f5480c.m1802a().startActivity(m785a);
                C3104j.m157a(C3104j.f9124a, "MyInCallPresenter.startActivity called!", (String) null, 2, (Object) null);
            } catch (Exception e) {
                C3104j.m158a(C3104j.f9124a, e, (String) null, 2, (Object) null);
            }
        }
    }

    /* renamed from: a */
    public final WeakReference<InCallActivity> m908a() {
        return f7286m;
    }

    /* renamed from: a */
    public final void m907a(Call call) {
        C1694h.m3117b(call, "call");
        boolean z = true;
        if (!C3115o.f9175a.m110m() || !C3115o.f9175a.m113j()) {
            C3104j.m158a(C3104j.f9124a, new Exception("MyInCallPresenter.addCall Insufficient Permissions"), (String) null, 2, (Object) null);
            C2273d.f6370a.m1710a(true);
        }
        C2485a c2485a = new C2485a(this, call);
        NumberInfo m917b = c2485a.m917b();
        long time = new Date().getTime();
        C3104j.m157a(C3104j.f9124a, "MyInCallPresenter.addCall " + C2464x.m969a(m917b), (String) null, 2, (Object) null);
        f7288o.put(call, c2485a);
        call.registerCallback(c2485a);
        C3104j.m157a(C3104j.f9124a, "MyInCallPresenter.addCall check for blocking ", (String) null, 2, (Object) null);
        C1699m.C1700a c1700a = new C1699m.C1700a();
        c1700a.f4389a = false;
        C1890e.m2688a(C3084c.m193a(), new C2489a(m917b, time, c1700a, null));
        boolean isScreenOn = C3135y.f9272b.m14j().isScreenOn();
        int state = call.getState();
        boolean m1240v = C2398ai.f6930a.m1240v();
        if (!isScreenOn || state != 2 || c2485a.m914d() == EnumC2436k.OUTGOING || m1240v) {
            z = false;
        }
        f7281h = z;
        C3104j.m157a(C3104j.f9124a, "MyInCallPresenter.addCall isScreenOn=" + String.valueOf(isScreenOn), (String) null, 2, (Object) null);
        C3104j.m157a(C3104j.f9124a, "MyInCallPresenter.addCall CallInfo.state=" + String.valueOf(state), (String) null, 2, (Object) null);
        C3104j.m157a(C3104j.f9124a, "MyInCallPresenter.addCall callType=" + c2485a.m914d().name(), (String) null, 2, (Object) null);
        C3104j.m157a(C3104j.f9124a, "MyInCallPresenter.addCall dontUseInCallPopup=" + String.valueOf(m1240v), (String) null, 2, (Object) null);
        C3104j.m157a(C3104j.f9124a, "MyInCallPresenter.addCall showAsStickyNotification=" + String.valueOf(f7281h), (String) null, 2, (Object) null);
        if (c1700a.f4389a) {
            C3104j.m157a(C3104j.f9124a, "MyInCallPresenter.addCall wantBlock", (String) null, 2, (Object) null);
            c2485a.m919a(f7287n);
        } else if (f7281h) {
        } else {
            C3104j.m157a(C3104j.f9124a, "MyInCallPresenter.addCall startingActivity", (String) null, 2, (Object) null);
            m873j();
        }
    }

    /* renamed from: a */
    public final void m906a(String str) {
        C1694h.m3117b(str, "action");
        try {
            C2485a m879g = m879g();
            if (m879g == null) {
                return;
            }
            if (C1694h.m3123a((Object) str, (Object) f7276c)) {
                Call m909i = m879g.m909i();
                if (m909i == null) {
                    C1694h.m3124a();
                }
                m909i.answer(0);
                m873j();
            } else if (C1694h.m3123a((Object) str, (Object) f7277d)) {
                m879g.m916b(true);
                Call m909i2 = m879g.m909i();
                if (m909i2 == null) {
                    C1694h.m3124a();
                }
                m909i2.reject(false, null);
            } else if (!C1694h.m3123a((Object) str, (Object) f7278e)) {
            } else {
                m879g.m916b(true);
                Call m909i3 = m879g.m909i();
                if (m909i3 == null) {
                    C1694h.m3124a();
                }
                m909i3.disconnect();
            }
        } catch (Exception e) {
            C3104j.m158a(C3104j.f9124a, e, (String) null, 2, (Object) null);
        }
    }

    /* renamed from: a */
    public final void m905a(WeakReference<InCallActivity> weakReference) {
        f7286m = weakReference;
    }

    /* renamed from: a */
    public final void m904a(AbstractC1663b<? super C2485a, C1775o> abstractC1663b) {
        f7282i = abstractC1663b;
    }

    /* renamed from: a */
    public final void m903a(NumberInfo numberInfo) {
        f7280g = numberInfo;
    }

    /* renamed from: a */
    public final void m895a(boolean z) {
        f7279f = z;
    }

    /* renamed from: b */
    public final WeakReference<MyInCallService> m894b() {
        return f7287n;
    }

    /* renamed from: b */
    public final void m893b(Call call) {
        C1694h.m3117b(call, "call");
        C2485a c2485a = f7288o.get(call);
        if (c2485a != null) {
            C1694h.m3122a((Object) c2485a, "callInfos[call] ?: return");
            C3104j c3104j = C3104j.f9124a;
            C3104j.m157a(c3104j, "MyInCallPresenter.removeCall " + C2464x.m969a(c2485a.m917b()), (String) null, 2, (Object) null);
            call.unregisterCallback(c2485a);
            f7288o.remove(call);
            if (f7288o.size() == 0) {
                try {
                    C1892g.m2677a(C1843bd.f4587a, null, null, new C2492c(c2485a.m917b(), c2485a, null), 3, null);
                } catch (Exception e) {
                    C3104j.m158a(C3104j.f9124a, e, (String) null, 2, (Object) null);
                }
            }
            m885d();
        }
    }

    /* renamed from: b */
    public final void m892b(WeakReference<MyInCallService> weakReference) {
        f7287n = weakReference;
    }

    /* renamed from: c */
    public final HashMap<Call, C2485a> m888c() {
        return f7288o;
    }

    /* renamed from: d */
    public final void m885d() {
        MyInCallService myInCallService;
        Date m923a;
        WeakReference<MyInCallService> weakReference = f7287n;
        if (weakReference != null && (myInCallService = weakReference.get()) != null && (m923a = myInCallService.m923a()) != null && new Date().getTime() - m923a.getTime() < 5000) {
            C3104j.m157a(C3104j.f9124a, "MyInCallPresenter.updateUI cancel due pickAndHangStartedTime", (String) null, 2, (Object) null);
            return;
        }
        if (m879g() != null) {
            m877h();
        } else if (!f7285l) {
            C3104j.m157a(C3104j.f9124a, "MyInCallPresenter.updateUI cancel Notification", (String) null, 2, (Object) null);
            f7283j.cancel(f7275b);
            f7285l = true;
        }
        AbstractC1663b<? super C2485a, C1775o> abstractC1663b = f7282i;
        if (abstractC1663b == null) {
            return;
        }
        abstractC1663b.mo138a(m879g());
    }

    /* renamed from: e */
    public final void m883e() {
        f7284k = new Timer();
        Handler handler = new Handler(Looper.getMainLooper());
        Timer timer = f7284k;
        if (timer == null) {
            C1694h.m3124a();
        }
        timer.schedule(new C2490b(handler), 0L, 1000L);
    }

    /* renamed from: f */
    public final void m881f() {
        m875i();
        Timer timer = f7284k;
        if (timer != null) {
            if (timer == null) {
                C1694h.m3124a();
            }
            timer.cancel();
        }
    }
}
