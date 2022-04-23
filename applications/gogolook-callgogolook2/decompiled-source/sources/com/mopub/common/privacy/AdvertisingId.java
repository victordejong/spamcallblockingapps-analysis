package com.mopub.common.privacy;

import android.text.TextUtils;
import androidx.annotation.NonNull;
import com.aotter.net.trek.network.PlayServicesUrlRewriter;
import com.mopub.common.Preconditions;
import gogolook.callgogolook2.p074ad.AdUtils;
import java.io.Serializable;
import java.util.Calendar;
import java.util.TimeZone;
import java.util.UUID;
/* loaded from: classes2-dex2jar.jar:com/mopub/common/privacy/AdvertisingId.class */
public class AdvertisingId implements Serializable {
    @NonNull

    /* renamed from: a */
    public final Calendar f8209a = Calendar.getInstance();
    @NonNull

    /* renamed from: b */
    public final String f8210b;
    @NonNull

    /* renamed from: c */
    public final String f8211c;

    /* renamed from: d */
    public final boolean f8212d;

    public AdvertisingId(@NonNull String str, @NonNull String str2, boolean z, long j) {
        Preconditions.checkNotNull(str);
        Preconditions.checkNotNull(str2);
        this.f8210b = str;
        this.f8211c = str2;
        this.f8212d = z;
        this.f8209a.setTimeInMillis(j);
    }

    @NonNull
    /* renamed from: c */
    public static AdvertisingId m30721c() {
        return new AdvertisingId("", m30719e(), false, (Calendar.getInstance().getTimeInMillis() - AdUtils.ONE_DAY) - 1);
    }

    @NonNull
    /* renamed from: d */
    public static AdvertisingId m30720d() {
        return new AdvertisingId("", m30719e(), false, Calendar.getInstance().getTimeInMillis());
    }

    @NonNull
    /* renamed from: e */
    public static String m30719e() {
        return UUID.randomUUID().toString();
    }

    @NonNull
    /* renamed from: a */
    public String m30723a() {
        if (TextUtils.isEmpty(this.f8210b)) {
            return "";
        }
        return PlayServicesUrlRewriter.f1557a + this.f8210b;
    }

    /* renamed from: b */
    public boolean m30722b() {
        Calendar instance = Calendar.getInstance(TimeZone.getTimeZone("GMT"));
        Calendar instance2 = Calendar.getInstance(TimeZone.getTimeZone("GMT"));
        instance2.setTimeInMillis(this.f8209a.getTimeInMillis());
        boolean z = true;
        if (instance.get(6) == instance2.get(6)) {
            z = instance.get(1) != instance2.get(1);
        }
        return z;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof AdvertisingId)) {
            return false;
        }
        AdvertisingId advertisingId = (AdvertisingId) obj;
        if (this.f8212d == advertisingId.f8212d && this.f8210b.equals(advertisingId.f8210b)) {
            return this.f8211c.equals(advertisingId.f8211c);
        }
        return false;
    }

    @NonNull
    public String getIdWithPrefix(boolean z) {
        if (this.f8212d || !z || this.f8210b.isEmpty()) {
            return "mopub:" + this.f8211c;
        }
        return PlayServicesUrlRewriter.f1557a + this.f8210b;
    }

    public String getIdentifier(boolean z) {
        return (this.f8212d || !z) ? this.f8211c : this.f8210b;
    }

    public int hashCode() {
        return (((this.f8210b.hashCode() * 31) + this.f8211c.hashCode()) * 31) + (this.f8212d ? 1 : 0);
    }

    public boolean isDoNotTrack() {
        return this.f8212d;
    }

    public String toString() {
        return "AdvertisingId{mLastRotation=" + this.f8209a + ", mAdvertisingId='" + this.f8210b + "', mMopubId='" + this.f8211c + "', mDoNotTrack=" + this.f8212d + '}';
    }
}
