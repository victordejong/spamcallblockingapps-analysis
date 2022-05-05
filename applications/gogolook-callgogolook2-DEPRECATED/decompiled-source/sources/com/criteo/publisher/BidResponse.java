package com.criteo.publisher;

import androidx.annotation.Nullable;
/* loaded from: classes-dex2jar.jar:com/criteo/publisher/BidResponse.class */
public final class BidResponse {

    /* renamed from: a */
    public final double f1974a;
    @Nullable

    /* renamed from: b */
    public final BidToken f1975b;

    /* renamed from: c */
    public final boolean f1976c;

    public BidResponse() {
        this.f1974a = 0.0d;
        this.f1975b = null;
        this.f1976c = false;
    }

    public BidResponse(double d, @Nullable BidToken bidToken, boolean z) {
        this.f1974a = d;
        this.f1975b = bidToken;
        this.f1976c = z;
    }

    public boolean equals(Object obj) {
        boolean z = true;
        if (this == obj) {
            return true;
        }
        if (obj == null || BidResponse.class != obj.getClass()) {
            return false;
        }
        BidResponse bidResponse = (BidResponse) obj;
        if (Double.compare(bidResponse.f1974a, this.f1974a) != 0 || this.f1976c != bidResponse.f1976c) {
            return false;
        }
        BidToken bidToken = this.f1975b;
        BidToken bidToken2 = bidResponse.f1975b;
        if (bidToken != null) {
            z = bidToken.equals(bidToken2);
        } else if (bidToken2 != null) {
            z = false;
        }
        return z;
    }

    @Nullable
    public BidToken getBidToken() {
        return this.f1975b;
    }

    public double getPrice() {
        return this.f1974a;
    }

    public int hashCode() {
        long doubleToLongBits = Double.doubleToLongBits(this.f1974a);
        int i = (int) (doubleToLongBits ^ (doubleToLongBits >>> 32));
        BidToken bidToken = this.f1975b;
        return (((i * 31) + (bidToken != null ? bidToken.hashCode() : 0)) * 31) + (this.f1976c ? 1 : 0);
    }

    public boolean isBidSuccess() {
        return this.f1976c;
    }
}
