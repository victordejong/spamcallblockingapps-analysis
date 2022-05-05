package com.criteo.publisher;

import android.content.Context;
import android.util.Log;
import android.webkit.WebView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import com.criteo.publisher.model.BannerAdUnit;
import com.criteo.publisher.p020a0.C1927o;
/* loaded from: classes-dex2jar.jar:com/criteo/publisher/CriteoBannerView.class */
public class CriteoBannerView extends WebView {

    /* renamed from: e */
    public static final String f1986e = CriteoBannerView.class.getSimpleName();
    @Nullable

    /* renamed from: a */
    public final BannerAdUnit f1987a;
    @Nullable

    /* renamed from: b */
    public final Criteo f1988b;
    @Nullable

    /* renamed from: c */
    public CriteoBannerAdListener f1989c;
    @Nullable

    /* renamed from: d */
    public C1967d f1990d;

    public CriteoBannerView(@NonNull Context context, @Nullable BannerAdUnit bannerAdUnit) {
        this(context, bannerAdUnit, null);
    }

    @VisibleForTesting
    public CriteoBannerView(@NonNull Context context, @Nullable BannerAdUnit bannerAdUnit, @Nullable Criteo criteo) {
        super(context);
        this.f1987a = bannerAdUnit;
        this.f1988b = criteo;
    }

    /* renamed from: a */
    private void m36065a() {
        getOrCreateController().m35944a(this.f1987a);
    }

    /* renamed from: a */
    private void m36064a(@Nullable BidToken bidToken) {
        if (bidToken == null || C1927o.m36005a(this.f1987a, bidToken.m36068a())) {
            getOrCreateController().m35947a(bidToken);
        }
    }

    @NonNull
    private Criteo getCriteo() {
        Criteo criteo = this.f1988b;
        Criteo criteo2 = criteo;
        if (criteo == null) {
            criteo2 = Criteo.getInstance();
        }
        return criteo2;
    }

    @Nullable
    public CriteoBannerAdListener getCriteoBannerAdListener() {
        return this.f1989c;
    }

    @NonNull
    @VisibleForTesting
    public C1967d getOrCreateController() {
        if (this.f1990d == null) {
            this.f1990d = getCriteo().createBannerController(this);
        }
        return this.f1990d;
    }

    public void loadAd() {
        try {
            m36065a();
        } catch (Throwable th) {
            Log.e(f1986e, "Internal error while loading banner.", th);
        }
    }

    public void loadAd(@Nullable BidToken bidToken) {
        try {
            m36064a(bidToken);
        } catch (Throwable th) {
            Log.e(f1986e, "Internal error while loading banner from bid token.", th);
        }
    }

    public void setCriteoBannerAdListener(@Nullable CriteoBannerAdListener criteoBannerAdListener) {
        this.f1989c = criteoBannerAdListener;
    }
}
