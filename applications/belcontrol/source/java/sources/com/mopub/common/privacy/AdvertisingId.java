package com.mopub.common.privacy;

import com.mopub.common.Preconditions;
import java.io.Serializable;
import java.util.UUID;
/* loaded from: classes3-dex2jar.jar:com/mopub/common/privacy/AdvertisingId.class */
public class AdvertisingId implements Serializable {

    /* renamed from: a */
    public final String f4393a;

    /* renamed from: b */
    public final String f4394b;

    /* renamed from: c */
    public final boolean f4395c;

    public AdvertisingId(String str, String str2, boolean z) {
        Preconditions.checkNotNull(str);
        Preconditions.checkNotNull(str2);
        this.f4393a = str;
        this.f4394b = str2;
        this.f4395c = z;
    }

    /* renamed from: a */
    public static AdvertisingId m3855a() {
        return new AdvertisingId("", m3854b(), false);
    }

    /* renamed from: b */
    public static String m3854b() {
        return UUID.randomUUID().toString();
    }

    /* renamed from: c */
    public String m3853c() {
        return this.f4393a;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof AdvertisingId)) {
            return false;
        }
        AdvertisingId advertisingId = (AdvertisingId) obj;
        if (this.f4395c != advertisingId.f4395c || !this.f4393a.equals(advertisingId.f4393a)) {
            return false;
        }
        return this.f4394b.equals(advertisingId.f4394b);
    }

    public String getIdWithPrefix(boolean z) {
        StringBuilder sb;
        String str;
        if (this.f4395c || !z || this.f4393a.isEmpty()) {
            sb = new StringBuilder();
            sb.append("mopub:");
            str = this.f4394b;
        } else {
            sb = new StringBuilder();
            sb.append("ifa:");
            str = this.f4393a;
        }
        sb.append(str);
        return sb.toString();
    }

    public String getIdentifier(boolean z) {
        return (this.f4395c || !z) ? this.f4394b : this.f4393a;
    }

    public int hashCode() {
        return (((this.f4393a.hashCode() * 31) + this.f4394b.hashCode()) * 31) + (this.f4395c ? 1 : 0);
    }

    public boolean isDoNotTrack() {
        return this.f4395c;
    }

    public String toString() {
        return "AdvertisingId{, mAdvertisingId='" + this.f4393a + "', mMopubId='" + this.f4394b + "', mDoNotTrack=" + this.f4395c + '}';
    }
}
