package com.criteo.publisher;

import android.webkit.WebViewClient;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import com.criteo.publisher.model.AdUnit;
import com.criteo.publisher.model.C2046r;
import com.criteo.publisher.model.C2052w;
import com.criteo.publisher.p020a0.EnumC1908a;
import com.criteo.publisher.p022o.C2084b;
import com.criteo.publisher.p023p.AbstractC2089c;
import com.criteo.publisher.p023p.C2086a;
import com.criteo.publisher.p026s.ExecutorC2095a;
import com.criteo.publisher.p034z.RunnableC2177a;
import com.criteo.publisher.p034z.RunnableC2179b;
import java.lang.ref.WeakReference;
/* renamed from: com.criteo.publisher.d */
/* loaded from: classes-dex2jar.jar:com/criteo/publisher/d.class */
public class C1967d {
    @NonNull

    /* renamed from: a */
    public final WeakReference<CriteoBannerView> f2119a;
    @Nullable

    /* renamed from: b */
    public final CriteoBannerAdListener f2120b;
    @NonNull

    /* renamed from: c */
    public final Criteo f2121c;
    @NonNull

    /* renamed from: d */
    public final C2084b f2122d;
    @NonNull

    /* renamed from: e */
    public final ExecutorC2095a f2123e;

    /* renamed from: com.criteo.publisher.d$a */
    /* loaded from: classes-dex2jar.jar:com/criteo/publisher/d$a.class */
    public class C1968a implements AbstractC2089c {
        public C1968a() {
        }

        @Override // com.criteo.publisher.p023p.AbstractC2089c
        /* renamed from: a */
        public void mo35710a() {
            C1967d.this.m35945a(EnumC1972g.CLOSE);
        }

        @Override // com.criteo.publisher.p023p.AbstractC2089c
        /* renamed from: b */
        public void mo35709b() {
            C1967d.this.m35945a(EnumC1972g.CLICK);
        }
    }

    public C1967d(@NonNull CriteoBannerView criteoBannerView, @NonNull Criteo criteo, @NonNull C2084b bVar, @NonNull ExecutorC2095a aVar) {
        this.f2119a = new WeakReference<>(criteoBannerView);
        this.f2120b = criteoBannerView.getCriteoBannerAdListener();
        this.f2121c = criteo;
        this.f2122d = bVar;
        this.f2123e = aVar;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: a */
    public void m35945a(@NonNull EnumC1972g gVar) {
        this.f2123e.m35699a(new RunnableC2177a(this.f2120b, this.f2119a, gVar));
    }

    @VisibleForTesting
    /* renamed from: a */
    public WebViewClient m35948a() {
        return new C2086a(new C1968a(), this.f2122d.m35715a());
    }

    /* renamed from: a */
    public void m35947a(@Nullable BidToken bidToken) {
        C2046r a = this.f2121c.mo35881a(bidToken, EnumC1908a.CRITEO_BANNER);
        if (a == null) {
            m35945a(EnumC1972g.INVALID);
            return;
        }
        m35945a(EnumC1972g.VALID);
        m35943a(a.m35822b());
    }

    /* renamed from: a */
    public void m35944a(@Nullable AdUnit adUnit) {
        C2052w a = this.f2121c.mo35880a(adUnit);
        if (a == null) {
            m35945a(EnumC1972g.INVALID);
            return;
        }
        m35945a(EnumC1972g.VALID);
        m35943a(a.m35796c());
    }

    @VisibleForTesting
    /* renamed from: a */
    public void m35943a(@NonNull String str) {
        this.f2123e.m35699a(new RunnableC2179b(this.f2119a, m35948a(), this.f2121c.mo35882a(), str));
    }
}
