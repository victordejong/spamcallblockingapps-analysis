package com.p488vk.api.sdk.p496e;

import java.util.concurrent.locks.Condition;
import java.util.concurrent.locks.ReentrantLock;
import kotlin.C20128v;
import kotlin.Metadata;
import kotlin.jvm.internal.C18524p;
@Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"�� \n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010\u0002\n\u0002\b\u0002\bÀ\u0002\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0006\u0010\u0007\u001a\u00020\bJ\u0006\u0010\t\u001a\u00020\bR\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u0004¢\u0006\u0002\n��R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u0004¢\u0006\u0002\n��¨\u0006\n"}, m4298d2 = {"Lcom/vk/api/sdk/utils/VKValidationLocker;", "", "()V", "lockCondition", "Ljava/util/concurrent/locks/Condition;", "locker", "Ljava/util/concurrent/locks/ReentrantLock;", "await", "", "signal", "libapi-sdk-core_release"}, m4297k = 1, m4296mv = {1, 4, 2})
/* renamed from: com.vk.api.sdk.e.i */
/* loaded from: classes5-dex2jar.jar:com/vk/api/sdk/e/i.class */
public final class C17679i {

    /* renamed from: a */
    public static final C17679i f62490a = new C17679i();

    /* renamed from: b */
    private static final ReentrantLock f62491b;

    /* renamed from: c */
    private static final Condition f62492c;

    static {
        ReentrantLock reentrantLock = new ReentrantLock();
        f62491b = reentrantLock;
        Condition newCondition = reentrantLock.newCondition();
        C18524p.m3843b(newCondition, "locker.newCondition()");
        f62492c = newCondition;
    }

    private C17679i() {
    }

    /* renamed from: a */
    public static void m4833a() {
        try {
            ReentrantLock reentrantLock = f62491b;
            reentrantLock.lock();
            f62492c.await();
            C20128v c20128v = C20128v.f66529a;
            reentrantLock.unlock();
        } catch (InterruptedException e) {
        }
    }

    /* renamed from: b */
    public static void m4832b() {
        ReentrantLock reentrantLock = f62491b;
        reentrantLock.lock();
        try {
            f62492c.signalAll();
            C20128v c20128v = C20128v.f66529a;
        } finally {
            reentrantLock.unlock();
        }
    }
}
