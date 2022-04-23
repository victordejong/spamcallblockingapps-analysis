package com.flurry.sdk;

import java.util.concurrent.PriorityBlockingQueue;
import java.util.concurrent.TimeUnit;
/* renamed from: com.flurry.sdk.iz */
/* loaded from: classes2-dex2jar.jar:com/flurry/sdk/iz.class */
public final class C3323iz extends C3349jp<C3368jz> {

    /* renamed from: a */
    public static C3323iz f5646a;

    public C3323iz() {
        super(C3323iz.class.getName(), TimeUnit.MILLISECONDS, new PriorityBlockingQueue(11, new C3347jn()));
    }

    /* renamed from: a */
    public static C3323iz m32690a() {
        C3323iz izVar;
        synchronized (C3323iz.class) {
            try {
                if (f5646a == null) {
                    f5646a = new C3323iz();
                }
                izVar = f5646a;
            } catch (Throwable th) {
                throw th;
            }
        }
        return izVar;
    }
}
