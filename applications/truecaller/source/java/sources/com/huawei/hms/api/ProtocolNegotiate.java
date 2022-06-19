package com.huawei.hms.api;

import java.util.List;
import p193e.p1432d.p1439c.p1440a.C22128a;
/* loaded from: classes3-dex2jar.jar:com/huawei/hms/api/ProtocolNegotiate.class */
public class ProtocolNegotiate {

    /* renamed from: b */
    private static ProtocolNegotiate f7287b = new ProtocolNegotiate();

    /* renamed from: a */
    private int f7288a = 1;

    public static ProtocolNegotiate getInstance() {
        return f7287b;
    }

    public int getVersion() {
        return this.f7288a;
    }

    public int negotiate(List<Integer> list) {
        if (list == null || list.isEmpty()) {
            this.f7288a = 1;
            return 1;
        }
        if (!list.contains(2)) {
            this.f7288a = ((Integer) C22128a.m8710G1(list, 1)).intValue();
        } else {
            this.f7288a = 2;
        }
        return this.f7288a;
    }
}
