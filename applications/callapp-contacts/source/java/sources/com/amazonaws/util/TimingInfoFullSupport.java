package com.amazonaws.util;

import com.amazonaws.logging.LogFactory;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:com/amazonaws/util/TimingInfoFullSupport.class */
public class TimingInfoFullSupport extends TimingInfo {

    /* renamed from: c */
    private final Map<String, List<TimingInfo>> f12517c = new HashMap();

    /* renamed from: d */
    private final Map<String, Number> f12518d = new HashMap();

    public TimingInfoFullSupport(Long l, long j, Long l2) {
        super(l, j, l2);
    }

    @Override // com.amazonaws.util.TimingInfo
    /* renamed from: a */
    public final void mo38220a(String str) {
        Number number = this.f12518d.get(str);
        mo38219a(str, (number != null ? number.intValue() : 0) + 1);
    }

    @Override // com.amazonaws.util.TimingInfo
    /* renamed from: a */
    public final void mo38219a(String str, long j) {
        this.f12518d.put(str, Long.valueOf(j));
    }

    @Override // com.amazonaws.util.TimingInfo
    /* renamed from: a */
    public final void mo38218a(String str, TimingInfo timingInfo) {
        List<TimingInfo> list = this.f12517c.get(str);
        ArrayList arrayList = list;
        if (list == null) {
            arrayList = new ArrayList();
            this.f12517c.put(str, arrayList);
        }
        if (timingInfo.m38221c()) {
            arrayList.add(timingInfo);
        } else {
            LogFactory.m38584a(getClass()).mo38593b("Skip submeasurement timing info with no end time for ".concat(String.valueOf(str)));
        }
    }

    @Override // com.amazonaws.util.TimingInfo
    /* renamed from: e */
    public final Map<String, List<TimingInfo>> mo38217e() {
        return this.f12517c;
    }

    @Override // com.amazonaws.util.TimingInfo
    /* renamed from: f */
    public final Map<String, Number> mo38216f() {
        return this.f12518d;
    }
}
