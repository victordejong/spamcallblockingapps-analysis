package org.mistergroup.shouldianswer.utils;

import android.content.Context;
import android.content.DialogInterface;
import android.net.Uri;
import android.os.Bundle;
import android.telecom.PhoneAccount;
import android.telecom.PhoneAccountHandle;
import android.telephony.TelephonyManager;
import androidx.appcompat.app.DialogInterfaceC0090d;
import androidx.customview.p026a.AbstractC0610a;
import com.google.firebase.analytics.FirebaseAnalytics;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Observable;
import kotlin.C1771k;
import kotlin.C1775o;
import kotlin.TypeCastException;
import kotlin.p075c.AbstractC1641c;
import kotlin.p075c.p076a.C1622b;
import kotlin.p075c.p077b.p078a.AbstractC1632d;
import kotlin.p075c.p077b.p078a.AbstractC1634f;
import kotlin.p075c.p077b.p078a.AbstractC1640k;
import kotlin.p081e.p082a.AbstractC1663b;
import kotlin.p081e.p082a.AbstractC1674m;
import kotlin.p081e.p083b.C1694h;
import kotlin.p081e.p083b.C1699m;
import kotlinx.coroutines.AbstractC1786ad;
import kotlinx.coroutines.AbstractC1793ak;
import kotlinx.coroutines.C1843bd;
import kotlinx.coroutines.C1886cl;
import kotlinx.coroutines.C1890e;
import kotlinx.coroutines.C1892g;
import org.mistergroup.shouldianswer.MyApp;
import org.mistergroup.shouldianswer.model.C2398ai;
import org.mistergroup.shouldianswer.model.C2405c;
import org.mistergroup.shouldianswer.model.C2450r;
import org.mistergroup.shouldianswer.model.C2464x;
import org.mistergroup.shouldianswer.model.EnumC2378a;
import org.mistergroup.shouldianswer.model.EnumC2395ag;
import org.mistergroup.shouldianswer.model.EnumC2436k;
import org.mistergroup.shouldianswer.model.NumberInfo;
import org.mistergroup.shouldianswer.p098b.C2266a;
import org.mistergroup.shouldianswer.p098b.C2273d;
import org.mistergroup.shouldianswer.p098b.C2279h;
import org.mistergroup.shouldianswer.p098b.C2293i;
import org.mistergroup.shouldianswer.p101ui.number_detail.NumberDetailFragment;
import org.mistergroup.shouldianswer.services.MonitoringService;
import org.mistergroup.shouldianswer.services.OnCallService;
/* renamed from: org.mistergroup.shouldianswer.utils.e */
/* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/utils/e.class */
public final class C3086e extends Observable {

    /* renamed from: b */
    private static boolean f9029b;

    /* renamed from: c */
    private static NumberInfo f9030c;

    /* renamed from: d */
    private static NumberInfo f9031d;

    /* renamed from: e */
    private static NumberInfo f9032e;

    /* renamed from: g */
    private static NumberInfo f9034g;

    /* renamed from: h */
    private static NumberInfo f9035h;

    /* renamed from: i */
    private static NumberInfo f9036i;

    /* renamed from: j */
    private static boolean f9037j;

    /* renamed from: k */
    private static boolean f9038k;

    /* renamed from: l */
    private static boolean f9039l;

    /* renamed from: o */
    private static long f9042o;

    /* renamed from: a */
    public static final C3086e f9028a = new C3086e();

    /* renamed from: f */
    private static String f9033f = "";

    /* renamed from: m */
    private static int f9040m = -1;

    /* renamed from: n */
    private static String f9041n = "";

    /* renamed from: org.mistergroup.shouldianswer.utils.e$a */
    /* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/utils/e$a.class */
    public enum EnumC3087a {
        NONE,
        CALL_SCREENING_SERVICE,
        CALL_PRESENTER,
        IN_CALL_SERVICE,
        BROADCAST_OUTGOING,
        BROADCAST_PHONE_STATE,
        BROADCAST_PHONE_STATE_RUNTIME,
        ALERT_TIMER,
        LISTERNER_PHONE_STATE
    }

    /* renamed from: org.mistergroup.shouldianswer.utils.e$b */
    /* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/utils/e$b.class */
    public static final class DialogInterface$OnClickListenerC3088b implements DialogInterface.OnClickListener {

        /* renamed from: a */
        final /* synthetic */ List f9053a;

        /* renamed from: b */
        final /* synthetic */ Context f9054b;

        /* renamed from: c */
        final /* synthetic */ String f9055c;

        /* renamed from: d */
        final /* synthetic */ AbstractC1663b f9056d;

        DialogInterface$OnClickListenerC3088b(List list, Context context, String str, AbstractC1663b abstractC1663b) {
            this.f9053a = list;
            this.f9054b = context;
            this.f9055c = str;
            this.f9056d = abstractC1663b;
        }

        @Override // android.content.DialogInterface.OnClickListener
        public final void onClick(DialogInterface dialogInterface, int i) {
            try {
                PhoneAccountHandle phoneAccountHandle = (PhoneAccountHandle) this.f9053a.get(i);
                C3104j c3104j = C3104j.f9124a;
                C3104j.m157a(c3104j, "CallHelper.callNumber showSubscription callNumberInternal with phoneAccount which=" + String.valueOf(i), (String) null, 2, (Object) null);
                boolean m188a = C3086e.f9028a.m188a(this.f9054b, this.f9055c, phoneAccountHandle);
                AbstractC1663b abstractC1663b = this.f9056d;
                if (abstractC1663b == null) {
                    return;
                }
                C1775o c1775o = (C1775o) abstractC1663b.mo138a(Boolean.valueOf(m188a));
            } catch (Exception e) {
                C3104j.m158a(C3104j.f9124a, e, (String) null, 2, (Object) null);
            }
        }
    }

    @AbstractC1634f(m3162b = "CallHelper.kt", m3161c = {55, 62, 63, 64, 65, 66, 80, 81, 91, 96, 97}, m3160d = "checkNumber", m3159e = "org.mistergroup.shouldianswer.utils.CallHelper")
    /* renamed from: org.mistergroup.shouldianswer.utils.e$c */
    /* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/utils/e$c.class */
    public static final class C3089c extends AbstractC1632d {

        /* renamed from: a */
        /* synthetic */ Object f9057a;

        /* renamed from: b */
        int f9058b;

        /* renamed from: d */
        Object f9060d;

        /* renamed from: e */
        Object f9061e;

        /* renamed from: f */
        Object f9062f;

        /* renamed from: g */
        Object f9063g;

        /* renamed from: h */
        Object f9064h;

        /* renamed from: i */
        Object f9065i;

        /* renamed from: j */
        Object f9066j;

        /* renamed from: k */
        Object f9067k;

        /* renamed from: l */
        long f9068l;

        /* renamed from: m */
        boolean f9069m;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C3089c(AbstractC1641c abstractC1641c) {
            super(abstractC1641c);
            C3086e.this = r4;
        }

        @Override // kotlin.p075c.p077b.p078a.AbstractC1629a
        /* renamed from: b */
        public final Object mo42b(Object obj) {
            this.f9057a = obj;
            this.f9058b |= AbstractC0610a.INVALID_ID;
            return C3086e.this.m184a(null, null, 0L, this);
        }
    }

    @AbstractC1634f(m3162b = "CallHelper.kt", m3161c = {}, m3160d = "invokeSuspend", m3159e = "org.mistergroup.shouldianswer.utils.CallHelper$checkNumber$2")
    /* renamed from: org.mistergroup.shouldianswer.utils.e$d */
    /* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/utils/e$d.class */
    public static final class C3090d extends AbstractC1640k implements AbstractC1674m<AbstractC1786ad, AbstractC1641c<? super C1775o>, Object> {

        /* renamed from: a */
        int f9070a;

        /* renamed from: b */
        final /* synthetic */ boolean f9071b;

        /* renamed from: c */
        final /* synthetic */ NumberInfo f9072c;

        /* renamed from: d */
        final /* synthetic */ MyApp f9073d;

        /* renamed from: e */
        final /* synthetic */ EnumC2395ag f9074e;

        /* renamed from: f */
        private AbstractC1786ad f9075f;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C3090d(boolean z, NumberInfo numberInfo, MyApp myApp, EnumC2395ag enumC2395ag, AbstractC1641c abstractC1641c) {
            super(2, abstractC1641c);
            this.f9071b = z;
            this.f9072c = numberInfo;
            this.f9073d = myApp;
            this.f9074e = enumC2395ag;
        }

        @Override // kotlin.p081e.p082a.AbstractC1674m
        /* renamed from: a */
        public final Object mo44a(AbstractC1786ad abstractC1786ad, AbstractC1641c<? super C1775o> abstractC1641c) {
            return ((C3090d) mo43a((Object) abstractC1786ad, (AbstractC1641c<?>) abstractC1641c)).mo42b(C1775o.f4450a);
        }

        @Override // kotlin.p075c.p077b.p078a.AbstractC1629a
        /* renamed from: a */
        public final AbstractC1641c<C1775o> mo43a(Object obj, AbstractC1641c<?> abstractC1641c) {
            C1694h.m3117b(abstractC1641c, "completion");
            C3090d c3090d = new C3090d(this.f9071b, this.f9072c, this.f9073d, this.f9074e, abstractC1641c);
            c3090d.f9075f = (AbstractC1786ad) obj;
            return c3090d;
        }

        @Override // kotlin.p075c.p077b.p078a.AbstractC1629a
        /* renamed from: b */
        public final Object mo42b(Object obj) {
            C1622b.m3174a();
            if (this.f9070a == 0) {
                C1771k.m2979a(obj);
                AbstractC1786ad abstractC1786ad = this.f9075f;
                try {
                    if (this.f9071b) {
                        OnCallService.f7233a.m935b();
                        boolean z = true;
                        if (C2398ai.f6930a.m1275e() != EnumC2378a.IN_CALL_SCREEN) {
                            C3086e c3086e = C3086e.f9028a;
                            C3086e.f9029b = true;
                        }
                        if (C2398ai.f6930a.m1275e() == EnumC2378a.POPUP) {
                            C2279h.C2280a c2280a = C2279h.f6399a;
                            NumberInfo numberInfo = this.f9072c;
                            MyApp myApp = this.f9073d;
                            if (MonitoringService.f7214a.m944d()) {
                                z = false;
                            }
                            c2280a.m1675a(numberInfo, myApp, z);
                        }
                        if (C2398ai.f6930a.m1275e() == EnumC2378a.NOTIFICATION && this.f9074e != EnumC2395ag.UNKNOWN) {
                            new C2293i().m1671a(this.f9072c);
                        }
                    } else {
                        C2279h.f6399a.m1674b();
                    }
                } catch (Exception e) {
                    C3104j.m158a(C3104j.f9124a, e, (String) null, 2, (Object) null);
                }
                return C1775o.f4450a;
            }
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
    }

    @AbstractC1634f(m3162b = "CallHelper.kt", m3161c = {291, 292}, m3160d = "invokeSuspend", m3159e = "org.mistergroup.shouldianswer.utils.CallHelper$onIdle$1")
    /* renamed from: org.mistergroup.shouldianswer.utils.e$e */
    /* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/utils/e$e.class */
    public static final class C3091e extends AbstractC1640k implements AbstractC1674m<AbstractC1786ad, AbstractC1641c<? super C1775o>, Object> {

        /* renamed from: a */
        Object f9076a;

        /* renamed from: b */
        int f9077b;

        /* renamed from: c */
        final /* synthetic */ C1699m.C1702c f9078c;

        /* renamed from: d */
        private AbstractC1786ad f9079d;

        @AbstractC1634f(m3162b = "CallHelper.kt", m3161c = {}, m3160d = "invokeSuspend", m3159e = "org.mistergroup.shouldianswer.utils.CallHelper$onIdle$1$1")
        /* renamed from: org.mistergroup.shouldianswer.utils.e$e$1 */
        /* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/utils/e$e$1.class */
        public static final class C30921 extends AbstractC1640k implements AbstractC1674m<AbstractC1786ad, AbstractC1641c<? super C1775o>, Object> {

            /* renamed from: a */
            int f9080a;

            /* renamed from: c */
            private AbstractC1786ad f9082c;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            C30921(AbstractC1641c abstractC1641c) {
                super(2, abstractC1641c);
                C3091e.this = r5;
            }

            @Override // kotlin.p081e.p082a.AbstractC1674m
            /* renamed from: a */
            public final Object mo44a(AbstractC1786ad abstractC1786ad, AbstractC1641c<? super C1775o> abstractC1641c) {
                return ((C30921) mo43a((Object) abstractC1786ad, (AbstractC1641c<?>) abstractC1641c)).mo42b(C1775o.f4450a);
            }

            @Override // kotlin.p075c.p077b.p078a.AbstractC1629a
            /* renamed from: a */
            public final AbstractC1641c<C1775o> mo43a(Object obj, AbstractC1641c<?> abstractC1641c) {
                C1694h.m3117b(abstractC1641c, "completion");
                C30921 c30921 = new C30921(abstractC1641c);
                c30921.f9082c = (AbstractC1786ad) obj;
                return c30921;
            }

            @Override // kotlin.p075c.p077b.p078a.AbstractC1629a
            /* renamed from: b */
            public final Object mo42b(Object obj) {
                C1622b.m3174a();
                if (this.f9080a == 0) {
                    C1771k.m2979a(obj);
                    AbstractC1786ad abstractC1786ad = this.f9082c;
                    NumberDetailFragment.f8028b.m553b(MyApp.f5480c.m1802a(), (NumberInfo) C3091e.this.f9078c.f4391a);
                    return C1775o.f4450a;
                }
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C3091e(C1699m.C1702c c1702c, AbstractC1641c abstractC1641c) {
            super(2, abstractC1641c);
            this.f9078c = c1702c;
        }

        @Override // kotlin.p081e.p082a.AbstractC1674m
        /* renamed from: a */
        public final Object mo44a(AbstractC1786ad abstractC1786ad, AbstractC1641c<? super C1775o> abstractC1641c) {
            return ((C3091e) mo43a((Object) abstractC1786ad, (AbstractC1641c<?>) abstractC1641c)).mo42b(C1775o.f4450a);
        }

        @Override // kotlin.p075c.p077b.p078a.AbstractC1629a
        /* renamed from: a */
        public final AbstractC1641c<C1775o> mo43a(Object obj, AbstractC1641c<?> abstractC1641c) {
            C1694h.m3117b(abstractC1641c, "completion");
            C3091e c3091e = new C3091e(this.f9078c, abstractC1641c);
            c3091e.f9079d = (AbstractC1786ad) obj;
            return c3091e;
        }

        @Override // kotlin.p075c.p077b.p078a.AbstractC1629a
        /* renamed from: b */
        public final Object mo42b(Object obj) {
            AbstractC1786ad abstractC1786ad;
            Object a = C1622b.m3174a();
            int i = this.f9077b;
            if (i == 0) {
                C1771k.m2979a(obj);
                abstractC1786ad = this.f9079d;
                this.f9076a = abstractC1786ad;
                this.f9077b = 1;
                if (((NumberInfo) this.f9078c.f4391a).m1434w(this) == a) {
                    return a;
                }
            } else if (i != 1) {
                if (i != 2) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                AbstractC1786ad abstractC1786ad2 = (AbstractC1786ad) this.f9076a;
                C1771k.m2979a(obj);
                return C1775o.f4450a;
            } else {
                C1771k.m2979a(obj);
                abstractC1786ad = (AbstractC1786ad) this.f9076a;
            }
            this.f9076a = abstractC1786ad;
            this.f9077b = 2;
            if (C1890e.m2686a(C3084c.m192b(), new C30921(null), this) == a) {
                return a;
            }
            return C1775o.f4450a;
        }
    }

    @AbstractC1634f(m3162b = "CallHelper.kt", m3161c = {201}, m3160d = "invokeSuspend", m3159e = "org.mistergroup.shouldianswer.utils.CallHelper$onOffhook$1")
    /* renamed from: org.mistergroup.shouldianswer.utils.e$f */
    /* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/utils/e$f.class */
    public static final class C3093f extends AbstractC1640k implements AbstractC1674m<AbstractC1786ad, AbstractC1641c<? super C1775o>, Object> {

        /* renamed from: a */
        Object f9083a;

        /* renamed from: b */
        int f9084b;

        /* renamed from: c */
        final /* synthetic */ EnumC3087a f9085c;

        /* renamed from: d */
        final /* synthetic */ C1699m.C1702c f9086d;

        /* renamed from: e */
        final /* synthetic */ long f9087e;

        /* renamed from: f */
        private AbstractC1786ad f9088f;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C3093f(EnumC3087a enumC3087a, C1699m.C1702c c1702c, long j, AbstractC1641c abstractC1641c) {
            super(2, abstractC1641c);
            this.f9085c = enumC3087a;
            this.f9086d = c1702c;
            this.f9087e = j;
        }

        @Override // kotlin.p081e.p082a.AbstractC1674m
        /* renamed from: a */
        public final Object mo44a(AbstractC1786ad abstractC1786ad, AbstractC1641c<? super C1775o> abstractC1641c) {
            return ((C3093f) mo43a((Object) abstractC1786ad, (AbstractC1641c<?>) abstractC1641c)).mo42b(C1775o.f4450a);
        }

        @Override // kotlin.p075c.p077b.p078a.AbstractC1629a
        /* renamed from: a */
        public final AbstractC1641c<C1775o> mo43a(Object obj, AbstractC1641c<?> abstractC1641c) {
            C1694h.m3117b(abstractC1641c, "completion");
            C3093f c3093f = new C3093f(this.f9085c, this.f9086d, this.f9087e, abstractC1641c);
            c3093f.f9088f = (AbstractC1786ad) obj;
            return c3093f;
        }

        @Override // kotlin.p075c.p077b.p078a.AbstractC1629a
        /* renamed from: b */
        public final Object mo42b(Object obj) {
            Object a = C1622b.m3174a();
            int i = this.f9084b;
            if (i == 0) {
                C1771k.m2979a(obj);
                AbstractC1786ad abstractC1786ad = this.f9088f;
                C3086e c3086e = C3086e.f9028a;
                EnumC3087a enumC3087a = this.f9085c;
                NumberInfo numberInfo = (NumberInfo) this.f9086d.f4391a;
                long j = this.f9087e;
                this.f9083a = abstractC1786ad;
                this.f9084b = 1;
                if (c3086e.m184a(enumC3087a, numberInfo, j, this) == a) {
                    return a;
                }
            } else if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            } else {
                AbstractC1786ad abstractC1786ad2 = (AbstractC1786ad) this.f9083a;
                C1771k.m2979a(obj);
            }
            return C1775o.f4450a;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @AbstractC1634f(m3162b = "CallHelper.kt", m3161c = {330}, m3160d = "invokeSuspend", m3159e = "org.mistergroup.shouldianswer.utils.CallHelper$onOutgoingCall$1")
    /* renamed from: org.mistergroup.shouldianswer.utils.e$g */
    /* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/utils/e$g.class */
    public static final class C3094g extends AbstractC1640k implements AbstractC1674m<AbstractC1786ad, AbstractC1641c<? super C1775o>, Object> {

        /* renamed from: a */
        Object f9089a;

        /* renamed from: b */
        int f9090b;

        /* renamed from: c */
        final /* synthetic */ NumberInfo f9091c;

        /* renamed from: d */
        final /* synthetic */ long f9092d;

        /* renamed from: e */
        private AbstractC1786ad f9093e;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C3094g(NumberInfo numberInfo, long j, AbstractC1641c abstractC1641c) {
            super(2, abstractC1641c);
            this.f9091c = numberInfo;
            this.f9092d = j;
        }

        @Override // kotlin.p081e.p082a.AbstractC1674m
        /* renamed from: a */
        public final Object mo44a(AbstractC1786ad abstractC1786ad, AbstractC1641c<? super C1775o> abstractC1641c) {
            return ((C3094g) mo43a((Object) abstractC1786ad, (AbstractC1641c<?>) abstractC1641c)).mo42b(C1775o.f4450a);
        }

        @Override // kotlin.p075c.p077b.p078a.AbstractC1629a
        /* renamed from: a */
        public final AbstractC1641c<C1775o> mo43a(Object obj, AbstractC1641c<?> abstractC1641c) {
            C1694h.m3117b(abstractC1641c, "completion");
            C3094g c3094g = new C3094g(this.f9091c, this.f9092d, abstractC1641c);
            c3094g.f9093e = (AbstractC1786ad) obj;
            return c3094g;
        }

        @Override // kotlin.p075c.p077b.p078a.AbstractC1629a
        /* renamed from: b */
        public final Object mo42b(Object obj) {
            Object a = C1622b.m3174a();
            int i = this.f9090b;
            if (i == 0) {
                C1771k.m2979a(obj);
                AbstractC1786ad abstractC1786ad = this.f9093e;
                C2450r c2450r = C2450r.f7170a;
                NumberInfo numberInfo = this.f9091c;
                long j = this.f9092d;
                this.f9089a = abstractC1786ad;
                this.f9090b = 1;
                if (c2450r.m986a(numberInfo, j, this) == a) {
                    return a;
                }
            } else if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            } else {
                AbstractC1786ad abstractC1786ad2 = (AbstractC1786ad) this.f9089a;
                C1771k.m2979a(obj);
            }
            return C1775o.f4450a;
        }
    }

    @AbstractC1634f(m3162b = "CallHelper.kt", m3161c = {340}, m3160d = "invokeSuspend", m3159e = "org.mistergroup.shouldianswer.utils.CallHelper$onOutgoingCall$2")
    /* renamed from: org.mistergroup.shouldianswer.utils.e$h */
    /* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/utils/e$h.class */
    public static final class C3095h extends AbstractC1640k implements AbstractC1674m<AbstractC1786ad, AbstractC1641c<? super C1775o>, Object> {

        /* renamed from: a */
        Object f9094a;

        /* renamed from: b */
        Object f9095b;

        /* renamed from: c */
        int f9096c;

        /* renamed from: d */
        final /* synthetic */ C1699m.C1700a f9097d;

        /* renamed from: e */
        final /* synthetic */ NumberInfo f9098e;

        /* renamed from: f */
        final /* synthetic */ C1699m.C1700a f9099f;

        /* renamed from: g */
        private AbstractC1786ad f9100g;

        @AbstractC1634f(m3162b = "CallHelper.kt", m3161c = {340}, m3160d = "invokeSuspend", m3159e = "org.mistergroup.shouldianswer.utils.CallHelper$onOutgoingCall$2$1")
        /* renamed from: org.mistergroup.shouldianswer.utils.e$h$1 */
        /* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/utils/e$h$1.class */
        public static final class C30961 extends AbstractC1640k implements AbstractC1674m<AbstractC1786ad, AbstractC1641c<? super C1775o>, Object> {

            /* renamed from: a */
            Object f9101a;

            /* renamed from: b */
            int f9102b;

            /* renamed from: c */
            final /* synthetic */ AbstractC1793ak f9103c;

            /* renamed from: d */
            private AbstractC1786ad f9104d;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            C30961(AbstractC1793ak abstractC1793ak, AbstractC1641c abstractC1641c) {
                super(2, abstractC1641c);
                this.f9103c = abstractC1793ak;
            }

            @Override // kotlin.p081e.p082a.AbstractC1674m
            /* renamed from: a */
            public final Object mo44a(AbstractC1786ad abstractC1786ad, AbstractC1641c<? super C1775o> abstractC1641c) {
                return ((C30961) mo43a((Object) abstractC1786ad, (AbstractC1641c<?>) abstractC1641c)).mo42b(C1775o.f4450a);
            }

            @Override // kotlin.p075c.p077b.p078a.AbstractC1629a
            /* renamed from: a */
            public final AbstractC1641c<C1775o> mo43a(Object obj, AbstractC1641c<?> abstractC1641c) {
                C1694h.m3117b(abstractC1641c, "completion");
                C30961 c30961 = new C30961(this.f9103c, abstractC1641c);
                c30961.f9104d = (AbstractC1786ad) obj;
                return c30961;
            }

            @Override // kotlin.p075c.p077b.p078a.AbstractC1629a
            /* renamed from: b */
            public final Object mo42b(Object obj) {
                Object a = C1622b.m3174a();
                int i = this.f9102b;
                if (i == 0) {
                    C1771k.m2979a(obj);
                    AbstractC1786ad abstractC1786ad = this.f9104d;
                    AbstractC1793ak abstractC1793ak = this.f9103c;
                    this.f9101a = abstractC1786ad;
                    this.f9102b = 1;
                    if (abstractC1793ak.mo2948a(this) == a) {
                        return a;
                    }
                } else if (i != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                } else {
                    AbstractC1786ad abstractC1786ad2 = (AbstractC1786ad) this.f9101a;
                    C1771k.m2979a(obj);
                }
                return C1775o.f4450a;
            }
        }

        @AbstractC1634f(m3162b = "CallHelper.kt", m3161c = {337, 338}, m3160d = "invokeSuspend", m3159e = "org.mistergroup.shouldianswer.utils.CallHelper$onOutgoingCall$2$d$1")
        /* renamed from: org.mistergroup.shouldianswer.utils.e$h$a */
        /* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/utils/e$h$a.class */
        public static final class C3097a extends AbstractC1640k implements AbstractC1674m<AbstractC1786ad, AbstractC1641c<? super C1775o>, Object> {

            /* renamed from: a */
            Object f9105a;

            /* renamed from: b */
            Object f9106b;

            /* renamed from: c */
            int f9107c;

            /* renamed from: e */
            private AbstractC1786ad f9109e;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            C3097a(AbstractC1641c abstractC1641c) {
                super(2, abstractC1641c);
                C3095h.this = r5;
            }

            @Override // kotlin.p081e.p082a.AbstractC1674m
            /* renamed from: a */
            public final Object mo44a(AbstractC1786ad abstractC1786ad, AbstractC1641c<? super C1775o> abstractC1641c) {
                return ((C3097a) mo43a((Object) abstractC1786ad, (AbstractC1641c<?>) abstractC1641c)).mo42b(C1775o.f4450a);
            }

            @Override // kotlin.p075c.p077b.p078a.AbstractC1629a
            /* renamed from: a */
            public final AbstractC1641c<C1775o> mo43a(Object obj, AbstractC1641c<?> abstractC1641c) {
                C1694h.m3117b(abstractC1641c, "completion");
                C3097a c3097a = new C3097a(abstractC1641c);
                c3097a.f9109e = (AbstractC1786ad) obj;
                return c3097a;
            }

            @Override // kotlin.p075c.p077b.p078a.AbstractC1629a
            /* renamed from: b */
            public final Object mo42b(Object obj) {
                Object obj2;
                C1699m.C1700a c1700a;
                C1699m.C1700a c1700a2;
                AbstractC1786ad abstractC1786ad;
                Object a = C1622b.m3174a();
                int i = this.f9107c;
                if (i == 0) {
                    C1771k.m2979a(obj);
                    abstractC1786ad = this.f9109e;
                    c1700a2 = C3095h.this.f9097d;
                    NumberInfo numberInfo = C3095h.this.f9098e;
                    this.f9105a = abstractC1786ad;
                    this.f9106b = c1700a2;
                    this.f9107c = 1;
                    obj = numberInfo.m1466g(this);
                    if (obj == a) {
                        return a;
                    }
                } else if (i != 1) {
                    if (i != 2) {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                    c1700a = (C1699m.C1700a) this.f9106b;
                    AbstractC1786ad abstractC1786ad2 = (AbstractC1786ad) this.f9105a;
                    C1771k.m2979a(obj);
                    obj2 = obj;
                    c1700a.f4389a = ((Boolean) obj2).booleanValue();
                    return C1775o.f4450a;
                } else {
                    c1700a2 = (C1699m.C1700a) this.f9106b;
                    abstractC1786ad = (AbstractC1786ad) this.f9105a;
                    C1771k.m2979a(obj);
                }
                c1700a2.f4389a = ((Boolean) obj).booleanValue();
                C1699m.C1700a c1700a3 = C3095h.this.f9099f;
                NumberInfo numberInfo2 = C3095h.this.f9098e;
                this.f9105a = abstractC1786ad;
                this.f9106b = c1700a3;
                this.f9107c = 2;
                obj2 = numberInfo2.m1460j(this);
                if (obj2 == a) {
                    return a;
                }
                c1700a = c1700a3;
                c1700a.f4389a = ((Boolean) obj2).booleanValue();
                return C1775o.f4450a;
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C3095h(C1699m.C1700a c1700a, NumberInfo numberInfo, C1699m.C1700a c1700a2, AbstractC1641c abstractC1641c) {
            super(2, abstractC1641c);
            this.f9097d = c1700a;
            this.f9098e = numberInfo;
            this.f9099f = c1700a2;
        }

        @Override // kotlin.p081e.p082a.AbstractC1674m
        /* renamed from: a */
        public final Object mo44a(AbstractC1786ad abstractC1786ad, AbstractC1641c<? super C1775o> abstractC1641c) {
            return ((C3095h) mo43a((Object) abstractC1786ad, (AbstractC1641c<?>) abstractC1641c)).mo42b(C1775o.f4450a);
        }

        @Override // kotlin.p075c.p077b.p078a.AbstractC1629a
        /* renamed from: a */
        public final AbstractC1641c<C1775o> mo43a(Object obj, AbstractC1641c<?> abstractC1641c) {
            C1694h.m3117b(abstractC1641c, "completion");
            C3095h c3095h = new C3095h(this.f9097d, this.f9098e, this.f9099f, abstractC1641c);
            c3095h.f9100g = (AbstractC1786ad) obj;
            return c3095h;
        }

        @Override // kotlin.p075c.p077b.p078a.AbstractC1629a
        /* renamed from: b */
        public final Object mo42b(Object obj) {
            AbstractC1793ak m2675b;
            Object a = C1622b.m3174a();
            int i = this.f9096c;
            if (i == 0) {
                C1771k.m2979a(obj);
                AbstractC1786ad abstractC1786ad = this.f9100g;
                m2675b = C1892g.m2675b(abstractC1786ad, null, null, new C3097a(null), 3, null);
                this.f9094a = abstractC1786ad;
                this.f9095b = m2675b;
                this.f9096c = 1;
                if (C1886cl.m2693a(2000L, new C30961(m2675b, null), this) == a) {
                    return a;
                }
            } else if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            } else {
                AbstractC1793ak abstractC1793ak = (AbstractC1793ak) this.f9095b;
                AbstractC1786ad abstractC1786ad2 = (AbstractC1786ad) this.f9094a;
                C1771k.m2979a(obj);
            }
            return C1775o.f4450a;
        }
    }

    @AbstractC1634f(m3162b = "CallHelper.kt", m3161c = {165}, m3160d = "invokeSuspend", m3159e = "org.mistergroup.shouldianswer.utils.CallHelper$onRinging$1")
    /* renamed from: org.mistergroup.shouldianswer.utils.e$i */
    /* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/utils/e$i.class */
    public static final class C3098i extends AbstractC1640k implements AbstractC1674m<AbstractC1786ad, AbstractC1641c<? super C1775o>, Object> {

        /* renamed from: a */
        Object f9110a;

        /* renamed from: b */
        int f9111b;

        /* renamed from: c */
        final /* synthetic */ EnumC3087a f9112c;

        /* renamed from: d */
        final /* synthetic */ NumberInfo f9113d;

        /* renamed from: e */
        final /* synthetic */ long f9114e;

        /* renamed from: f */
        private AbstractC1786ad f9115f;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C3098i(EnumC3087a enumC3087a, NumberInfo numberInfo, long j, AbstractC1641c abstractC1641c) {
            super(2, abstractC1641c);
            this.f9112c = enumC3087a;
            this.f9113d = numberInfo;
            this.f9114e = j;
        }

        @Override // kotlin.p081e.p082a.AbstractC1674m
        /* renamed from: a */
        public final Object mo44a(AbstractC1786ad abstractC1786ad, AbstractC1641c<? super C1775o> abstractC1641c) {
            return ((C3098i) mo43a((Object) abstractC1786ad, (AbstractC1641c<?>) abstractC1641c)).mo42b(C1775o.f4450a);
        }

        @Override // kotlin.p075c.p077b.p078a.AbstractC1629a
        /* renamed from: a */
        public final AbstractC1641c<C1775o> mo43a(Object obj, AbstractC1641c<?> abstractC1641c) {
            C1694h.m3117b(abstractC1641c, "completion");
            C3098i c3098i = new C3098i(this.f9112c, this.f9113d, this.f9114e, abstractC1641c);
            c3098i.f9115f = (AbstractC1786ad) obj;
            return c3098i;
        }

        @Override // kotlin.p075c.p077b.p078a.AbstractC1629a
        /* renamed from: b */
        public final Object mo42b(Object obj) {
            Object a = C1622b.m3174a();
            int i = this.f9111b;
            try {
                if (i == 0) {
                    C1771k.m2979a(obj);
                    AbstractC1786ad abstractC1786ad = this.f9115f;
                    C3086e c3086e = C3086e.f9028a;
                    EnumC3087a enumC3087a = this.f9112c;
                    NumberInfo numberInfo = this.f9113d;
                    long j = this.f9114e;
                    this.f9110a = abstractC1786ad;
                    this.f9111b = 1;
                    if (c3086e.m184a(enumC3087a, numberInfo, j, this) == a) {
                        return a;
                    }
                } else if (i != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                } else {
                    AbstractC1786ad abstractC1786ad2 = (AbstractC1786ad) this.f9110a;
                    C1771k.m2979a(obj);
                }
                C3086e.f9028a.m189a(1);
            } catch (Exception e) {
                C3104j.m158a(C3104j.f9124a, e, (String) null, 2, (Object) null);
            }
            return C1775o.f4450a;
        }
    }

    private C3086e() {
    }

    /* renamed from: a */
    private final boolean m183a(EnumC3087a enumC3087a, NumberInfo numberInfo, String str) {
        String str2 = "CallHelper.canProcess source=" + enumC3087a.name() + " number=" + C2464x.m969a(numberInfo) + " state=" + str + " latestTestedState=" + f9033f + " latestTestedNumber=" + C2464x.m969a(f9034g);
        boolean z = C2464x.m966c(numberInfo) && (!C2464x.m968a(numberInfo, f9034g) || !C1694h.m3123a((Object) str, (Object) f9033f));
        f9034g = numberInfo;
        f9033f = str;
        if (z && C2464x.m968a(f9030c, numberInfo) && (C1694h.m3123a((Object) str, (Object) TelephonyManager.EXTRA_STATE_RINGING) || C1694h.m3123a((Object) str, (Object) TelephonyManager.EXTRA_STATE_OFFHOOK))) {
            C3104j.m157a(C3104j.f9124a, str2 + " CallScreening is enabled! res=false", (String) null, 2, (Object) null);
            return false;
        }
        C3104j.m157a(C3104j.f9124a, str2 + " res=" + String.valueOf(z), (String) null, 2, (Object) null);
        return z;
    }

    /* renamed from: a */
    public final Object m186a(NumberInfo numberInfo, long j, AbstractC1641c<? super C1775o> abstractC1641c) {
        f9030c = numberInfo;
        return m184a(EnumC3087a.CALL_SCREENING_SERVICE, numberInfo, j, abstractC1641c);
    }

    /* JADX WARN: Can't wrap try/catch for region: R(6:2|(2:4|(4:6|8|156|9))|7|8|156|9) */
    /* JADX WARN: Code restructure failed: missing block: B:130:0x0a37, code lost:
        if ((!kotlin.p081e.p083b.C1694h.m3123a((java.lang.Object) r8, (java.lang.Object) org.mistergroup.shouldianswer.utils.C3086e.f9041n)) != false) goto L131;
     */
    /* JADX WARN: Code restructure failed: missing block: B:152:0x0bb3, code lost:
        r8 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:153:0x0bb4, code lost:
        org.mistergroup.shouldianswer.utils.C3104j.m158a(org.mistergroup.shouldianswer.utils.C3104j.f9124a, r8, (java.lang.String) null, 2, (java.lang.Object) null);
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:102:0x0892 A[Catch: Exception -> 0x0bb3, TRY_ENTER, TRY_LEAVE, TryCatch #0 {Exception -> 0x0bb3, blocks: (B:13:0x00d9, B:16:0x0127, B:19:0x017c, B:22:0x01da, B:25:0x0232, B:28:0x0291, B:31:0x02de, B:34:0x032b, B:37:0x0378, B:40:0x03c5, B:43:0x03fc, B:46:0x040a, B:48:0x041a, B:52:0x0436, B:58:0x0485, B:63:0x0584, B:68:0x0610, B:73:0x0692, B:78:0x0714, B:83:0x0797, B:85:0x07f1, B:89:0x07fe, B:91:0x0808, B:94:0x0817, B:95:0x0874, B:95:0x0874, B:96:0x0877, B:98:0x087d, B:100:0x0887, B:102:0x0892, B:108:0x08f0, B:114:0x0963, B:116:0x09ab, B:120:0x09ff, B:126:0x0a13, B:129:0x0a2e, B:131:0x0a3a, B:131:0x0a3a, B:132:0x0a3d, B:137:0x0a96, B:139:0x0aa3, B:145:0x0afc, B:151:0x0b69), top: B:156:0x0049 }] */
    /* JADX WARN: Removed duplicated region for block: B:10:0x0088  */
    /* JADX WARN: Removed duplicated region for block: B:111:0x094a  */
    /* JADX WARN: Removed duplicated region for block: B:113:0x094d  */
    /* JADX WARN: Removed duplicated region for block: B:122:0x0a0b  */
    /* JADX WARN: Removed duplicated region for block: B:126:0x0a13 A[Catch: Exception -> 0x0bb3, TRY_ENTER, TRY_LEAVE, TryCatch #0 {Exception -> 0x0bb3, blocks: (B:13:0x00d9, B:16:0x0127, B:19:0x017c, B:22:0x01da, B:25:0x0232, B:28:0x0291, B:31:0x02de, B:34:0x032b, B:37:0x0378, B:40:0x03c5, B:43:0x03fc, B:46:0x040a, B:48:0x041a, B:52:0x0436, B:58:0x0485, B:63:0x0584, B:68:0x0610, B:73:0x0692, B:78:0x0714, B:83:0x0797, B:85:0x07f1, B:89:0x07fe, B:91:0x0808, B:94:0x0817, B:95:0x0874, B:95:0x0874, B:96:0x0877, B:98:0x087d, B:100:0x0887, B:102:0x0892, B:108:0x08f0, B:114:0x0963, B:116:0x09ab, B:120:0x09ff, B:126:0x0a13, B:129:0x0a2e, B:131:0x0a3a, B:131:0x0a3a, B:132:0x0a3d, B:137:0x0a96, B:139:0x0aa3, B:145:0x0afc, B:151:0x0b69), top: B:156:0x0049 }] */
    /* JADX WARN: Removed duplicated region for block: B:12:0x0092  */
    /* JADX WARN: Removed duplicated region for block: B:142:0x0ae8  */
    /* JADX WARN: Removed duplicated region for block: B:144:0x0aeb  */
    /* JADX WARN: Removed duplicated region for block: B:148:0x0b53  */
    /* JADX WARN: Removed duplicated region for block: B:150:0x0b56  */
    /* JADX WARN: Removed duplicated region for block: B:15:0x00e6  */
    /* JADX WARN: Removed duplicated region for block: B:18:0x0131  */
    /* JADX WARN: Removed duplicated region for block: B:21:0x0186  */
    /* JADX WARN: Removed duplicated region for block: B:24:0x01e7  */
    /* JADX WARN: Removed duplicated region for block: B:27:0x0251  */
    /* JADX WARN: Removed duplicated region for block: B:30:0x029e  */
    /* JADX WARN: Removed duplicated region for block: B:33:0x02eb  */
    /* JADX WARN: Removed duplicated region for block: B:36:0x0338  */
    /* JADX WARN: Removed duplicated region for block: B:39:0x0385  */
    /* JADX WARN: Removed duplicated region for block: B:42:0x03cf  */
    /* JADX WARN: Removed duplicated region for block: B:45:0x0406  */
    /* JADX WARN: Removed duplicated region for block: B:61:0x0581  */
    /* JADX WARN: Removed duplicated region for block: B:66:0x060d  */
    /* JADX WARN: Removed duplicated region for block: B:71:0x068f  */
    /* JADX WARN: Removed duplicated region for block: B:76:0x0711  */
    /* JADX WARN: Removed duplicated region for block: B:81:0x0794  */
    /* JADX WARN: Removed duplicated region for block: B:87:0x07fa  */
    /* JADX WARN: Removed duplicated region for block: B:98:0x087d A[Catch: Exception -> 0x0bb3, TryCatch #0 {Exception -> 0x0bb3, blocks: (B:13:0x00d9, B:16:0x0127, B:19:0x017c, B:22:0x01da, B:25:0x0232, B:28:0x0291, B:31:0x02de, B:34:0x032b, B:37:0x0378, B:40:0x03c5, B:43:0x03fc, B:46:0x040a, B:48:0x041a, B:52:0x0436, B:58:0x0485, B:63:0x0584, B:68:0x0610, B:73:0x0692, B:78:0x0714, B:83:0x0797, B:85:0x07f1, B:89:0x07fe, B:91:0x0808, B:94:0x0817, B:95:0x0874, B:95:0x0874, B:96:0x0877, B:98:0x087d, B:100:0x0887, B:102:0x0892, B:108:0x08f0, B:114:0x0963, B:116:0x09ab, B:120:0x09ff, B:126:0x0a13, B:129:0x0a2e, B:131:0x0a3a, B:131:0x0a3a, B:132:0x0a3d, B:137:0x0a96, B:139:0x0aa3, B:145:0x0afc, B:151:0x0b69), top: B:156:0x0049 }] */
    /* JADX WARN: Type inference failed for: r0v408, types: [long] */
    /* JADX WARN: Type inference failed for: r0v430, types: [long] */
    /* JADX WARN: Type inference failed for: r0v452, types: [long] */
    /* JADX WARN: Type inference failed for: r0v475, types: [long] */
    /* JADX WARN: Type inference failed for: r0v498, types: [long] */
    /* JADX WARN: Type inference failed for: r0v521, types: [long] */
    /* JADX WARN: Type inference failed for: r0v547, types: [long] */
    /* JADX WARN: Type inference failed for: r0v581, types: [long] */
    /* JADX WARN: Type inference failed for: r0v607, types: [long] */
    /* JADX WARN: Type inference failed for: r0v629, types: [long] */
    /* JADX WARN: Type inference failed for: r10v13 */
    /* JADX WARN: Type inference failed for: r10v14 */
    /* JADX WARN: Type inference failed for: r10v44 */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    final /* synthetic */ java.lang.Object m184a(org.mistergroup.shouldianswer.utils.C3086e.EnumC3087a r8, org.mistergroup.shouldianswer.model.NumberInfo r9, long r10, kotlin.p075c.AbstractC1641c<? super kotlin.C1775o> r12) {
        /*
            Method dump skipped, instructions count: 3010
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.mistergroup.shouldianswer.utils.C3086e.m184a(org.mistergroup.shouldianswer.utils.e$a, org.mistergroup.shouldianswer.model.NumberInfo, long, kotlin.c.c):java.lang.Object");
    }

    /* renamed from: a */
    public final void m189a(int i) {
        f9040m = i;
    }

    /* renamed from: a */
    public final void m187a(Context context, String str, AbstractC1663b<? super Boolean, C1775o> abstractC1663b) {
        C1694h.m3117b(context, "context");
        C1694h.m3117b(str, "phoneNumber");
        C3104j.m157a(C3104j.f9124a, "CallHelper.callNumber", (String) null, 2, (Object) null);
        try {
            if (C2398ai.f6930a.m1306E()) {
                C3135y.f9272b.m19e();
                List<PhoneAccountHandle> callCapablePhoneAccounts = C3135y.f9272b.m16h().getCallCapablePhoneAccounts();
                int size = callCapablePhoneAccounts.size();
                C3104j c3104j = C3104j.f9124a;
                C3104j.m157a(c3104j, "CallHelper.callNumber activeSubscriptionCount=" + String.valueOf(size), (String) null, 2, (Object) null);
                if (size > 1) {
                    ArrayList arrayList = new ArrayList();
                    for (PhoneAccountHandle phoneAccountHandle : callCapablePhoneAccounts) {
                        PhoneAccount phoneAccount = C3135y.f9272b.m16h().getPhoneAccount(phoneAccountHandle);
                        C1694h.m3122a((Object) phoneAccount, "phoneAccount");
                        arrayList.add(phoneAccount.getLabel());
                    }
                    Object[] array = arrayList.toArray(new CharSequence[0]);
                    if (array == null) {
                        throw new TypeCastException("null cannot be cast to non-null type kotlin.Array<T>");
                    }
                    C3104j.m157a(C3104j.f9124a, "CallHelper.callNumber showSubscription dialog", (String) null, 2, (Object) null);
                    new DialogInterfaceC0090d.C0091a(context).m7920a(context.getString(2131755182)).m7917a((CharSequence[]) array, new DialogInterface$OnClickListenerC3088b(callCapablePhoneAccounts, context, str, abstractC1663b)).m7916b().show();
                    return;
                }
            }
            boolean m188a = m188a(context, str, C3135y.f9272b.m16h().getDefaultOutgoingPhoneAccount("tel"));
            if (abstractC1663b == null) {
                return;
            }
            abstractC1663b.mo138a(Boolean.valueOf(m188a));
        } catch (Exception e) {
            C3104j.m158a(C3104j.f9124a, e, (String) null, 2, (Object) null);
            if (abstractC1663b == null) {
                return;
            }
            abstractC1663b.mo138a(false);
        }
    }

    /* renamed from: a */
    public final void m185a(EnumC3087a enumC3087a, String str) {
        C1694h.m3117b(enumC3087a, FirebaseAnalytics.Param.SOURCE);
        try {
            NumberInfo numberInfo = new NumberInfo(str, C3099f.f9116a.m177a(), EnumC2436k.INCOMING, true);
            C3104j c3104j = C3104j.f9124a;
            C3104j.m157a(c3104j, "CallHelper.onRinging  source=" + enumC3087a + " number=" + C2464x.m969a(numberInfo), (String) null, 2, (Object) null);
            String str2 = TelephonyManager.EXTRA_STATE_RINGING;
            C1694h.m3122a((Object) str2, "TelephonyManager.EXTRA_STATE_RINGING");
            if (!m183a(enumC3087a, numberInfo, str2)) {
                return;
            }
            if (C2464x.m967b(numberInfo)) {
                if (!C3115o.f9175a.m115h()) {
                    C3104j.m152c(C3104j.f9124a, "CallHelper.onRinging Number is blank, No permission to read_phone_state!", null, 2, null);
                    return;
                }
                C3104j.m152c(C3104j.f9124a, "CallHelper.onRinging Number is blank, permissions OK!", null, 2, null);
            }
            f9038k = true;
            f9031d = numberInfo;
            C1892g.m2677a(C1843bd.f4587a, C3084c.m193a(), null, new C3098i(enumC3087a, numberInfo, new Date().getTime(), null), 2, null);
        } catch (Exception e) {
            C3104j.m158a(C3104j.f9124a, e, (String) null, 2, (Object) null);
        }
    }

    /* renamed from: a */
    public final boolean m188a(Context context, String str, PhoneAccountHandle phoneAccountHandle) {
        C1694h.m3117b(context, "context");
        C1694h.m3117b(str, "phoneNumber");
        if (C3115o.f9175a.m118e()) {
            Uri parse = Uri.parse("tel:" + Uri.encode(str));
            Bundle bundle = new Bundle();
            if (phoneAccountHandle != null) {
                bundle.putParcelable("android.telecom.extra.PHONE_ACCOUNT_HANDLE", phoneAccountHandle);
            }
            C3104j.m157a(C3104j.f9124a, "CallHelper.callNumberEx placeCall", (String) null, 2, (Object) null);
            C3135y.f9272b.m16h().placeCall(parse, bundle);
            return true;
        }
        return false;
    }

    /* renamed from: b */
    public final Object m181b(NumberInfo numberInfo, long j, AbstractC1641c<? super C1775o> abstractC1641c) {
        f9030c = numberInfo;
        return m184a(EnumC3087a.CALL_PRESENTER, numberInfo, j, abstractC1641c);
    }

    /* JADX WARN: Type inference failed for: r0v73, types: [org.mistergroup.shouldianswer.model.NumberInfo, T] */
    /* JADX WARN: Type inference failed for: r0v9, types: [org.mistergroup.shouldianswer.model.NumberInfo, T] */
    /* renamed from: b */
    public final void m180b(EnumC3087a enumC3087a, String str) {
        long time;
        C1699m.C1702c c1702c;
        NumberInfo numberInfo;
        String str2;
        C1694h.m3117b(enumC3087a, FirebaseAnalytics.Param.SOURCE);
        try {
            time = new Date().getTime();
            c1702c = new C1699m.C1702c();
            c1702c.f4391a = new NumberInfo(str, C3099f.f9116a.m177a(), EnumC2436k.INCOMING, true);
            C3104j c3104j = C3104j.f9124a;
            C3104j.m157a(c3104j, "CallHelper.onOffhook source=" + enumC3087a + " number=" + C2464x.m969a((NumberInfo) c1702c.f4391a) + " latestState=" + String.valueOf(f9040m), (String) null, 2, (Object) null);
            if (C2464x.m964e((NumberInfo) c1702c.f4391a) && C2464x.m966c(f9031d)) {
                ?? r0 = f9031d;
                if (r0 == 0) {
                    C1694h.m3124a();
                }
                c1702c.f4391a = r0;
                C3104j.m157a(C3104j.f9124a, "CallHelper.onOffhook use latestRingingNumber", (String) null, 2, (Object) null);
            }
            numberInfo = (NumberInfo) c1702c.f4391a;
            str2 = TelephonyManager.EXTRA_STATE_OFFHOOK;
            C1694h.m3122a((Object) str2, "TelephonyManager.EXTRA_STATE_OFFHOOK");
        } catch (Exception e) {
            C3104j.m158a(C3104j.f9124a, e, (String) null, 2, (Object) null);
        }
        if (!m183a(enumC3087a, numberInfo, str2)) {
            return;
        }
        if (!f9039l && !f9038k) {
            if (!C2464x.m966c((NumberInfo) c1702c.f4391a)) {
                C3104j.f9124a.m163a(new Exception("Outgoing call detected from missing ringing but NUMBER is BLANK!"));
                return;
            }
            C3104j.m157a(C3104j.f9124a, "CallHelper.onOffhook without previous ringing! Consider it OUTGOING call!", (String) null, 2, (Object) null);
            f9036i = (NumberInfo) c1702c.f4391a;
            f9039l = true;
            C3104j.m157a(C3104j.f9124a, "CallHelper.onOffhook let's check this number as outgoing!", (String) null, 2, (Object) null);
            ((NumberInfo) c1702c.f4391a).m1480a(EnumC2436k.OUTGOING);
            C1890e.m2688a(C3084c.m193a(), new C3093f(enumC3087a, c1702c, time, null));
        }
        f9032e = (NumberInfo) c1702c.f4391a;
        f9040m = 2;
        f9037j = true;
        setChanged();
        notifyObservers();
        f9040m = 2;
    }

    /* JADX WARN: Type inference failed for: r0v204, types: [org.mistergroup.shouldianswer.model.NumberInfo, T] */
    /* JADX WARN: Type inference failed for: r0v220, types: [org.mistergroup.shouldianswer.model.NumberInfo, T] */
    /* JADX WARN: Type inference failed for: r0v5, types: [org.mistergroup.shouldianswer.model.NumberInfo, T] */
    /* renamed from: c */
    public final void m179c(EnumC3087a enumC3087a, String str) {
        C1699m.C1702c c1702c;
        String str2;
        NumberInfo numberInfo;
        String str3;
        C1694h.m3117b(enumC3087a, FirebaseAnalytics.Param.SOURCE);
        try {
            c1702c = new C1699m.C1702c();
            c1702c.f4391a = new NumberInfo(str, C3099f.f9116a.m177a(), EnumC2436k.INCOMING, true);
            String str4 = "CallHelper.onIdle source=" + enumC3087a + " number=" + C2464x.m969a((NumberInfo) c1702c.f4391a);
            String str5 = str4;
            if (C2464x.m964e((NumberInfo) c1702c.f4391a)) {
                str5 = str4;
                if (C2464x.m966c(f9032e)) {
                    ?? r0 = f9032e;
                    if (r0 == 0) {
                        C1694h.m3124a();
                    }
                    c1702c.f4391a = r0;
                    str5 = str4 + " use latestOffhookNumber=" + C2464x.m969a((NumberInfo) c1702c.f4391a);
                }
            }
            str2 = str5;
            if (C2464x.m964e((NumberInfo) c1702c.f4391a)) {
                str2 = str5;
                if (C2464x.m966c(f9031d)) {
                    ?? r02 = f9031d;
                    if (r02 == 0) {
                        C1694h.m3124a();
                    }
                    c1702c.f4391a = r02;
                    str2 = str5 + " use latestRingingNumber=" + C2464x.m969a((NumberInfo) c1702c.f4391a);
                }
            }
            numberInfo = (NumberInfo) c1702c.f4391a;
            str3 = TelephonyManager.EXTRA_STATE_IDLE;
            C1694h.m3122a((Object) str3, "TelephonyManager.EXTRA_STATE_IDLE");
        } catch (Exception e) {
            C3104j.m158a(C3104j.f9124a, e, (String) null, 2, (Object) null);
        }
        if (!m183a(enumC3087a, numberInfo, str3)) {
            C3104j.m157a(C3104j.f9124a, "CallHelper.onIdle return with info " + str2, (String) null, 2, (Object) null);
            return;
        }
        String str6 = str2;
        if (f9037j) {
            str6 = str2 + " clear isOffhook";
            f9037j = false;
        }
        String str7 = str6;
        if (f9038k) {
            str7 = str6 + " clear isRinging";
            f9038k = false;
        }
        String str8 = str7;
        if (f9039l) {
            str8 = str7 + " clear isOutgoingCall";
            f9039l = false;
        }
        String str9 = str8;
        if (C2464x.m966c(f9032e)) {
            str9 = str8 + " clear latestOffhookNumber";
            f9032e = null;
        }
        String str10 = str9;
        if (C2464x.m966c(f9031d)) {
            str10 = str9 + " clear latestRingingNumber";
            f9031d = null;
        }
        String str11 = str10;
        if (C2464x.m966c(f9036i)) {
            str11 = str10 + " clear latestOutgoingNumber";
            f9036i = null;
        }
        String str12 = str11;
        if (C2464x.m966c(f9035h)) {
            str12 = str11 + " clear lastCheckedNumber";
            f9035h = null;
        }
        String str13 = str12;
        if (C2464x.m966c(f9030c)) {
            str13 = str12 + " clear lastCallScreeningNumber";
            f9030c = null;
        }
        C2279h.f6399a.m1674b();
        String str14 = str13;
        if (f9029b) {
            String str15 = str13 + " showInfoOnIdle";
            if (!C2398ai.f6930a.m1234y() || !C2464x.m965d((NumberInfo) c1702c.f4391a) || C2279h.f6399a.m1676a()) {
                str14 = str15;
                if (C2464x.m964e((NumberInfo) c1702c.f4391a)) {
                    str14 = str15;
                    if (!C3115o.f9175a.m110m()) {
                        C2273d.f6370a.m1710a(false);
                        str14 = str15;
                    }
                }
            } else {
                str14 = str15 + " showNumberDetailActivity";
                try {
                    C1892g.m2677a(C1843bd.f4587a, null, null, new C3091e(c1702c, null), 3, null);
                } catch (Exception e2) {
                    C3104j.m158a(C3104j.f9124a, e2, (String) null, 2, (Object) null);
                }
            }
        }
        C3104j.m157a(C3104j.f9124a, str14 + " clear showInfoOnIdle", (String) null, 2, (Object) null);
        f9029b = false;
        C2266a.f6340a.m1712a(null);
        f9040m = 0;
        setChanged();
        notifyObservers();
        f9040m = 0;
    }

    /* renamed from: d */
    public final boolean m178d(EnumC3087a enumC3087a, String str) {
        C1694h.m3117b(enumC3087a, FirebaseAnalytics.Param.SOURCE);
        C1694h.m3117b(str, "phoneNumber");
        f9039l = true;
        NumberInfo numberInfo = new NumberInfo(str, C3099f.f9116a.m177a(), EnumC2436k.OUTGOING, true);
        String str2 = "CallHelper.onOutgoingCall number=" + C2464x.m969a(numberInfo);
        f9036i = numberInfo;
        long time = new Date().getTime();
        C2405c.f6946b.m1217A();
        C1892g.m2677a(C1843bd.f4587a, C3084c.m193a(), null, new C3094g(numberInfo, time, null), 2, null);
        C1699m.C1700a c1700a = new C1699m.C1700a();
        boolean z = false;
        c1700a.f4389a = false;
        C1699m.C1700a c1700a2 = new C1699m.C1700a();
        c1700a2.f4389a = false;
        C1890e.m2688a(C3084c.m193a(), new C3095h(c1700a, numberInfo, c1700a2, null));
        String str3 = str2;
        if (c1700a2.f4389a) {
            new C2266a().m1713a(numberInfo, time);
            str3 = (str2 + " wantBlock") + " blocked";
            c1700a.f4389a = false;
            z = true;
        }
        String str4 = str3;
        if (c1700a.f4389a) {
            String str5 = str3 + " wantAlert";
            boolean m944d = MonitoringService.f7214a.m944d();
            String str6 = str5;
            if (!m944d) {
                str6 = str5 + " checkWithTimer";
            }
            str4 = str6;
            if (C2398ai.f6930a.m1275e() == EnumC2378a.POPUP) {
                C2279h.f6399a.m1675a(numberInfo, MyApp.f5480c.m1802a(), true ^ m944d);
                str4 = str6;
            }
        }
        C3104j.m157a(C3104j.f9124a, str4, (String) null, 2, (Object) null);
        if (c1700a2.f4389a) {
            C3104j.m157a(C3104j.f9124a, "BLOCKAUDIT number:" + C2464x.m969a(numberInfo) + ",country=" + numberInfo.m1475c() + ",typ=outgoing", (String) null, 2, (Object) null);
        }
        return z;
    }
}
