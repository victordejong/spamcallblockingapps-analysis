package com.vk.api.sdk.e;

import java.util.concurrent.locks.Condition;
import java.util.concurrent.locks.ReentrantLock;
import kotlin.Metadata;
import kotlin.jvm.internal.p;
import kotlin.v;
@Metadata(bv = {1, 0, 3}, d1 = {"�� \n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010\u0002\n\u0002\b\u0002\bÀ\u0002\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0006\u0010\u0007\u001a\u00020\bJ\u0006\u0010\t\u001a\u00020\bR\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u0004¢\u0006\u0002\n��R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u0004¢\u0006\u0002\n��¨\u0006\n"}, d2 = {"Lcom/vk/api/sdk/utils/VKValidationLocker;", "", "()V", "lockCondition", "Ljava/util/concurrent/locks/Condition;", "locker", "Ljava/util/concurrent/locks/ReentrantLock;", "await", "", "signal", "libapi-sdk-core_release"}, k = 1, mv = {1, 4, 2})
/* loaded from: classes5-dex2jar.jar:com/vk/api/sdk/e/i.class */
public final class i {

    /* renamed from: a  reason: collision with root package name */
    public static final i f36069a = new i();

    /* renamed from: b  reason: collision with root package name */
    private static final ReentrantLock f36070b;

    /* renamed from: c  reason: collision with root package name */
    private static final Condition f36071c;

    static {
        ReentrantLock reentrantLock = new ReentrantLock();
        f36070b = reentrantLock;
        Condition newCondition = reentrantLock.newCondition();
        p.b(newCondition, "locker.newCondition()");
        f36071c = newCondition;
    }

    private i() {
    }

    public static void a() {
        try {
            ReentrantLock reentrantLock = f36070b;
            reentrantLock.lock();
            f36071c.await();
            v vVar = v.f38654a;
            reentrantLock.unlock();
        } catch (InterruptedException e) {
        }
    }

    public static void b() {
        ReentrantLock reentrantLock = f36070b;
        reentrantLock.lock();
        try {
            f36071c.signalAll();
            v vVar = v.f38654a;
        } finally {
            reentrantLock.unlock();
        }
    }
}
