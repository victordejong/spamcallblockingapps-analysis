package com.callerid.block.util;

import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
/* renamed from: com.callerid.block.util.c0 */
/* loaded from: classes-dex2jar.jar:com/callerid/block/util/c0.class */
public class C1169c0 {

    /* renamed from: b */
    private static volatile C1169c0 f4993b;

    /* renamed from: a */
    public final ExecutorService f4994a = Executors.newFixedThreadPool(10);

    private C1169c0() {
    }

    /* renamed from: a */
    public static C1169c0 m9902a() {
        if (f4993b == null) {
            synchronized (C1169c0.class) {
                try {
                    if (f4993b == null) {
                        f4993b = new C1169c0();
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return f4993b;
    }
}
