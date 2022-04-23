package com.moat.analytics.mobile.inm;

import java.util.HashMap;
import java.util.Map;
/* loaded from: classes2-dex2jar.jar:com/moat/analytics/mobile/inm/MoatAdEvent.class */
public class MoatAdEvent {

    /* renamed from: b */
    public Integer f33198b;

    /* renamed from: c */
    public Double f33199c;

    /* renamed from: d */
    public MoatAdEventType f33200d;

    /* renamed from: f */
    public final Double f33201f;

    /* renamed from: g */
    public final Long f33202g;

    /* renamed from: a */
    public static final Integer f33196a = Integer.MIN_VALUE;

    /* renamed from: e */
    public static final Double f33197e = Double.valueOf(Double.NaN);
    public static final Double VOLUME_MUTED = Double.valueOf(0.0d);
    public static final Double VOLUME_UNMUTED = Double.valueOf(1.0d);

    public MoatAdEvent(MoatAdEventType moatAdEventType) {
        this(moatAdEventType, f33196a, f33197e);
    }

    public MoatAdEvent(MoatAdEventType moatAdEventType, Integer num) {
        this(moatAdEventType, num, f33197e);
    }

    public MoatAdEvent(MoatAdEventType moatAdEventType, Integer num, Double d) {
        this.f33202g = Long.valueOf(System.currentTimeMillis());
        this.f33200d = moatAdEventType;
        this.f33199c = d;
        this.f33198b = num;
        this.f33201f = Double.valueOf(C8574s.m5094a());
    }

    /* renamed from: a */
    public Map<String, Object> m5259a() {
        HashMap hashMap = new HashMap();
        hashMap.put("adVolume", this.f33199c);
        hashMap.put("playhead", this.f33198b);
        hashMap.put("aTimeStamp", this.f33202g);
        hashMap.put("type", this.f33200d.toString());
        hashMap.put("deviceVolume", this.f33201f);
        return hashMap;
    }
}
