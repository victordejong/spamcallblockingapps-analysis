package com.mopub.common.privacy;

import com.mopub.common.Preconditions;
import java.io.Serializable;
import p193e.p1432d.p1439c.p1440a.C22128a;
/* loaded from: classes3-dex2jar.jar:com/mopub/common/privacy/AdvertisingId.class */
public class AdvertisingId implements Serializable {

    /* renamed from: a */
    public final String f8623a;

    /* renamed from: b */
    public final String f8624b;

    /* renamed from: c */
    public final boolean f8625c;

    public AdvertisingId(String str, String str2, boolean z) {
        Preconditions.checkNotNull(str);
        Preconditions.checkNotNull(str2);
        this.f8623a = str;
        this.f8624b = str2;
        this.f8625c = z;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof AdvertisingId)) {
            return false;
        }
        AdvertisingId advertisingId = (AdvertisingId) obj;
        if (this.f8625c != advertisingId.f8625c || !this.f8623a.equals(advertisingId.f8623a)) {
            return false;
        }
        return this.f8624b.equals(advertisingId.f8624b);
    }

    public String getIdWithPrefix(boolean z) {
        if (this.f8625c || !z || this.f8623a.isEmpty()) {
            StringBuilder m8728C = C22128a.m8728C("mopub:");
            m8728C.append(this.f8624b);
            return m8728C.toString();
        }
        StringBuilder m8728C2 = C22128a.m8728C("ifa:");
        m8728C2.append(this.f8623a);
        return m8728C2.toString();
    }

    public String getIdentifier(boolean z) {
        return (this.f8625c || !z) ? this.f8624b : this.f8623a;
    }

    public int hashCode() {
        return C22128a.m8579q2(this.f8624b, this.f8623a.hashCode() * 31, 31) + (this.f8625c ? 1 : 0);
    }

    public boolean isDoNotTrack() {
        return this.f8625c;
    }

    public String toString() {
        StringBuilder m8728C = C22128a.m8728C("AdvertisingId{, mAdvertisingId='");
        C22128a.m8678P0(m8728C, this.f8623a, '\'', ", mMopubId='");
        C22128a.m8678P0(m8728C, this.f8624b, '\'', ", mDoNotTrack=");
        return C22128a.m8598m(m8728C, this.f8625c, '}');
    }
}
