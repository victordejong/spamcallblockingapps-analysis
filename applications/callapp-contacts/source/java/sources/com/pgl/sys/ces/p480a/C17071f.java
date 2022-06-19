package com.pgl.sys.ces.p480a;

import com.pgl.sys.ces.C17072b;
import com.pgl.sys.ces.p483d.AbstractC17082a;
/* renamed from: com.pgl.sys.ces.a.f */
/* loaded from: classes4-dex2jar.jar:com/pgl/sys/ces/a/f.class */
public final class C17071f {
    /* renamed from: a */
    public static String m5918a() {
        String str;
        try {
            AbstractC17082a m5907e = C17072b.m5907e();
            str = null;
            if (m5907e != null) {
                m5907e.mo5888a();
                str = "[<!>][<!>][<!>]";
            }
        } catch (Throwable th) {
            str = null;
        }
        return str == null ? "" : str.trim();
    }
}
