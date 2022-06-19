package com.allinone.callerid.util;

import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
/* renamed from: com.allinone.callerid.util.i0 */
/* loaded from: classes-dex2jar.jar:com/allinone/callerid/util/i0.class */
public class C3772i0 {

    /* renamed from: a */
    private static volatile C3772i0 f12014a;

    /* renamed from: b */
    public final ExecutorService f12015b = Executors.newFixedThreadPool(10);

    private C3772i0() {
    }

    /* renamed from: a */
    public static C3772i0 m24190a() {
        if (f12014a == null) {
            synchronized (C3772i0.class) {
                try {
                    if (f12014a == null) {
                        f12014a = new C3772i0();
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return f12014a;
    }
}
