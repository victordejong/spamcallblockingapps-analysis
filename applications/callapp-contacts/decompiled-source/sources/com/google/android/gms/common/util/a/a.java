package com.google.android.gms.common.util.a;

import com.google.android.gms.common.internal.o;
import java.util.concurrent.Executors;
import java.util.concurrent.ThreadFactory;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/common/util/a/a.class */
public final class a implements ThreadFactory {

    /* renamed from: a  reason: collision with root package name */
    private final String f22935a;

    /* renamed from: b  reason: collision with root package name */
    private final ThreadFactory f22936b = Executors.defaultThreadFactory();

    public a(String str) {
        o.a(str, (Object) "Name must not be null");
        this.f22935a = str;
    }

    @Override // java.util.concurrent.ThreadFactory
    public final Thread newThread(Runnable runnable) {
        Thread newThread = this.f22936b.newThread(new c(runnable, 0));
        newThread.setName(this.f22935a);
        return newThread;
    }
}
