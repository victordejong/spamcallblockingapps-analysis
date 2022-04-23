package com.bytedance.sdk.openadsdk.preload.geckox.g;

import com.bytedance.sdk.openadsdk.preload.geckox.utils.FileLock;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.locks.Lock;
import java.util.concurrent.locks.ReentrantLock;
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/preload/geckox/g/b.class */
public class b {

    /* renamed from: a  reason: collision with root package name */
    private static final Map<String, Lock> f10209a = new HashMap();

    /* renamed from: b  reason: collision with root package name */
    private static ReentrantLock f10210b = new ReentrantLock();

    /* renamed from: c  reason: collision with root package name */
    private String f10211c;

    /* renamed from: d  reason: collision with root package name */
    private FileLock f10212d;

    private b(String str, FileLock fileLock) {
        this.f10211c = str;
        this.f10212d = fileLock;
    }

    public static b a(String str) throws Exception {
        f10210b.lock();
        try {
            FileLock a2 = FileLock.a(str);
            Map<String, Lock> map = f10209a;
            Lock lock = map.get(str);
            Lock lock2 = lock;
            if (lock == null) {
                lock2 = new ReentrantLock();
                map.put(str, lock2);
            }
            lock2.lock();
            return new b(str, a2);
        } catch (Exception e) {
            f10210b.unlock();
            throw e;
        }
    }

    public void a() {
        try {
            this.f10212d.a();
            this.f10212d.b();
            Lock lock = f10209a.get(this.f10211c);
            if (lock != null) {
                lock.unlock();
            }
        } finally {
            f10210b.unlock();
        }
    }
}
