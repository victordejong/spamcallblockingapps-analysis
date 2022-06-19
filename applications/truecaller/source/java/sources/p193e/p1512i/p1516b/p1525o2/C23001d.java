package p193e.p1512i.p1516b.p1525o2;

import com.criteo.publisher.CriteoErrorCode;
import com.criteo.publisher.CriteoInterstitial;
import com.criteo.publisher.CriteoInterstitialAdListener;
import com.criteo.publisher.model.InterstitialAdUnit;
import java.lang.ref.Reference;
import java.lang.ref.WeakReference;
import java.util.Objects;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p1512i.p1516b.AbstractRunnableC22929c3;
import p193e.p1512i.p1516b.EnumC23143v2;
import p193e.p1512i.p1516b.p1528q2.C23019f;
import p193e.p1512i.p1516b.p1528q2.C23021h;
import p193e.p1512i.p1516b.p1528q2.C23023i;
import p193e.p1512i.p1516b.p1536w1.ExecutorC23149c;
import s1.z.c.l;
/* renamed from: e.i.b.o2.d */
/* loaded from: classes-dex2jar.jar:e/i/b/o2/d.class */
public class C23001d {

    /* renamed from: a */
    public final C23021h f63744a;

    /* renamed from: b */
    public final CriteoInterstitial f63745b;

    /* renamed from: c */
    public final Reference<CriteoInterstitialAdListener> f63746c;

    /* renamed from: d */
    public final ExecutorC23149c f63747d;

    /* renamed from: e.i.b.o2.d$a */
    /* loaded from: classes-dex2jar.jar:e/i/b/o2/d$a.class */
    public static final class C23002a extends AbstractRunnableC22929c3 {

        /* renamed from: d */
        public final /* synthetic */ EnumC23143v2 f63749d;

        public C23002a(EnumC23143v2 enumC23143v2) {
            C23001d.this = r4;
            this.f63749d = enumC23143v2;
        }

        @Override // p193e.p1512i.p1516b.AbstractRunnableC22929c3
        /* renamed from: a */
        public void mo7379a() {
            CriteoInterstitialAdListener criteoInterstitialAdListener = C23001d.this.f63746c.get();
            if (criteoInterstitialAdListener != null) {
                C23001d c23001d = C23001d.this;
                EnumC23143v2 enumC23143v2 = this.f63749d;
                Objects.requireNonNull(c23001d);
                switch (C23000c.f63743a[enumC23143v2.ordinal()]) {
                    case 1:
                        criteoInterstitialAdListener.onAdReceived(c23001d.f63745b);
                        return;
                    case 2:
                        criteoInterstitialAdListener.onAdFailedToReceive(CriteoErrorCode.ERROR_CODE_NO_FILL);
                        return;
                    case 3:
                        criteoInterstitialAdListener.onAdFailedToReceive(CriteoErrorCode.ERROR_CODE_NETWORK_ERROR);
                        return;
                    case 4:
                        criteoInterstitialAdListener.onAdOpened();
                        return;
                    case 5:
                        criteoInterstitialAdListener.onAdClosed();
                        return;
                    case 6:
                        criteoInterstitialAdListener.onAdClicked();
                        criteoInterstitialAdListener.onAdLeftApplication();
                        return;
                    default:
                        return;
                }
            }
        }
    }

    public C23001d(CriteoInterstitial criteoInterstitial, CriteoInterstitialAdListener criteoInterstitialAdListener, ExecutorC23149c executorC23149c) {
        l.f(criteoInterstitial, "interstitial");
        l.f(executorC23149c, "runOnUiThreadExecutor");
        WeakReference weakReference = new WeakReference(criteoInterstitialAdListener);
        l.f(criteoInterstitial, "interstitial");
        l.f(weakReference, "listenerRef");
        l.f(executorC23149c, "runOnUiThreadExecutor");
        this.f63745b = criteoInterstitial;
        this.f63746c = weakReference;
        this.f63747d = executorC23149c;
        C23021h m7583a = C23023i.m7583a(C23001d.class);
        l.b(m7583a, "LoggerFactory.getLogger(javaClass)");
        this.f63744a = m7583a;
    }

    /* renamed from: a */
    public void m7594a(EnumC23143v2 enumC23143v2) {
        l.f(enumC23143v2, "code");
        C23021h c23021h = this.f63744a;
        InterstitialAdUnit interstitialAdUnit = null;
        if (enumC23143v2 == EnumC23143v2.VALID) {
            CriteoInterstitial criteoInterstitial = this.f63745b;
            StringBuilder m8728C = C22128a.m8728C("Interstitial(");
            if (criteoInterstitial != null) {
                l.f(criteoInterstitial, "$this$adUnit");
                interstitialAdUnit = criteoInterstitial.interstitialAdUnit;
            }
            m8728C.append(interstitialAdUnit);
            m8728C.append(") is loaded");
            c23021h.m7586a(new C23019f(0, m8728C.toString(), null, null, 13));
        } else if (enumC23143v2 == EnumC23143v2.INVALID || enumC23143v2 == EnumC23143v2.INVALID_CREATIVE) {
            CriteoInterstitial criteoInterstitial2 = this.f63745b;
            StringBuilder m8728C2 = C22128a.m8728C("Interstitial(");
            InterstitialAdUnit interstitialAdUnit2 = null;
            if (criteoInterstitial2 != null) {
                l.f(criteoInterstitial2, "$this$adUnit");
                interstitialAdUnit2 = criteoInterstitial2.interstitialAdUnit;
            }
            m8728C2.append(interstitialAdUnit2);
            m8728C2.append(") failed to load");
            c23021h.m7586a(new C23019f(0, m8728C2.toString(), null, null, 13));
        }
        this.f63747d.f64119a.post(new C23002a(enumC23143v2));
    }
}
