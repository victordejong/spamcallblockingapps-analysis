package com.amazonaws.util;

import com.amazonaws.logging.LogFactory;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:com/amazonaws/util/TimingInfoFullSupport.class */
class TimingInfoFullSupport extends TimingInfo {

    /* renamed from: c  reason: collision with root package name */
    private final Map<String, List<TimingInfo>> f6924c = new HashMap();

    /* renamed from: d  reason: collision with root package name */
    private final Map<String, Number> f6925d = new HashMap();

    /* JADX INFO: Access modifiers changed from: package-private */
    public TimingInfoFullSupport(Long l, long j, Long l2) {
        super(l, j, l2);
    }

    @Override // com.amazonaws.util.TimingInfo
    public final void a(String str) {
        Number number = this.f6925d.get(str);
        a(str, (number != null ? number.intValue() : 0) + 1);
    }

    @Override // com.amazonaws.util.TimingInfo
    public final void a(String str, long j) {
        this.f6925d.put(str, Long.valueOf(j));
    }

    @Override // com.amazonaws.util.TimingInfo
    public final void a(String str, TimingInfo timingInfo) {
        List<TimingInfo> list = this.f6924c.get(str);
        List<TimingInfo> list2 = list;
        if (list == null) {
            list2 = new ArrayList<>();
            this.f6924c.put(str, list2);
        }
        if (timingInfo.c()) {
            list2.add(timingInfo);
        } else {
            LogFactory.a(getClass()).b("Skip submeasurement timing info with no end time for ".concat(String.valueOf(str)));
        }
    }

    @Override // com.amazonaws.util.TimingInfo
    public final Map<String, List<TimingInfo>> e() {
        return this.f6924c;
    }

    @Override // com.amazonaws.util.TimingInfo
    public final Map<String, Number> f() {
        return this.f6925d;
    }
}
