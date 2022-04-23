package com.criteo.publisher.l;

import com.criteo.publisher.CriteoErrorCode;
import com.criteo.publisher.CriteoInterstitial;
import com.criteo.publisher.CriteoInterstitialAdListener;
import com.criteo.publisher.e.c;
import com.criteo.publisher.j.b;
import com.criteo.publisher.logging.g;
import com.criteo.publisher.logging.h;
import com.criteo.publisher.o;
import com.criteo.publisher.v;
import java.lang.ref.Reference;
import java.lang.ref.WeakReference;
import kotlin.jvm.internal.p;
/* loaded from: classes2-dex2jar.jar:com/criteo/publisher/l/d.class */
public final class d {

    /* renamed from: a  reason: collision with root package name */
    final CriteoInterstitial f17425a;

    /* renamed from: b  reason: collision with root package name */
    final Reference<CriteoInterstitialAdListener> f17426b;

    /* renamed from: c  reason: collision with root package name */
    private final g f17427c;

    /* renamed from: d  reason: collision with root package name */
    private final c f17428d;

    /* loaded from: classes2-dex2jar.jar:com/criteo/publisher/l/d$a.class */
    public static final class a extends v {

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ o f17430b;

        a(o oVar) {
            this.f17430b = oVar;
        }

        @Override // com.criteo.publisher.v
        public final void a() {
            CriteoInterstitialAdListener criteoInterstitialAdListener = d.this.f17426b.get();
            if (criteoInterstitialAdListener != null) {
                d dVar = d.this;
                switch (c.f17424a[this.f17430b.ordinal()]) {
                    case 1:
                        criteoInterstitialAdListener.onAdReceived(dVar.f17425a);
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
    public d(CriteoInterstitial interstitial, CriteoInterstitialAdListener criteoInterstitialAdListener, c runOnUiThreadExecutor) {
        this(interstitial, new WeakReference(criteoInterstitialAdListener), runOnUiThreadExecutor);
        p.c(interstitial, "interstitial");
        p.c(runOnUiThreadExecutor, "runOnUiThreadExecutor");
    }

    public d(CriteoInterstitial interstitial, Reference<CriteoInterstitialAdListener> listenerRef, c runOnUiThreadExecutor) {
        p.c(interstitial, "interstitial");
        p.c(listenerRef, "listenerRef");
        p.c(runOnUiThreadExecutor, "runOnUiThreadExecutor");
        this.f17425a = interstitial;
        this.f17426b = listenerRef;
        this.f17428d = runOnUiThreadExecutor;
        g a2 = h.a(getClass());
        p.a((Object) a2, "LoggerFactory.getLogger(javaClass)");
        this.f17427c = a2;
    }

    private void a(g gVar, o oVar) {
        if (oVar == o.VALID) {
            gVar.a(b.b(this.f17425a));
        } else if (oVar == o.INVALID || oVar == o.INVALID_CREATIVE) {
            gVar.a(b.c(this.f17425a));
        }
    }

    public final void a(o code) {
        p.c(code, "code");
        a(this.f17427c, code);
        this.f17428d.a(new a(code));
    }
}
