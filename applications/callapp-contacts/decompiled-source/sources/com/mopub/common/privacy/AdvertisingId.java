package com.mopub.common.privacy;

import com.mopub.common.Preconditions;
import java.io.Serializable;
import java.util.UUID;
/* loaded from: classes4-dex2jar.jar:com/mopub/common/privacy/AdvertisingId.class */
public class AdvertisingId implements Serializable {

    /* renamed from: a  reason: collision with root package name */
    final String f33924a;

    /* renamed from: b  reason: collision with root package name */
    final String f33925b;

    /* renamed from: c  reason: collision with root package name */
    final boolean f33926c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public AdvertisingId(String str, String str2, boolean z) {
        Preconditions.checkNotNull(str);
        Preconditions.checkNotNull(str2);
        this.f33924a = str;
        this.f33925b = str2;
        this.f33926c = z;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static AdvertisingId a() {
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
        if (this.f33926c == advertisingId.f33926c && this.f33924a.equals(advertisingId.f33924a)) {
            return this.f33925b.equals(advertisingId.f33925b);
        }
        return false;
    }

    public String getIdWithPrefix(boolean z) {
        if (this.f33926c || !z || this.f33924a.isEmpty()) {
            return "mopub:" + this.f33925b;
        }
        return "ifa:" + this.f33924a;
    }

    public String getIdentifier(boolean z) {
        return (this.f33926c || !z) ? this.f33925b : this.f33924a;
    }

    public int hashCode() {
        return (((this.f33924a.hashCode() * 31) + this.f33925b.hashCode()) * 31) + (this.f33926c ? 1 : 0);
    }

    public boolean isDoNotTrack() {
        return this.f33926c;
    }

    public String toString() {
        return "AdvertisingId{, mAdvertisingId='" + this.f33924a + "', mMopubId='" + this.f33925b + "', mDoNotTrack=" + this.f33926c + '}';
    }
}
