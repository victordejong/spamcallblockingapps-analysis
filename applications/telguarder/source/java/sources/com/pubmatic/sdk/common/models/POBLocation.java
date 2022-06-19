package com.pubmatic.sdk.common.models;

import android.location.Location;
import android.os.SystemClock;
import com.pubmatic.sdk.common.log.PMLog;
/* loaded from: classes2-dex2jar.jar:com/pubmatic/sdk/common/models/POBLocation.class */
public class POBLocation {

    /* renamed from: a */
    private long f469a;

    /* renamed from: b */
    private float f470b;

    /* renamed from: c */
    private double f471c;

    /* renamed from: d */
    private double f472d;

    /* renamed from: e */
    private Source f473e;

    /* loaded from: classes2-dex2jar.jar:com/pubmatic/sdk/common/models/POBLocation$Source.class */
    public enum Source {
        GPS(1),
        IP_ADDRESS(2),
        USER(3);
        

        /* renamed from: a */
        private final int f475a;

        Source(int i) {
            this.f475a = i;
        }

        public int getValue() {
            return this.f475a;
        }
    }

    public POBLocation(Location location) {
        if (location == null) {
            PMLog.debug("POBLocation", "Provided location object is null", new Object[0]);
            return;
        }
        this.f471c = location.getLatitude();
        this.f472d = location.getLongitude();
        String provider = location.getProvider();
        this.f473e = (provider == null || (!provider.equalsIgnoreCase("network") && !provider.equalsIgnoreCase("gps") && !provider.equalsIgnoreCase("wifi"))) ? Source.USER : Source.GPS;
        this.f470b = location.getAccuracy();
        this.f469a = (SystemClock.elapsedRealtimeNanos() - location.getElapsedRealtimeNanos()) / 1000000;
    }

    public POBLocation(Source source, double d, double d2) {
        this.f473e = source;
        this.f471c = d;
        this.f472d = d2;
    }

    public float getAccuracy() {
        return this.f470b;
    }

    public long getLastFixInMillis() {
        return this.f469a;
    }

    public double getLatitude() {
        return this.f471c;
    }

    public double getLongitude() {
        return this.f472d;
    }

    public Source getSource() {
        return this.f473e;
    }
}
