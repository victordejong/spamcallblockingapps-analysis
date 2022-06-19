package com.mopub.common.privacy;

import com.mopub.common.Preconditions;
import java.io.Serializable;
import java.util.UUID;
/* loaded from: classes4-dex2jar.jar:com/mopub/common/privacy/AdvertisingId.class */
public class AdvertisingId implements Serializable {

    /* renamed from: a */
    final String f58870a;

    /* renamed from: b */
    final String f58871b;

    /* renamed from: c */
    final boolean f58872c;

    public AdvertisingId(String str, String str2, boolean z) {
        Preconditions.checkNotNull(str);
        Preconditions.checkNotNull(str2);
        this.f58870a = str;
        this.f58871b = str2;
        this.f58872c = z;
    }

    /* renamed from: a */
    public static AdvertisingId m6661a() {
        return new AdvertisingId("", UUID.randomUUID().toString(), false);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof AdvertisingId)) {
            return false;
        }
        AdvertisingId advertisingId = (AdvertisingId) obj;
        if (this.f58872c != advertisingId.f58872c || !this.f58870a.equals(advertisingId.f58870a)) {
            return false;
        }
        return this.f58871b.equals(advertisingId.f58871b);
    }

    public String getIdWithPrefix(boolean z) {
        if (this.f58872c || !z || this.f58870a.isEmpty()) {
            return "mopub:" + this.f58871b;
        }
        return "ifa:" + this.f58870a;
    }

    public String getIdentifier(boolean z) {
        return (this.f58872c || !z) ? this.f58871b : this.f58870a;
    }

    public int hashCode() {
        return (((this.f58870a.hashCode() * 31) + this.f58871b.hashCode()) * 31) + (this.f58872c ? 1 : 0);
    }

    public boolean isDoNotTrack() {
        return this.f58872c;
    }

    public String toString() {
        return "AdvertisingId{, mAdvertisingId='" + this.f58870a + "', mMopubId='" + this.f58871b + "', mDoNotTrack=" + this.f58872c + '}';
    }
}
