package com.apptentive.android.sdk.storage;

import java.io.Serializable;
import java.util.HashMap;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:com/apptentive/android/sdk/storage/EventRecord.class */
public class EventRecord implements Serializable {
    private static final long serialVersionUID = 1485363290506105166L;
    private double last = 0.0d;
    private long total = 0;
    private Map<Integer, Long> versionCodes = new HashMap();
    private Map<String, Long> versionNames = new HashMap();

    public Long getCountForVersionCode(Integer num) {
        Long l = this.versionCodes.get(num);
        if (l != null) {
            return l;
        }
        return 0L;
    }

    public Long getCountForVersionName(String str) {
        Long l = this.versionNames.get(str);
        if (l != null) {
            return l;
        }
        return 0L;
    }

    public double getLast() {
        return this.last;
    }

    public long getTotal() {
        return this.total;
    }

    public void setLast(double d) {
        this.last = d;
    }

    public void setTotal(long j) {
        this.total = j;
    }

    public void setVersionCodes(Map<Integer, Long> map) {
        this.versionCodes = map;
    }

    public void setVersionNames(Map<String, Long> map) {
        this.versionNames = map;
    }

    public String toString() {
        return "EventRecord{last=" + this.last + ", total=" + this.total + ", versionNames=" + this.versionNames + ", versionCodes=" + this.versionCodes + '}';
    }

    public void update(double d, String str, Integer num) {
        this.last = d;
        this.total++;
        Long l = this.versionNames.get(str);
        Long l2 = 0L;
        Long l3 = l;
        if (l == null) {
            l3 = l2;
        }
        Long l4 = this.versionCodes.get(num);
        if (l4 != null) {
            l2 = l4;
        }
        this.versionNames.put(str, Long.valueOf(l3.longValue() + 1));
        this.versionCodes.put(num, Long.valueOf(l2.longValue() + 1));
    }
}
