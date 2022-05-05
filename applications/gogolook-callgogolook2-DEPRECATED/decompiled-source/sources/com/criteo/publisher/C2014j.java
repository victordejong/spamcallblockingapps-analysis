package com.criteo.publisher;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.criteo.publisher.model.AdUnit;
import com.criteo.publisher.model.C2042p;
import com.criteo.publisher.model.C2043q;
import com.criteo.publisher.model.C2046r;
import com.criteo.publisher.model.C2052w;
import com.criteo.publisher.p020a0.EnumC1908a;
import com.criteo.publisher.p020a0.FutureC1919j;
import com.criteo.publisher.p026s.ExecutorC2095a;
import com.criteo.publisher.p029v.C2157a;
import java.util.concurrent.Future;
/* renamed from: com.criteo.publisher.j */
/* loaded from: classes-dex2jar.jar:com/criteo/publisher/j.class */
public class C2014j extends Criteo {

    /* renamed from: com.criteo.publisher.j$b */
    /* loaded from: classes-dex2jar.jar:com/criteo/publisher/j$b.class */
    public static class C2016b extends C2043q {
        public C2016b() {
            super(null, new ExecutorC2095a());
        }

        @Override // com.criteo.publisher.model.C2043q
        @NonNull
        /* renamed from: a */
        public Future<String> mo35831a() {
            return FutureC1919j.m36019b("");
        }

        @Override // com.criteo.publisher.model.C2043q
        /* renamed from: b */
        public void mo35828b() {
        }
    }

    /* renamed from: com.criteo.publisher.j$c */
    /* loaded from: classes-dex2jar.jar:com/criteo/publisher/j$c.class */
    public static class C2017c extends C2157a {
        public C2017c() {
            super(null, null);
        }

        @Override // com.criteo.publisher.p029v.C2157a
        /* renamed from: a */
        public void mo35586a(@NonNull String str, @Nullable CriteoInterstitialAdListener criteoInterstitialAdListener) {
        }

        @Override // com.criteo.publisher.p029v.C2157a
        /* renamed from: a */
        public boolean mo35588a() {
            return false;
        }
    }

    @Override // com.criteo.publisher.Criteo
    @NonNull
    /* renamed from: a */
    public C2042p mo35882a() {
        return new C2042p();
    }

    @Override // com.criteo.publisher.Criteo
    @Nullable
    /* renamed from: a */
    public C2046r mo35881a(@Nullable BidToken bidToken, @NonNull EnumC1908a aVar) {
        return null;
    }

    @Override // com.criteo.publisher.Criteo
    @Nullable
    /* renamed from: a */
    public C2052w mo35880a(@Nullable AdUnit adUnit) {
        return null;
    }

    @Override // com.criteo.publisher.Criteo
    @NonNull
    /* renamed from: b */
    public C2043q mo35879b() {
        return new C2016b();
    }

    @Override // com.criteo.publisher.Criteo
    @NonNull
    /* renamed from: c */
    public C2157a mo35878c() {
        return new C2017c();
    }

    @Override // com.criteo.publisher.Criteo
    @NonNull
    public C1967d createBannerController(CriteoBannerView criteoBannerView) {
        return new C1967d(criteoBannerView, this, C1974i.m35912U().m35918O(), C1974i.m35912U().m35920M());
    }

    @Override // com.criteo.publisher.Criteo
    public BidResponse getBidResponse(AdUnit adUnit) {
        return new BidResponse();
    }

    @Override // com.criteo.publisher.Criteo
    public void setBidsForAdUnit(Object obj, AdUnit adUnit) {
    }

    @Override // com.criteo.publisher.Criteo
    public void setMopubConsent(String str) {
    }

    @Override // com.criteo.publisher.Criteo
    public void setUsPrivacyOptOut(boolean z) {
    }
}
