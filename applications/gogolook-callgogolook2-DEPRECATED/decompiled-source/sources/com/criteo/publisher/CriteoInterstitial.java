package com.criteo.publisher;

import android.content.Context;
import android.util.Log;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import com.criteo.publisher.model.C2054y;
import com.criteo.publisher.model.InterstitialAdUnit;
import com.criteo.publisher.p020a0.C1927o;
/* loaded from: classes-dex2jar.jar:com/criteo/publisher/CriteoInterstitial.class */
public class CriteoInterstitial {

    /* renamed from: f */
    public static final String f1992f = "CriteoInterstitial";

    /* renamed from: a */
    public final InterstitialAdUnit f1993a;
    @Nullable

    /* renamed from: b */
    public final Criteo f1994b;
    @Nullable

    /* renamed from: c */
    public C1971f f1995c;
    @Nullable

    /* renamed from: d */
    public CriteoInterstitialAdListener f1996d;
    @Nullable

    /* renamed from: e */
    public CriteoInterstitialAdDisplayListener f1997e;

    public CriteoInterstitial(@NonNull Context context, InterstitialAdUnit interstitialAdUnit) {
        this(context, interstitialAdUnit, null);
    }

    @VisibleForTesting
    public CriteoInterstitial(@NonNull Context context, InterstitialAdUnit interstitialAdUnit, @Nullable Criteo criteo) {
        this.f1993a = interstitialAdUnit;
        this.f1994b = criteo;
    }

    /* renamed from: a */
    private void m36062a(@Nullable BidToken bidToken) {
        if (bidToken == null || C1927o.m36005a(this.f1993a, bidToken.m36068a())) {
            m36063a().m35937a(bidToken);
        }
    }

    /* renamed from: b */
    private void m36061b() {
        m36063a().m35935a(this.f1993a);
    }

    /* renamed from: c */
    private void m36060c() {
        m36063a().m35933b();
    }

    @NonNull
    /* renamed from: d */
    private Criteo m36059d() {
        Criteo criteo = this.f1994b;
        Criteo criteo2 = criteo;
        if (criteo == null) {
            criteo2 = Criteo.getInstance();
        }
        return criteo2;
    }

    @NonNull
    @VisibleForTesting
    /* renamed from: a */
    public C1971f m36063a() {
        if (this.f1995c == null) {
            Criteo d = m36059d();
            this.f1995c = new C1971f(this.f1996d, this.f1997e, new C2054y(d.mo35882a()), d.mo35878c(), d);
        }
        return this.f1995c;
    }

    public boolean isAdLoaded() {
        try {
            return m36063a().m35938a();
        } catch (Throwable th) {
            Log.e(f1992f, "Internal error while detecting interstitial load state.", th);
            return false;
        }
    }

    public void loadAd() {
        try {
            m36061b();
        } catch (Throwable th) {
            Log.e(f1992f, "Internal error while loading interstitial.", th);
        }
    }

    public void loadAd(@Nullable BidToken bidToken) {
        try {
            m36062a(bidToken);
        } catch (Throwable th) {
            Log.e(f1992f, "Internal error while loading interstitial from bid token.", th);
        }
    }

    public void setCriteoInterstitialAdDisplayListener(@Nullable CriteoInterstitialAdDisplayListener criteoInterstitialAdDisplayListener) {
        this.f1997e = criteoInterstitialAdDisplayListener;
    }

    public void setCriteoInterstitialAdListener(@Nullable CriteoInterstitialAdListener criteoInterstitialAdListener) {
        this.f1996d = criteoInterstitialAdListener;
    }

    public void show() {
        try {
            m36060c();
        } catch (Throwable th) {
            Log.e(f1992f, "Internal error while showing interstitial.", th);
        }
    }
}
