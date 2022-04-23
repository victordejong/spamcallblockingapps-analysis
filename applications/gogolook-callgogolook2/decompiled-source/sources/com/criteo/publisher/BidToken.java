package com.criteo.publisher;

import androidx.annotation.NonNull;
import com.criteo.publisher.model.AdUnit;
import java.util.UUID;
/* loaded from: classes-dex2jar.jar:com/criteo/publisher/BidToken.class */
public final class BidToken {
    @NonNull

    /* renamed from: a */
    public final UUID f1977a;
    @NonNull

    /* renamed from: b */
    public final AdUnit f1978b;

    public BidToken(UUID uuid, @NonNull AdUnit adUnit) {
        this.f1977a = uuid == null ? UUID.randomUUID() : uuid;
        this.f1978b = adUnit;
    }

    @NonNull
    /* renamed from: a */
    public AdUnit m36068a() {
        return this.f1978b;
    }

    public boolean equals(Object obj) {
        boolean z = true;
        if (this == obj) {
            return true;
        }
        if (obj == null || BidToken.class != obj.getClass()) {
            return false;
        }
        BidToken bidToken = (BidToken) obj;
        if (!this.f1977a.equals(bidToken.f1977a)) {
            return false;
        }
        AdUnit adUnit = this.f1978b;
        AdUnit adUnit2 = bidToken.f1978b;
        if (adUnit != null) {
            z = adUnit.equals(adUnit2);
        } else if (adUnit2 != null) {
            z = false;
        }
        return z;
    }

    public int hashCode() {
        int hashCode = this.f1977a.hashCode();
        AdUnit adUnit = this.f1978b;
        return (hashCode * 31) + (adUnit != null ? adUnit.hashCode() : 0);
    }
}
