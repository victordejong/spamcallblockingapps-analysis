package com.criteo.publisher;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.criteo.publisher.model.AbstractC2026e;
import com.criteo.publisher.model.AdUnit;
import com.criteo.publisher.p020a0.EnumC1908a;
import java.util.Map;
import java.util.UUID;
import java.util.concurrent.ConcurrentHashMap;
/* renamed from: com.criteo.publisher.n */
/* loaded from: classes-dex2jar.jar:com/criteo/publisher/n.class */
public class C2082n {

    /* renamed from: a */
    public final Map<BidToken, AbstractC2026e> f2328a = new ConcurrentHashMap();

    /* renamed from: a */
    public BidToken m35716a(@NonNull AbstractC2026e eVar, @NonNull AdUnit adUnit) {
        BidToken bidToken = new BidToken(UUID.randomUUID(), adUnit);
        this.f2328a.put(bidToken, eVar);
        return bidToken;
    }

    @Nullable
    /* renamed from: a */
    public AbstractC2026e m35717a(@Nullable BidToken bidToken, @NonNull EnumC1908a aVar) {
        AbstractC2026e remove;
        if (bidToken == null || bidToken.m36068a().getAdUnitType() != aVar || (remove = this.f2328a.remove(bidToken)) == null || remove.m35873a()) {
            return null;
        }
        return remove;
    }
}
