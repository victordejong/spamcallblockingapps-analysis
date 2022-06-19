package com.bytedance.sdk.openadsdk.preload.geckox.p221g;

import com.bytedance.sdk.openadsdk.preload.geckox.utils.FileLock;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.locks.Lock;
import java.util.concurrent.locks.ReentrantLock;
/* renamed from: com.bytedance.sdk.openadsdk.preload.geckox.g.b */
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/preload/geckox/g/b.class */
public class C5377b {

    /* renamed from: a */
    private static final Map<String, Lock> f18872a = new HashMap();

    /* renamed from: b */
    private static ReentrantLock f18873b = new ReentrantLock();

    /* renamed from: c */
    private String f18874c;

    /* renamed from: d */
    private FileLock f18875d;

    private C5377b(String str, FileLock fileLock) {
        this.f18874c = str;
        this.f18875d = fileLock;
    }

    /* renamed from: a */
    public static C5377b m32435a(String str) throws Exception {
        f18873b.lock();
        try {
            FileLock m32370a = FileLock.m32370a(str);
            Map<String, Lock> map = f18872a;
            Lock lock = map.get(str);
            Lock lock2 = lock;
            if (lock == null) {
                lock2 = new ReentrantLock();
                map.put(str, lock2);
            }
            lock2.lock();
            return new C5377b(str, m32370a);
        } catch (Exception e) {
            f18873b.unlock();
            throw e;
        }
    }

    /* renamed from: a */
    public void m32436a() {
        try {
            this.f18875d.m32371a();
            this.f18875d.m32368b();
            Lock lock = f18872a.get(this.f18874c);
            if (lock != null) {
                lock.unlock();
            }
        } finally {
            f18873b.unlock();
        }
    }
}
