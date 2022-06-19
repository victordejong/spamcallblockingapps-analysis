package com.criteo.publisher.p254l;

import com.criteo.publisher.AbstractRunnableC8529v;
import com.criteo.publisher.CriteoErrorCode;
import com.criteo.publisher.CriteoInterstitial;
import com.criteo.publisher.CriteoInterstitialAdListener;
import com.criteo.publisher.EnumC8518o;
import com.criteo.publisher.logging.C8402g;
import com.criteo.publisher.logging.C8404h;
import com.criteo.publisher.p245e.ExecutorC8277c;
import com.criteo.publisher.p250j.C8354b;
import java.lang.ref.Reference;
import java.lang.ref.WeakReference;
import kotlin.jvm.internal.C18524p;
/* renamed from: com.criteo.publisher.l.d */
/* loaded from: classes2-dex2jar.jar:com/criteo/publisher/l/d.class */
public final class C8387d {

    /* renamed from: a */
    final CriteoInterstitial f30095a;

    /* renamed from: b */
    final Reference<CriteoInterstitialAdListener> f30096b;

    /* renamed from: c */
    private final C8402g f30097c;

    /* renamed from: d */
    private final ExecutorC8277c f30098d;

    /* renamed from: com.criteo.publisher.l.d$a */
    /* loaded from: classes2-dex2jar.jar:com/criteo/publisher/l/d$a.class */
    public static final class C8388a extends AbstractRunnableC8529v {

        /* renamed from: b */
        final /* synthetic */ EnumC8518o f30100b;

        C8388a(EnumC8518o enumC8518o) {
            C8387d.this = r4;
            this.f30100b = enumC8518o;
        }

        @Override // com.criteo.publisher.AbstractRunnableC8529v
        /* renamed from: a */
        public final void mo25368a() {
            CriteoInterstitialAdListener criteoInterstitialAdListener = C8387d.this.f30096b.get();
            if (criteoInterstitialAdListener != null) {
                C8387d c8387d = C8387d.this;
                switch (C8386c.f30094a[this.f30100b.ordinal()]) {
                    case 1:
                        criteoInterstitialAdListener.onAdReceived(c8387d.f30095a);
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

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public C8387d(CriteoInterstitial interstitial, CriteoInterstitialAdListener criteoInterstitialAdListener, ExecutorC8277c runOnUiThreadExecutor) {
        this(interstitial, new WeakReference(criteoInterstitialAdListener), runOnUiThreadExecutor);
        C18524p.m3841c(interstitial, "interstitial");
        C18524p.m3841c(runOnUiThreadExecutor, "runOnUiThreadExecutor");
    }

    public C8387d(CriteoInterstitial interstitial, Reference<CriteoInterstitialAdListener> listenerRef, ExecutorC8277c runOnUiThreadExecutor) {
        C18524p.m3841c(interstitial, "interstitial");
        C18524p.m3841c(listenerRef, "listenerRef");
        C18524p.m3841c(runOnUiThreadExecutor, "runOnUiThreadExecutor");
        this.f30095a = interstitial;
        this.f30096b = listenerRef;
        this.f30098d = runOnUiThreadExecutor;
        C8402g m25741a = C8404h.m25741a(getClass());
        C18524p.m3849a((Object) m25741a, "LoggerFactory.getLogger(javaClass)");
        this.f30097c = m25741a;
    }

    /* renamed from: a */
    private void m25752a(C8402g c8402g, EnumC8518o enumC8518o) {
        if (enumC8518o == EnumC8518o.VALID) {
            c8402g.m25744a(C8354b.m25800b(this.f30095a));
        } else if (enumC8518o != EnumC8518o.INVALID && enumC8518o != EnumC8518o.INVALID_CREATIVE) {
        } else {
            c8402g.m25744a(C8354b.m25799c(this.f30095a));
        }
    }

    /* renamed from: a */
    public final void m25751a(EnumC8518o code) {
        C18524p.m3841c(code, "code");
        m25752a(this.f30097c, code);
        this.f30098d.m25926a(new C8388a(code));
    }
}
