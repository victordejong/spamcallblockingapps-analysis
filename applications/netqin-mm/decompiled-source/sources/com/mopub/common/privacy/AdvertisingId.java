package com.mopub.common.privacy;

import android.text.TextUtils;
import com.mopub.common.Preconditions;
import java.io.Serializable;
import java.util.Calendar;
import java.util.TimeZone;
import java.util.UUID;
/* loaded from: classes2-dex2jar.jar:com/mopub/common/privacy/AdvertisingId.class */
public class AdvertisingId implements Serializable {
    public static final long ONE_DAY_MS = 86400000;
    public static final String PREFIX_IFA = "ifa:";
    public static final String PREFIX_MOPUB = "mopub:";
    public final String mAdvertisingId;
    public final boolean mDoNotTrack;
    public final Calendar mLastRotation;
    public final String mMopubId;

    public AdvertisingId(String str, String str2, boolean z, long j) {
        Preconditions.checkNotNull(str);
        Preconditions.checkNotNull(str2);
        this.mAdvertisingId = str;
        this.mMopubId = str2;
        this.mDoNotTrack = z;
        Calendar instance = Calendar.getInstance();
        this.mLastRotation = instance;
        instance.setTimeInMillis(j);
    }

    public static AdvertisingId generateExpiredAdvertisingId() {
        return new AdvertisingId("", generateIdString(), false, (Calendar.getInstance().getTimeInMillis() - ONE_DAY_MS) - 1);
    }

    public static AdvertisingId generateFreshAdvertisingId() {
        return new AdvertisingId("", generateIdString(), false, Calendar.getInstance().getTimeInMillis());
    }

    public static String generateIdString() {
        return UUID.randomUUID().toString();
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof AdvertisingId)) {
            return false;
        }
        AdvertisingId advertisingId = (AdvertisingId) obj;
        if (this.mDoNotTrack == advertisingId.mDoNotTrack && this.mAdvertisingId.equals(advertisingId.mAdvertisingId)) {
            return this.mMopubId.equals(advertisingId.mMopubId);
        }
        return false;
    }

    public String getIdWithPrefix(boolean z) {
        if (this.mDoNotTrack || !z || this.mAdvertisingId.isEmpty()) {
            return PREFIX_MOPUB + this.mMopubId;
        }
        return PREFIX_IFA + this.mAdvertisingId;
    }

    public String getIdentifier(boolean z) {
        return (this.mDoNotTrack || !z) ? this.mMopubId : this.mAdvertisingId;
    }

    public String getIfaWithPrefix() {
        if (TextUtils.isEmpty(this.mAdvertisingId)) {
            return "";
        }
        return PREFIX_IFA + this.mAdvertisingId;
    }

    public int hashCode() {
        return (((this.mAdvertisingId.hashCode() * 31) + this.mMopubId.hashCode()) * 31) + (this.mDoNotTrack ? 1 : 0);
    }

    public boolean isDoNotTrack() {
        return this.mDoNotTrack;
    }

    public boolean isRotationRequired() {
        Calendar instance = Calendar.getInstance(TimeZone.getTimeZone("GMT"));
        Calendar instance2 = Calendar.getInstance(TimeZone.getTimeZone("GMT"));
        instance2.setTimeInMillis(this.mLastRotation.getTimeInMillis());
        boolean z = true;
        if (instance.get(6) == instance2.get(6)) {
            z = instance.get(1) != instance2.get(1);
        }
        return z;
    }

    public String toString() {
        return "AdvertisingId{mLastRotation=" + this.mLastRotation + ", mAdvertisingId='" + this.mAdvertisingId + "', mMopubId='" + this.mMopubId + "', mDoNotTrack=" + this.mDoNotTrack + '}';
    }
}
