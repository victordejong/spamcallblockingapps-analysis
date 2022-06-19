package org.mistergroup.shouldianswer.p098b;

import android.content.Context;
import android.content.Intent;
import android.graphics.Point;
import android.net.Uri;
import android.telephony.TelephonyManager;
import android.view.Display;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.WindowManager;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ProgressBar;
import android.widget.Toast;
import androidx.appcompat.widget.AppCompatButton;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.databinding.C0651f;
import androidx.databinding.ViewDataBinding;
import androidx.p031e.p032a.AbstractC0670b;
import androidx.p031e.p032a.C0689c;
import androidx.p031e.p032a.C0692e;
import com.google.android.flexbox.FlexItem;
import java.util.Timer;
import java.util.TimerTask;
import kotlin.C1771k;
import kotlin.C1775o;
import kotlin.TypeCastException;
import kotlin.p075c.AbstractC1641c;
import kotlin.p075c.p076a.C1622b;
import kotlin.p075c.p077b.p078a.AbstractC1634f;
import kotlin.p075c.p077b.p078a.AbstractC1640k;
import kotlin.p081e.p082a.AbstractC1674m;
import kotlin.p081e.p083b.C1691e;
import kotlin.p081e.p083b.C1694h;
import kotlin.p081e.p083b.C1699m;
import kotlinx.coroutines.AbstractC1786ad;
import kotlinx.coroutines.C1843bd;
import kotlinx.coroutines.C1890e;
import kotlinx.coroutines.C1892g;
import org.mistergroup.shouldianswer.MyApp;
import org.mistergroup.shouldianswer.model.C2398ai;
import org.mistergroup.shouldianswer.model.C2454t;
import org.mistergroup.shouldianswer.model.C2464x;
import org.mistergroup.shouldianswer.model.EnumC2395ag;
import org.mistergroup.shouldianswer.model.NumberInfo;
import org.mistergroup.shouldianswer.p097a.AbstractC2219e;
import org.mistergroup.shouldianswer.utils.C3074a;
import org.mistergroup.shouldianswer.utils.C3084c;
import org.mistergroup.shouldianswer.utils.C3086e;
import org.mistergroup.shouldianswer.utils.C3104j;
import org.mistergroup.shouldianswer.utils.C3115o;
import org.mistergroup.shouldianswer.utils.C3123t;
import org.mistergroup.shouldianswer.utils.C3134x;
import org.mistergroup.shouldianswer.utils.C3135y;
/* renamed from: org.mistergroup.shouldianswer.b.h */
/* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/b/h.class */
public final class C2279h {

    /* renamed from: a */
    public static final C2280a f6399a = new C2280a(null);

    /* renamed from: k */
    private static C2279h f6400k;

    /* renamed from: l */
    private static boolean f6401l;

    /* renamed from: b */
    private C3123t f6402b;

    /* renamed from: c */
    private View f6403c;

    /* renamed from: d */
    private WindowManager.LayoutParams f6404d;

    /* renamed from: e */
    private AbstractC2219e f6405e;

    /* renamed from: f */
    private Timer f6406f;

    /* renamed from: g */
    private WindowManager f6407g;

    /* renamed from: h */
    private boolean f6408h;

    /* renamed from: i */
    private final NumberInfo f6409i;

    /* renamed from: j */
    private final Context f6410j;

    /* renamed from: org.mistergroup.shouldianswer.b.h$a */
    /* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/b/h$a.class */
    public static final class C2280a {

        @AbstractC1634f(m3162b = "RingingAlertPopup.kt", m3161c = {366, 367}, m3160d = "invokeSuspend", m3159e = "org.mistergroup.shouldianswer.notifications.RingingAlertPopup$Companion$show$1")
        /* renamed from: org.mistergroup.shouldianswer.b.h$a$a */
        /* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/b/h$a$a.class */
        public static final class C2281a extends AbstractC1640k implements AbstractC1674m<AbstractC1786ad, AbstractC1641c<? super C1775o>, Object> {

            /* renamed from: a */
            Object f6411a;

            /* renamed from: b */
            Object f6412b;

            /* renamed from: c */
            int f6413c;

            /* renamed from: d */
            final /* synthetic */ NumberInfo f6414d;

            /* renamed from: e */
            final /* synthetic */ Context f6415e;

            /* renamed from: f */
            final /* synthetic */ boolean f6416f;

            /* renamed from: g */
            private AbstractC1786ad f6417g;

            @AbstractC1634f(m3162b = "RingingAlertPopup.kt", m3161c = {}, m3160d = "invokeSuspend", m3159e = "org.mistergroup.shouldianswer.notifications.RingingAlertPopup$Companion$show$1$1")
            /* renamed from: org.mistergroup.shouldianswer.b.h$a$a$1 */
            /* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/b/h$a$a$1.class */
            public static final class C22821 extends AbstractC1640k implements AbstractC1674m<AbstractC1786ad, AbstractC1641c<? super C1775o>, Object> {

                /* renamed from: a */
                int f6418a;

                /* renamed from: c */
                final /* synthetic */ C2279h f6420c;

                /* renamed from: d */
                private AbstractC1786ad f6421d;

                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                C22821(C2279h c2279h, AbstractC1641c abstractC1641c) {
                    super(2, abstractC1641c);
                    C2281a.this = r5;
                    this.f6420c = c2279h;
                }

                @Override // kotlin.p081e.p082a.AbstractC1674m
                /* renamed from: a */
                public final Object mo44a(AbstractC1786ad abstractC1786ad, AbstractC1641c<? super C1775o> abstractC1641c) {
                    return ((C22821) mo43a((Object) abstractC1786ad, (AbstractC1641c<?>) abstractC1641c)).mo42b(C1775o.f4450a);
                }

                @Override // kotlin.p075c.p077b.p078a.AbstractC1629a
                /* renamed from: a */
                public final AbstractC1641c<C1775o> mo43a(Object obj, AbstractC1641c<?> abstractC1641c) {
                    C1694h.m3117b(abstractC1641c, "completion");
                    C22821 c22821 = new C22821(this.f6420c, abstractC1641c);
                    c22821.f6421d = (AbstractC1786ad) obj;
                    return c22821;
                }

                @Override // kotlin.p075c.p077b.p078a.AbstractC1629a
                /* renamed from: b */
                public final Object mo42b(Object obj) {
                    C1622b.m3174a();
                    if (this.f6418a == 0) {
                        C1771k.m2979a(obj);
                        AbstractC1786ad abstractC1786ad = this.f6421d;
                        this.f6420c.m1681j();
                        if (C2281a.this.f6416f) {
                            this.f6420c.m1698a(C2281a.this.f6414d);
                        }
                        C2279h.f6400k = this.f6420c;
                        return C1775o.f4450a;
                    }
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
            }

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            C2281a(NumberInfo numberInfo, Context context, boolean z, AbstractC1641c abstractC1641c) {
                super(2, abstractC1641c);
                this.f6414d = numberInfo;
                this.f6415e = context;
                this.f6416f = z;
            }

            @Override // kotlin.p081e.p082a.AbstractC1674m
            /* renamed from: a */
            public final Object mo44a(AbstractC1786ad abstractC1786ad, AbstractC1641c<? super C1775o> abstractC1641c) {
                return ((C2281a) mo43a((Object) abstractC1786ad, (AbstractC1641c<?>) abstractC1641c)).mo42b(C1775o.f4450a);
            }

            @Override // kotlin.p075c.p077b.p078a.AbstractC1629a
            /* renamed from: a */
            public final AbstractC1641c<C1775o> mo43a(Object obj, AbstractC1641c<?> abstractC1641c) {
                C1694h.m3117b(abstractC1641c, "completion");
                C2281a c2281a = new C2281a(this.f6414d, this.f6415e, this.f6416f, abstractC1641c);
                c2281a.f6417g = (AbstractC1786ad) obj;
                return c2281a;
            }

            @Override // kotlin.p075c.p077b.p078a.AbstractC1629a
            /* renamed from: b */
            public final Object mo42b(Object obj) {
                AbstractC1786ad abstractC1786ad;
                C2279h c2279h;
                Object a = C1622b.m3174a();
                int i = this.f6413c;
                if (i == 0) {
                    C1771k.m2979a(obj);
                    abstractC1786ad = this.f6417g;
                    C2279h c2279h2 = new C2279h(this.f6414d, this.f6415e);
                    this.f6411a = abstractC1786ad;
                    this.f6412b = c2279h2;
                    this.f6413c = 1;
                    c2279h = c2279h2;
                    if (c2279h2.m1704a(this) == a) {
                        return a;
                    }
                } else if (i != 1) {
                    if (i != 2) {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                    C2279h c2279h3 = (C2279h) this.f6412b;
                    AbstractC1786ad abstractC1786ad2 = (AbstractC1786ad) this.f6411a;
                    C1771k.m2979a(obj);
                    return C1775o.f4450a;
                } else {
                    C2279h c2279h4 = (C2279h) this.f6412b;
                    abstractC1786ad = (AbstractC1786ad) this.f6411a;
                    C1771k.m2979a(obj);
                    c2279h = c2279h4;
                }
                this.f6411a = abstractC1786ad;
                this.f6412b = c2279h;
                this.f6413c = 2;
                if (C1890e.m2686a(C3084c.m192b(), new C22821(c2279h, null), this) == a) {
                    return a;
                }
                return C1775o.f4450a;
            }
        }

        private C2280a() {
        }

        public /* synthetic */ C2280a(C1691e c1691e) {
            this();
        }

        /* renamed from: a */
        public final void m1675a(NumberInfo numberInfo, Context context, boolean z) {
            NumberInfo m47n;
            synchronized (this) {
                C1694h.m3117b(numberInfo, "numberInfo");
                C1694h.m3117b(context, "context");
                try {
                    C3104j c3104j = C3104j.f9124a;
                    C3104j.m157a(c3104j, "RingingAlertPopup.show.begin number=" + numberInfo.m1479b(), (String) null, 2, (Object) null);
                } catch (Exception e) {
                    C3104j.m158a(C3104j.f9124a, e, (String) null, 2, (Object) null);
                }
                if (!C3115o.f9175a.m111l()) {
                    C3104j.f9124a.m163a(new Exception("cantDisplayAlertDueDisabledOverlay"));
                    C2272c.f6369a.m1711a();
                    C3104j.m157a(C3104j.f9124a, "RingingAlertPopup.show.end with error - cant draw overlay", (String) null, 2, (Object) null);
                    return;
                }
                String m1479b = numberInfo.m1479b();
                if (C2279h.f6400k != null) {
                    C2279h c2279h = C2279h.f6400k;
                    if (c2279h == null) {
                        C1694h.m3124a();
                    }
                    C3123t c3123t = c2279h.f6402b;
                    if (C1694h.m3123a((Object) ((c3123t == null || (m47n = c3123t.m47n()) == null) ? null : m47n.m1479b()), (Object) m1479b)) {
                        return;
                    }
                }
                C2279h c2279h2 = C2279h.f6400k;
                if (c2279h2 != null) {
                    c2279h2.m1693d();
                }
                C1892g.m2677a(C1843bd.f4587a, C3084c.m193a(), null, new C2281a(numberInfo, context, z, null), 2, null);
                C3104j.m157a(C3104j.f9124a, "RingingAlertPopup.show.end", (String) null, 2, (Object) null);
            }
        }

        /* renamed from: a */
        public final boolean m1676a() {
            return C2279h.f6401l;
        }

        /* renamed from: b */
        public final void m1674b() {
            synchronized (this) {
                C2279h c2279h = C2279h.f6400k;
                if (c2279h != null) {
                    c2279h.m1693d();
                }
            }
        }
    }

    /* renamed from: org.mistergroup.shouldianswer.b.h$b */
    /* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/b/h$b.class */
    public static final class View$OnClickListenerC2283b implements View.OnClickListener {

        /* renamed from: b */
        final /* synthetic */ AbstractC2219e f6423b;

        View$OnClickListenerC2283b(AbstractC2219e abstractC2219e) {
            C2279h.this = r4;
            this.f6423b = abstractC2219e;
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            C1694h.m3117b(view, "view");
            C2279h.this.m1691e();
        }
    }

    /* renamed from: org.mistergroup.shouldianswer.b.h$c */
    /* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/b/h$c.class */
    public static final class View$OnClickListenerC2284c implements View.OnClickListener {

        /* renamed from: b */
        final /* synthetic */ AbstractC2219e f6425b;

        View$OnClickListenerC2284c(AbstractC2219e abstractC2219e) {
            C2279h.this = r4;
            this.f6425b = abstractC2219e;
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            C2279h.this.m1687g();
        }
    }

    /* renamed from: org.mistergroup.shouldianswer.b.h$d */
    /* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/b/h$d.class */
    public static final class View$OnClickListenerC2285d implements View.OnClickListener {

        /* renamed from: b */
        final /* synthetic */ AbstractC2219e f6427b;

        View$OnClickListenerC2285d(AbstractC2219e abstractC2219e) {
            C2279h.this = r4;
            this.f6427b = abstractC2219e;
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            C2279h.this.m1685h();
        }
    }

    /* renamed from: org.mistergroup.shouldianswer.b.h$e */
    /* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/b/h$e.class */
    public static final class View$OnClickListenerC2286e implements View.OnClickListener {

        /* renamed from: b */
        final /* synthetic */ AbstractC2219e f6429b;

        View$OnClickListenerC2286e(AbstractC2219e abstractC2219e) {
            C2279h.this = r4;
            this.f6429b = abstractC2219e;
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            C2279h.this.m1689f();
        }
    }

    /* renamed from: org.mistergroup.shouldianswer.b.h$f */
    /* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/b/h$f.class */
    public static final class C2287f extends AbstractC1640k implements AbstractC1674m<AbstractC1786ad, AbstractC1641c<? super C1775o>, Object> {

        /* renamed from: a */
        Object f6430a;

        /* renamed from: b */
        int f6431b;

        /* renamed from: c */
        final /* synthetic */ C3123t f6432c;

        /* renamed from: d */
        final /* synthetic */ C2279h f6433d;

        /* renamed from: e */
        final /* synthetic */ AbstractC2219e f6434e;

        /* renamed from: f */
        private AbstractC1786ad f6435f;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C2287f(C3123t c3123t, AbstractC1641c abstractC1641c, C2279h c2279h, AbstractC2219e abstractC2219e) {
            super(2, abstractC1641c);
            this.f6432c = c3123t;
            this.f6433d = c2279h;
            this.f6434e = abstractC2219e;
        }

        @Override // kotlin.p081e.p082a.AbstractC1674m
        /* renamed from: a */
        public final Object mo44a(AbstractC1786ad abstractC1786ad, AbstractC1641c<? super C1775o> abstractC1641c) {
            return ((C2287f) mo43a((Object) abstractC1786ad, (AbstractC1641c<?>) abstractC1641c)).mo42b(C1775o.f4450a);
        }

        @Override // kotlin.p075c.p077b.p078a.AbstractC1629a
        /* renamed from: a */
        public final AbstractC1641c<C1775o> mo43a(Object obj, AbstractC1641c<?> abstractC1641c) {
            C1694h.m3117b(abstractC1641c, "completion");
            C2287f c2287f = new C2287f(this.f6432c, abstractC1641c, this.f6433d, this.f6434e);
            c2287f.f6435f = (AbstractC1786ad) obj;
            return c2287f;
        }

        @Override // kotlin.p075c.p077b.p078a.AbstractC1629a
        /* renamed from: b */
        public final Object mo42b(Object obj) {
            Object a = C1622b.m3174a();
            int i = this.f6431b;
            if (i == 0) {
                C1771k.m2979a(obj);
                AbstractC1786ad abstractC1786ad = this.f6435f;
                C3123t c3123t = this.f6432c;
                LinearLayout linearLayout = this.f6434e.f6088l;
                C1694h.m3122a((Object) linearLayout, "binding.llLocalReviews");
                this.f6430a = abstractC1786ad;
                this.f6431b = 1;
                if (c3123t.m69a(linearLayout, this) == a) {
                    return a;
                }
            } else if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            } else {
                AbstractC1786ad abstractC1786ad2 = (AbstractC1786ad) this.f6430a;
                C1771k.m2979a(obj);
            }
            this.f6433d.m1683i();
            return C1775o.f4450a;
        }
    }

    /* renamed from: org.mistergroup.shouldianswer.b.h$g */
    /* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/b/h$g.class */
    public static final class View$OnTouchListenerC2288g implements View.OnTouchListener {

        /* renamed from: b */
        final /* synthetic */ float f6437b;

        /* renamed from: c */
        final /* synthetic */ LinearLayout f6438c;

        /* renamed from: d */
        private float f6439d;

        /* renamed from: e */
        private float f6440e;

        /* renamed from: f */
        private int f6441f;

        /* renamed from: g */
        private int f6442g;

        /* renamed from: h */
        private int f6443h;

        /* renamed from: i */
        private boolean f6444i;

        /* renamed from: org.mistergroup.shouldianswer.b.h$g$a */
        /* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/b/h$g$a.class */
        static final class RunnableC2289a implements Runnable {
            RunnableC2289a() {
                View$OnTouchListenerC2288g.this = r4;
            }

            @Override // java.lang.Runnable
            public final void run() {
                C2279h.this.m1693d();
            }
        }

        View$OnTouchListenerC2288g(float f, LinearLayout linearLayout) {
            C2279h.this = r4;
            this.f6437b = f;
            this.f6438c = linearLayout;
        }

        @Override // android.view.View.OnTouchListener
        public boolean onTouch(View view, MotionEvent motionEvent) {
            C1694h.m3117b(view, "v");
            C1694h.m3117b(motionEvent, "event");
            try {
                int action = motionEvent.getAction();
                if (action == 0) {
                    this.f6440e = motionEvent.getRawX();
                    this.f6439d = motionEvent.getRawY();
                    this.f6442g = C2279h.m1684h(C2279h.this).x;
                    this.f6443h = C2279h.m1684h(C2279h.this).y;
                    this.f6441f = this.f6443h;
                    return true;
                } else if (action != 1) {
                    if (action != 2) {
                        return true;
                    }
                    float rawX = motionEvent.getRawX() - this.f6440e;
                    if (Math.abs(rawX) > this.f6437b * 50) {
                        this.f6438c.setTranslationX(rawX);
                        C2279h.m1684h(C2279h.this).y = this.f6441f + Math.round(motionEvent.getRawY() - this.f6439d);
                        C2279h.m1684h(C2279h.this).y = this.f6443h;
                    } else {
                        this.f6438c.setTranslationX(FlexItem.FLEX_GROW_DEFAULT);
                        C2279h.m1684h(C2279h.this).y = this.f6441f + Math.round(motionEvent.getRawY() - this.f6439d);
                        this.f6443h = C2279h.m1684h(C2279h.this).y;
                    }
                    C2279h.this.m1705a().updateViewLayout(C2279h.this.f6403c, C2279h.m1684h(C2279h.this));
                    return true;
                } else {
                    float translationX = this.f6438c.getTranslationX();
                    if (Math.abs(translationX / this.f6437b) > 200) {
                        this.f6444i = true;
                        C0689c c0689c = new C0689c(this.f6438c, AbstractC0670b.f2205a);
                        c0689c.mo5727a(translationX > ((float) 0) ? 10000 : -10000);
                        c0689c.m5724e(0.1f);
                        c0689c.mo5725c(-2000.0f);
                        c0689c.mo5726b(2000.0f);
                        c0689c.mo5714a();
                        this.f6438c.postDelayed(new RunnableC2289a(), 1000L);
                    } else {
                        C2398ai.f6930a.m1278d(C2279h.m1684h(C2279h.this).y);
                    }
                    if (this.f6444i || Math.abs(translationX) <= 0) {
                        return true;
                    }
                    new C0692e(this.f6438c, AbstractC0670b.f2205a, FlexItem.FLEX_GROW_DEFAULT).mo5727a(100.0f).mo5714a();
                    return true;
                }
            } catch (Exception e) {
                C3104j.m158a(C3104j.f9124a, e, (String) null, 2, (Object) null);
                return true;
            }
        }
    }

    /* renamed from: org.mistergroup.shouldianswer.b.h$h */
    /* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/b/h$h.class */
    public static final class C2290h extends TimerTask {

        /* renamed from: b */
        final /* synthetic */ TelephonyManager f6447b;

        /* renamed from: c */
        final /* synthetic */ NumberInfo f6448c;

        /* renamed from: d */
        final /* synthetic */ C1699m.C1701b f6449d;

        C2290h(TelephonyManager telephonyManager, NumberInfo numberInfo, C1699m.C1701b c1701b) {
            C2279h.this = r4;
            this.f6447b = telephonyManager;
            this.f6448c = numberInfo;
            this.f6449d = c1701b;
        }

        @Override // java.util.TimerTask, java.lang.Runnable
        public void run() {
            try {
                int callState = this.f6447b.getCallState();
                if (callState == 0) {
                    if (!C2279h.this.f6408h) {
                        C3104j.m157a(C3104j.f9124a, "RingingAlertPopup.show Timer - Detected iddle, closing alert_popup", (String) null, 2, (Object) null);
                        C2279h.this.m1693d();
                        C3086e.f9028a.m179c(C3086e.EnumC3087a.ALERT_TIMER, this.f6448c.m1479b());
                    }
                } else if (C2279h.this.f6408h) {
                    C3104j.m157a(C3104j.f9124a, "RingingAlertPopup.show Timer - Waited for nonidle! state=" + callState, (String) null, 2, (Object) null);
                    C2279h.this.f6408h = false;
                }
            } catch (Exception e) {
                C3104j.m158a(C3104j.f9124a, e, (String) null, 2, (Object) null);
            }
            if (this.f6449d.f4390a > 6000) {
                C2279h.this.f6408h = false;
            }
            this.f6449d.f4390a += 200;
        }
    }

    @AbstractC1634f(m3162b = "RingingAlertPopup.kt", m3161c = {274, 278}, m3160d = "invokeSuspend", m3159e = "org.mistergroup.shouldianswer.notifications.RingingAlertPopup$showManually$1")
    /* renamed from: org.mistergroup.shouldianswer.b.h$i */
    /* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/b/h$i.class */
    public static final class C2291i extends AbstractC1640k implements AbstractC1674m<AbstractC1786ad, AbstractC1641c<? super C1775o>, Object> {

        /* renamed from: a */
        Object f6450a;

        /* renamed from: b */
        Object f6451b;

        /* renamed from: c */
        Object f6452c;

        /* renamed from: d */
        Object f6453d;

        /* renamed from: e */
        Object f6454e;

        /* renamed from: f */
        Object f6455f;

        /* renamed from: g */
        int f6456g;

        /* renamed from: i */
        private AbstractC1786ad f6458i;

        /* renamed from: org.mistergroup.shouldianswer.b.h$i$a */
        /* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/b/h$i$a.class */
        public static final class C2292a extends AbstractC1640k implements AbstractC1674m<AbstractC1786ad, AbstractC1641c<? super C1775o>, Object> {

            /* renamed from: a */
            int f6459a;

            /* renamed from: b */
            final /* synthetic */ C3123t f6460b;

            /* renamed from: c */
            final /* synthetic */ MyApp f6461c;

            /* renamed from: d */
            final /* synthetic */ C2291i f6462d;

            /* renamed from: e */
            private AbstractC1786ad f6463e;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            C2292a(C3123t c3123t, MyApp myApp, AbstractC1641c abstractC1641c, C2291i c2291i) {
                super(2, abstractC1641c);
                this.f6460b = c3123t;
                this.f6461c = myApp;
                this.f6462d = c2291i;
            }

            @Override // kotlin.p081e.p082a.AbstractC1674m
            /* renamed from: a */
            public final Object mo44a(AbstractC1786ad abstractC1786ad, AbstractC1641c<? super C1775o> abstractC1641c) {
                return ((C2292a) mo43a((Object) abstractC1786ad, (AbstractC1641c<?>) abstractC1641c)).mo42b(C1775o.f4450a);
            }

            @Override // kotlin.p075c.p077b.p078a.AbstractC1629a
            /* renamed from: a */
            public final AbstractC1641c<C1775o> mo43a(Object obj, AbstractC1641c<?> abstractC1641c) {
                C1694h.m3117b(abstractC1641c, "completion");
                C2292a c2292a = new C2292a(this.f6460b, this.f6461c, abstractC1641c, this.f6462d);
                c2292a.f6463e = (AbstractC1786ad) obj;
                return c2292a;
            }

            @Override // kotlin.p075c.p077b.p078a.AbstractC1629a
            /* renamed from: b */
            public final Object mo42b(Object obj) {
                boolean z;
                C1622b.m3174a();
                if (this.f6459a == 0) {
                    C1771k.m2979a(obj);
                    AbstractC1786ad abstractC1786ad = this.f6463e;
                    MyApp.f5480c.m1802a().setTheme(C2398ai.f6930a.m1309B() ? 2131820774 : 2131820773);
                    C2279h c2279h = C2279h.this;
                    ViewDataBinding m5843a = C0651f.m5843a(this.f6460b.m71a(), 2131558430, (ViewGroup) null, false);
                    C1694h.m3122a((Object) m5843a, "DataBindingUtil.inflate(…alert_popup, null, false)");
                    c2279h.f6405e = (AbstractC2219e) m5843a;
                    C2279h.this.m1703a(C2279h.m1679k(C2279h.this));
                    float m27a = C3134x.f9269a.m27a();
                    Display defaultDisplay = C2279h.this.m1705a().getDefaultDisplay();
                    if (defaultDisplay != null) {
                        Point point = new Point();
                        defaultDisplay.getSize(point);
                        if (point.y > 0) {
                            C2279h.m1679k(C2279h.this).f6094r.setMaxHeight(Math.round(Math.round(point.y - (300 * m27a))));
                            C2279h.m1679k(C2279h.this).f6094r.setScrollDisabled(true);
                        }
                    }
                    C3104j.m157a(C3104j.f9124a, "RingingAlertPopup.showManually addView", (String) null, 2, (Object) null);
                    int m1238w = C2398ai.f6930a.m1238w();
                    int i = m1238w;
                    if (m1238w == 0) {
                        i = Math.round(m27a * 150);
                    }
                    C2279h.this.f6404d = new WindowManager.LayoutParams();
                    C2279h.m1684h(C2279h.this).gravity = 48;
                    C2279h.m1684h(C2279h.this).y = i;
                    C2279h.m1684h(C2279h.this).horizontalWeight = 1.0f;
                    C2279h.m1684h(C2279h.this).type = C3115o.f9175a.m120c() ? 2038 : 2010;
                    C2279h.m1684h(C2279h.this).flags = 2883752;
                    C2279h.m1684h(C2279h.this).format = -3;
                    C2279h.m1684h(C2279h.this).setTitle(this.f6461c.getString(2131755134));
                    C2279h.m1684h(C2279h.this).height = -2;
                    try {
                        C2279h.this.m1705a().addView(C2279h.this.f6403c, C2279h.m1684h(C2279h.this));
                        View view = C2279h.this.f6403c;
                        if (view == null) {
                            C1694h.m3124a();
                        }
                        z = view.isShown();
                    } catch (Exception e) {
                        C3104j.m158a(C3104j.f9124a, e, (String) null, 2, (Object) null);
                        z = false;
                    }
                    if (!z) {
                        Toast.makeText(this.f6461c, 2131755128, 1).show();
                    }
                    C3104j c3104j = C3104j.f9124a;
                    StringBuilder sb = new StringBuilder();
                    sb.append("RingingAlertPopup.showManually.end isShown=");
                    View view2 = C2279h.this.f6403c;
                    if (view2 == null) {
                        C1694h.m3124a();
                    }
                    sb.append(view2.isShown());
                    C3104j.m157a(c3104j, sb.toString(), (String) null, 2, (Object) null);
                    return C1775o.f4450a;
                }
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C2291i(AbstractC1641c abstractC1641c) {
            super(2, abstractC1641c);
            C2279h.this = r5;
        }

        @Override // kotlin.p081e.p082a.AbstractC1674m
        /* renamed from: a */
        public final Object mo44a(AbstractC1786ad abstractC1786ad, AbstractC1641c<? super C1775o> abstractC1641c) {
            return ((C2291i) mo43a((Object) abstractC1786ad, (AbstractC1641c<?>) abstractC1641c)).mo42b(C1775o.f4450a);
        }

        @Override // kotlin.p075c.p077b.p078a.AbstractC1629a
        /* renamed from: a */
        public final AbstractC1641c<C1775o> mo43a(Object obj, AbstractC1641c<?> abstractC1641c) {
            C1694h.m3117b(abstractC1641c, "completion");
            C2291i c2291i = new C2291i(abstractC1641c);
            c2291i.f6458i = (AbstractC1786ad) obj;
            return c2291i;
        }

        @Override // kotlin.p075c.p077b.p078a.AbstractC1629a
        /* renamed from: b */
        public final Object mo42b(Object obj) {
            C3123t c3123t;
            MyApp myApp;
            String str;
            AbstractC1786ad abstractC1786ad;
            Object a = C1622b.m3174a();
            int i = this.f6456g;
            try {
            } catch (Exception e) {
                C3104j.m158a(C3104j.f9124a, e, (String) null, 2, (Object) null);
            }
            if (i == 0) {
                C1771k.m2979a(obj);
                abstractC1786ad = this.f6458i;
                c3123t = C2279h.this.f6402b;
                if (c3123t != null) {
                    myApp = MyApp.f5480c.m1802a();
                    str = C2464x.m969a(c3123t.m47n());
                    NumberInfo m47n = c3123t.m47n();
                    this.f6450a = abstractC1786ad;
                    this.f6451b = c3123t;
                    this.f6452c = myApp;
                    this.f6453d = str;
                    this.f6456g = 1;
                    obj = m47n.m1454m(this);
                    if (obj == a) {
                        return a;
                    }
                }
                return C1775o.f4450a;
            } else if (i != 1) {
                if (i != 2) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                String str2 = (String) this.f6455f;
                EnumC2395ag enumC2395ag = (EnumC2395ag) this.f6454e;
                String str3 = (String) this.f6453d;
                MyApp myApp2 = (MyApp) this.f6452c;
                C3123t c3123t2 = (C3123t) this.f6451b;
                AbstractC1786ad abstractC1786ad2 = (AbstractC1786ad) this.f6450a;
                C1771k.m2979a(obj);
                return C1775o.f4450a;
            } else {
                str = (String) this.f6453d;
                myApp = (MyApp) this.f6452c;
                c3123t = (C3123t) this.f6451b;
                abstractC1786ad = (AbstractC1786ad) this.f6450a;
                C1771k.m2979a(obj);
            }
            EnumC2395ag enumC2395ag2 = (EnumC2395ag) obj;
            String name = enumC2395ag2.name();
            C3104j c3104j = C3104j.f9124a;
            C3104j.m157a(c3104j, "RingingAlertPopup.showManually.begin number=" + str + " ratingString=" + name, (String) null, 2, (Object) null);
            this.f6450a = abstractC1786ad;
            this.f6451b = c3123t;
            this.f6452c = myApp;
            this.f6453d = str;
            this.f6454e = enumC2395ag2;
            this.f6455f = name;
            this.f6456g = 2;
            if (C1890e.m2686a(C3084c.m192b(), new C2292a(c3123t, myApp, null, this), this) == a) {
                return a;
            }
            return C1775o.f4450a;
        }
    }

    public C2279h(NumberInfo numberInfo, Context context) {
        C1694h.m3117b(numberInfo, "numberInfo");
        C1694h.m3117b(context, "context");
        this.f6409i = numberInfo;
        this.f6410j = context;
        Object systemService = this.f6410j.getSystemService("window");
        if (systemService != null) {
            this.f6407g = (WindowManager) systemService;
            return;
        }
        throw new TypeCastException("null cannot be cast to non-null type android.view.WindowManager");
    }

    /* renamed from: d */
    public final void m1693d() {
        synchronized (this) {
            try {
                if (this.f6406f != null) {
                    C3104j.m157a(C3104j.f9124a, "RingingAlertPopup.close cancel timer", (String) null, 2, (Object) null);
                    Timer timer = this.f6406f;
                    if (timer == null) {
                        C1694h.m3124a();
                    }
                    timer.cancel();
                    this.f6406f = null;
                }
                if (this.f6403c != null) {
                    C3104j.m157a(C3104j.f9124a, "RingingAlertPopup.close remove view", (String) null, 2, (Object) null);
                    C3135y.f9272b.m17g().removeView(this.f6403c);
                    this.f6403c = null;
                }
                if (f6400k == this) {
                    f6400k = null;
                }
            } catch (Exception e) {
                C3104j.m158a(C3104j.f9124a, e, (String) null, 2, (Object) null);
            }
        }
    }

    /* renamed from: e */
    public final void m1691e() {
        try {
            C3074a.f8976a.m227c("Alert.moreReviews");
            m1693d();
            String m1479b = this.f6409i.m1479b();
            this.f6410j.startActivity(new Intent("android.intent.action.VIEW", Uri.parse(C2454t.f7186a.m984a().m981b() + "/search?q=" + m1479b + "&src=sian&countryOperator=" + this.f6409i.m1475c())));
        } catch (Exception e) {
            C3104j.m158a(C3104j.f9124a, e, (String) null, 2, (Object) null);
        }
    }

    /* renamed from: f */
    public final void m1689f() {
        C3074a.f8976a.m227c("Alert.close");
        m1693d();
    }

    /* renamed from: g */
    public final void m1687g() {
        C3123t c3123t = this.f6402b;
        if (c3123t != null) {
            AbstractC2219e abstractC2219e = this.f6405e;
            if (abstractC2219e == null) {
                C1694h.m3116b("binding");
            }
            AppCompatButton appCompatButton = abstractC2219e.f6080d;
            C1694h.m3122a((Object) appCompatButton, "binding.butLoadReviews");
            appCompatButton.setVisibility(8);
            AbstractC2219e abstractC2219e2 = this.f6405e;
            if (abstractC2219e2 == null) {
                C1694h.m3116b("binding");
            }
            LinearLayout linearLayout = abstractC2219e2.f6088l;
            C1694h.m3122a((Object) linearLayout, "binding.llLocalReviews");
            linearLayout.setVisibility(c3123t.m51j() ? 0 : 8);
            AbstractC2219e abstractC2219e3 = this.f6405e;
            if (abstractC2219e3 == null) {
                C1694h.m3116b("binding");
            }
            LinearLayout linearLayout2 = abstractC2219e3.f6086j;
            C1694h.m3122a((Object) linearLayout2, "binding.llCommunityReviews");
            linearLayout2.setVisibility(c3123t.m50k() ? 0 : 8);
            AbstractC2219e abstractC2219e4 = this.f6405e;
            if (abstractC2219e4 == null) {
                C1694h.m3116b("binding");
            }
            AppCompatButton appCompatButton2 = abstractC2219e4.f6081e;
            C1694h.m3122a((Object) appCompatButton2, "binding.butLoadReviewsUp");
            appCompatButton2.setVisibility(0);
            AbstractC2219e abstractC2219e5 = this.f6405e;
            if (abstractC2219e5 == null) {
                C1694h.m3116b("binding");
            }
            LinearLayout linearLayout3 = abstractC2219e5.f6090n;
            C1694h.m3122a((Object) linearLayout3, "binding.llPositiveNegativeCounts");
            linearLayout3.setVisibility(8);
            AbstractC2219e abstractC2219e6 = this.f6405e;
            if (abstractC2219e6 == null) {
                C1694h.m3116b("binding");
            }
            Button button = abstractC2219e6.f6082f;
            C1694h.m3122a((Object) button, "binding.butMoreInfo");
            int i = 8;
            if (c3123t.m48m()) {
                i = 0;
            }
            button.setVisibility(i);
            AbstractC2219e abstractC2219e7 = this.f6405e;
            if (abstractC2219e7 == null) {
                C1694h.m3116b("binding");
            }
            abstractC2219e7.f6094r.setScrollDisabled(false);
            if (c3123t.m50k() || c3123t.m49l()) {
                return;
            }
            AbstractC2219e abstractC2219e8 = this.f6405e;
            if (abstractC2219e8 == null) {
                C1694h.m3116b("binding");
            }
            LinearLayout linearLayout4 = abstractC2219e8.f6086j;
            C1694h.m3122a((Object) linearLayout4, "binding.llCommunityReviews");
            AbstractC2219e abstractC2219e9 = this.f6405e;
            if (abstractC2219e9 == null) {
                C1694h.m3116b("binding");
            }
            Button button2 = abstractC2219e9.f6082f;
            C1694h.m3122a((Object) button2, "binding.butMoreInfo");
            AbstractC2219e abstractC2219e10 = this.f6405e;
            if (abstractC2219e10 == null) {
                C1694h.m3116b("binding");
            }
            ProgressBar progressBar = abstractC2219e10.f6093q;
            C1694h.m3122a((Object) progressBar, "binding.progressBar1");
            AbstractC2219e abstractC2219e11 = this.f6405e;
            if (abstractC2219e11 == null) {
                C1694h.m3116b("binding");
            }
            AppCompatTextView appCompatTextView = abstractC2219e11.f6092p;
            C1694h.m3122a((Object) appCompatTextView, "binding.loadReviewsError");
            c3123t.m70a(linearLayout4, button2, progressBar, appCompatTextView);
        }
    }

    /* renamed from: h */
    public static final /* synthetic */ WindowManager.LayoutParams m1684h(C2279h c2279h) {
        WindowManager.LayoutParams layoutParams = c2279h.f6404d;
        if (layoutParams == null) {
            C1694h.m3116b("layoutParams");
        }
        return layoutParams;
    }

    /* renamed from: h */
    public final void m1685h() {
        AbstractC2219e abstractC2219e = this.f6405e;
        if (abstractC2219e == null) {
            C1694h.m3116b("binding");
        }
        AppCompatButton appCompatButton = abstractC2219e.f6080d;
        C1694h.m3122a((Object) appCompatButton, "binding.butLoadReviews");
        appCompatButton.setVisibility(0);
        AbstractC2219e abstractC2219e2 = this.f6405e;
        if (abstractC2219e2 == null) {
            C1694h.m3116b("binding");
        }
        LinearLayout linearLayout = abstractC2219e2.f6088l;
        C1694h.m3122a((Object) linearLayout, "binding.llLocalReviews");
        linearLayout.setVisibility(8);
        AbstractC2219e abstractC2219e3 = this.f6405e;
        if (abstractC2219e3 == null) {
            C1694h.m3116b("binding");
        }
        LinearLayout linearLayout2 = abstractC2219e3.f6086j;
        C1694h.m3122a((Object) linearLayout2, "binding.llCommunityReviews");
        linearLayout2.setVisibility(8);
        AbstractC2219e abstractC2219e4 = this.f6405e;
        if (abstractC2219e4 == null) {
            C1694h.m3116b("binding");
        }
        AppCompatButton appCompatButton2 = abstractC2219e4.f6081e;
        C1694h.m3122a((Object) appCompatButton2, "binding.butLoadReviewsUp");
        appCompatButton2.setVisibility(8);
        AbstractC2219e abstractC2219e5 = this.f6405e;
        if (abstractC2219e5 == null) {
            C1694h.m3116b("binding");
        }
        AppCompatTextView appCompatTextView = abstractC2219e5.f6092p;
        C1694h.m3122a((Object) appCompatTextView, "binding.loadReviewsError");
        appCompatTextView.setVisibility(8);
        AbstractC2219e abstractC2219e6 = this.f6405e;
        if (abstractC2219e6 == null) {
            C1694h.m3116b("binding");
        }
        Button button = abstractC2219e6.f6082f;
        C1694h.m3122a((Object) button, "binding.butMoreInfo");
        button.setVisibility(8);
        AbstractC2219e abstractC2219e7 = this.f6405e;
        if (abstractC2219e7 == null) {
            C1694h.m3116b("binding");
        }
        LinearLayout linearLayout3 = abstractC2219e7.f6090n;
        C1694h.m3122a((Object) linearLayout3, "binding.llPositiveNegativeCounts");
        linearLayout3.setVisibility(0);
        AbstractC2219e abstractC2219e8 = this.f6405e;
        if (abstractC2219e8 == null) {
            C1694h.m3116b("binding");
        }
        abstractC2219e8.f6094r.setScrollDisabled(true);
    }

    /* renamed from: i */
    public final void m1683i() {
        AbstractC2219e abstractC2219e = this.f6405e;
        if (abstractC2219e == null) {
            C1694h.m3116b("binding");
        }
        LinearLayout linearLayout = abstractC2219e.f6089m;
        C1694h.m3122a((Object) linearLayout, "binding.llMovable");
        float m27a = C3134x.f9269a.m27a();
        View view = this.f6403c;
        if (view != null) {
            view.setOnTouchListener(new View$OnTouchListenerC2288g(m27a, linearLayout));
        }
    }

    /* renamed from: j */
    public final void m1681j() {
        try {
            C1892g.m2677a(C1843bd.f4587a, C3084c.m193a(), null, new C2291i(null), 2, null);
        } catch (Exception e) {
            C3104j.m158a(C3104j.f9124a, e, (String) null, 2, (Object) null);
        }
    }

    /* renamed from: k */
    public static final /* synthetic */ AbstractC2219e m1679k(C2279h c2279h) {
        AbstractC2219e abstractC2219e = c2279h.f6405e;
        if (abstractC2219e == null) {
            C1694h.m3116b("binding");
        }
        return abstractC2219e;
    }

    /* renamed from: a */
    public final WindowManager m1705a() {
        return this.f6407g;
    }

    /* renamed from: a */
    public final Object m1704a(AbstractC1641c<? super C1775o> abstractC1641c) {
        C3123t c3123t = new C3123t(this.f6409i, this.f6410j, true);
        this.f6402b = c3123t;
        return c3123t.m67a(abstractC1641c);
    }

    /* renamed from: a */
    public final void m1703a(AbstractC2219e abstractC2219e) {
        C1694h.m3117b(abstractC2219e, "binding");
        C3123t c3123t = this.f6402b;
        if (c3123t != null) {
            this.f6405e = abstractC2219e;
            this.f6403c = abstractC2219e.m5863d();
            View view = this.f6403c;
            if (view == null) {
                C1694h.m3124a();
            }
            Context context = view.getContext();
            abstractC2219e.f6082f.setOnClickListener(new View$OnClickListenerC2283b(abstractC2219e));
            abstractC2219e.f6080d.setOnClickListener(new View$OnClickListenerC2284c(abstractC2219e));
            abstractC2219e.f6081e.setOnClickListener(new View$OnClickListenerC2285d(abstractC2219e));
            abstractC2219e.f6079c.setOnClickListener(new View$OnClickListenerC2286e(abstractC2219e));
            AppCompatTextView appCompatTextView = abstractC2219e.f6100x;
            C1694h.m3122a((Object) appCompatTextView, "binding.tvTitle");
            appCompatTextView.setText(c3123t.m62b());
            AppCompatTextView appCompatTextView2 = abstractC2219e.f6099w;
            C1694h.m3122a((Object) appCompatTextView2, "binding.tvSubtitle");
            appCompatTextView2.setText(c3123t.m60c());
            C3134x c3134x = C3134x.f9269a;
            C1694h.m3122a((Object) context, "context");
            ImageView imageView = abstractC2219e.f6083g;
            C1694h.m3122a((Object) imageView, "binding.imgRating");
            c3134x.m25a(context, imageView, c3123t.m52i());
            C3134x c3134x2 = C3134x.f9269a;
            ImageView imageView2 = abstractC2219e.f6084h;
            C1694h.m3122a((Object) imageView2, "binding.imgRating1");
            c3134x2.m24b(context, imageView2, EnumC2395ag.POSITIVE);
            AppCompatTextView appCompatTextView3 = abstractC2219e.f6097u;
            C1694h.m3122a((Object) appCompatTextView3, "binding.tvRating1");
            appCompatTextView3.setText(c3123t.m56e());
            C3134x c3134x3 = C3134x.f9269a;
            ImageView imageView3 = abstractC2219e.f6085i;
            C1694h.m3122a((Object) imageView3, "binding.imgRating2");
            c3134x3.m24b(context, imageView3, EnumC2395ag.NEGATIVE);
            AppCompatTextView appCompatTextView4 = abstractC2219e.f6098v;
            C1694h.m3122a((Object) appCompatTextView4, "binding.tvRating2");
            appCompatTextView4.setText(c3123t.m55f());
            AppCompatTextView appCompatTextView5 = abstractC2219e.f6096t;
            C1694h.m3122a((Object) appCompatTextView5, "binding.tvFeaturedInfo");
            appCompatTextView5.setVisibility(c3123t.m58d().length() == 0 ? 8 : 0);
            AppCompatTextView appCompatTextView6 = abstractC2219e.f6096t;
            C1694h.m3122a((Object) appCompatTextView6, "binding.tvFeaturedInfo");
            appCompatTextView6.setText(c3123t.m58d());
            LinearLayout linearLayout = abstractC2219e.f6088l;
            C1694h.m3122a((Object) linearLayout, "binding.llLocalReviews");
            linearLayout.setVisibility(8);
            LinearLayout linearLayout2 = abstractC2219e.f6086j;
            C1694h.m3122a((Object) linearLayout2, "binding.llCommunityReviews");
            linearLayout2.setVisibility(8);
            Button button = abstractC2219e.f6082f;
            C1694h.m3122a((Object) button, "binding.butMoreInfo");
            button.setVisibility(8);
            AppCompatTextView appCompatTextView7 = abstractC2219e.f6092p;
            C1694h.m3122a((Object) appCompatTextView7, "binding.loadReviewsError");
            appCompatTextView7.setVisibility(8);
            ProgressBar progressBar = abstractC2219e.f6093q;
            C1694h.m3122a((Object) progressBar, "binding.progressBar1");
            progressBar.setVisibility(8);
            AppCompatTextView appCompatTextView8 = abstractC2219e.f6095s;
            C1694h.m3122a((Object) appCompatTextView8, "binding.tvDbSensitivityInfo");
            appCompatTextView8.setVisibility(c3123t.m54g() ? 0 : 8);
            LinearLayout linearLayout3 = abstractC2219e.f6091o;
            C1694h.m3122a((Object) linearLayout3, "binding.llUnknownNumberInfo");
            linearLayout3.setVisibility(c3123t.m53h() ? 0 : 8);
            LinearLayout linearLayout4 = abstractC2219e.f6087k;
            C1694h.m3122a((Object) linearLayout4, "binding.llExpandPanel");
            linearLayout4.setVisibility(c3123t.m53h() ? 8 : 0);
            AppCompatButton appCompatButton = abstractC2219e.f6080d;
            C1694h.m3122a((Object) appCompatButton, "binding.butLoadReviews");
            appCompatButton.setVisibility(0);
            AppCompatButton appCompatButton2 = abstractC2219e.f6081e;
            C1694h.m3122a((Object) appCompatButton2, "binding.butLoadReviewsUp");
            appCompatButton2.setVisibility(8);
            C1892g.m2677a(C1843bd.f4587a, C3084c.m193a(), null, new C2287f(c3123t, null, this, abstractC2219e), 2, null);
        }
    }

    /* renamed from: a */
    public final void m1698a(NumberInfo numberInfo) {
        C1694h.m3117b(numberInfo, "numberInfo");
        TelephonyManager m20d = C3135y.f9272b.m20d();
        this.f6406f = new Timer("mtzAlertTimer");
        int callState = m20d.getCallState();
        C3104j c3104j = C3104j.f9124a;
        C3104j.m157a(c3104j, "RingingAlertPopup.show Timer - initial callState=" + callState, (String) null, 2, (Object) null);
        this.f6408h = callState == 0;
        C1699m.C1701b c1701b = new C1699m.C1701b();
        c1701b.f4390a = 500;
        Timer timer = this.f6406f;
        if (timer == null) {
            C1694h.m3124a();
        }
        timer.schedule(new C2290h(m20d, numberInfo, c1701b), 500L, 200L);
    }
}
