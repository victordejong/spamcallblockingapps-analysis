package com.criteo.publisher;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.criteo.publisher.model.AbstractC2026e;
import com.criteo.publisher.model.AdUnit;
import com.criteo.publisher.model.C2046r;
import com.criteo.publisher.model.C2052w;
import com.criteo.publisher.model.InterstitialAdUnit;
import com.criteo.publisher.model.p021z.C2081s;
import com.criteo.publisher.p020a0.EnumC1908a;
import com.criteo.publisher.p029v.C2157a;
/* renamed from: com.criteo.publisher.l */
/* loaded from: classes-dex2jar.jar:com/criteo/publisher/l.class */
public class C2019l {
    @NonNull

    /* renamed from: a */
    public final C1963b f2183a;
    @NonNull

    /* renamed from: b */
    public final C2082n f2184b;
    @NonNull

    /* renamed from: c */
    public final AbstractC1966c f2185c;
    @NonNull

    /* renamed from: d */
    public final C2157a f2186d;

    public C2019l(@NonNull C1963b bVar, @NonNull C2082n nVar, @NonNull AbstractC1966c cVar, @NonNull C2157a aVar) {
        this.f2183a = bVar;
        this.f2184b = nVar;
        this.f2185c = cVar;
        this.f2186d = aVar;
    }

    @NonNull
    /* renamed from: a */
    public BidResponse m35874a(@Nullable AdUnit adUnit) {
        if ((adUnit instanceof InterstitialAdUnit) && !this.f2186d.mo35588a()) {
            return new BidResponse();
        }
        C2052w a = this.f2183a.m35957a(adUnit);
        if (a == null || adUnit == null) {
            return new BidResponse();
        }
        return new BidResponse(a.m35797b().doubleValue(), this.f2184b.m35716a(a.m35793f() != null ? new C2081s(a.m35793f(), a, this.f2185c) : new C2046r(a.m35796c(), a, this.f2185c), adUnit), true);
    }

    @Nullable
    /* renamed from: a */
    public C2046r m35875a(@Nullable BidToken bidToken, @NonNull EnumC1908a aVar) {
        AbstractC2026e a = this.f2184b.m35717a(bidToken, aVar);
        if (!(a instanceof C2046r)) {
            return null;
        }
        return (C2046r) a;
    }

    @Nullable
    /* renamed from: a */
    public C2081s m35876a(@Nullable BidToken bidToken) {
        AbstractC2026e a = this.f2184b.m35717a(bidToken, EnumC1908a.CRITEO_CUSTOM_NATIVE);
        if (!(a instanceof C2081s)) {
            return null;
        }
        return (C2081s) a;
    }
}
