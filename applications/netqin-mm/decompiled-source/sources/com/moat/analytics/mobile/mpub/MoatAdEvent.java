package com.moat.analytics.mobile.mpub;

import java.util.HashMap;
import java.util.Map;
/* loaded from: classes2-dex2jar.jar:com/moat/analytics/mobile/mpub/MoatAdEvent.class */
public class MoatAdEvent {

    /* renamed from: b */
    public Integer f33415b;

    /* renamed from: c */
    public Double f33416c;

    /* renamed from: d */
    public MoatAdEventType f33417d;

    /* renamed from: f */
    public final Double f33418f;

    /* renamed from: g */
    public final Long f33419g;

    /* renamed from: a */
    public static final Integer f33413a = Integer.MIN_VALUE;

    /* renamed from: e */
    public static final Double f33414e = Double.valueOf(Double.NaN);
    public static final Double VOLUME_MUTED = Double.valueOf(0.0d);
    public static final Double VOLUME_UNMUTED = Double.valueOf(1.0d);

    public MoatAdEvent(MoatAdEventType moatAdEventType) {
        this(moatAdEventType, f33413a, f33414e);
    }

    public MoatAdEvent(MoatAdEventType moatAdEventType, Integer num) {
        this(moatAdEventType, num, f33414e);
    }

    public MoatAdEvent(MoatAdEventType moatAdEventType, Integer num, Double d) {
        this.f33419g = Long.valueOf(System.currentTimeMillis());
        this.f33417d = moatAdEventType;
        this.f33416c = d;
        this.f33415b = num;
        this.f33418f = Double.valueOf(C8655s.m4838a());
    }

    /* renamed from: a */
    public Map<String, Object> m5003a() {
        HashMap hashMap = new HashMap();
        hashMap.put("adVolume", this.f33416c);
        hashMap.put("playhead", this.f33415b);
        hashMap.put("aTimeStamp", this.f33419g);
        hashMap.put("type", this.f33417d.toString());
        hashMap.put("deviceVolume", this.f33418f);
        return hashMap;
    }
}
