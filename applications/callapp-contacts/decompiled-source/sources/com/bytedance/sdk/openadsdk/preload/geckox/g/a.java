package com.bytedance.sdk.openadsdk.preload.geckox.g;

import com.bytedance.sdk.openadsdk.preload.geckox.utils.FileLock;
import com.bytedance.sdk.openadsdk.preload.geckox.utils.c;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.locks.Lock;
import java.util.concurrent.locks.ReentrantLock;
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/preload/geckox/g/a.class */
public class a {

    /* renamed from: a  reason: collision with root package name */
    private static final Map<String, Lock> f10206a = new HashMap();

    /* renamed from: b  reason: collision with root package name */
    private FileLock f10207b;

    /* renamed from: c  reason: collision with root package name */
    private String f10208c;

    private a(String str, FileLock fileLock) {
        this.f10208c = str;
        this.f10207b = fileLock;
    }

    public static a a(String str) throws Exception {
        Map<String, Lock> map = f10206a;
        synchronized (map) {
            Lock lock = map.get(str);
            Lock lock2 = lock;
            if (lock == null) {
                lock2 = new ReentrantLock();
                map.put(str, lock2);
            }
            if (!lock2.tryLock()) {
                return null;
            }
            try {
                FileLock c2 = FileLock.c(str);
                if (c2 == null) {
                    lock2.unlock();
                    return null;
                }
                return new a(str, c2);
            } catch (Exception e) {
                lock2.lock();
                c.a(new RuntimeException(e));
                return null;
            }
        }
    }

    public void a() {
        Map<String, Lock> map = f10206a;
        synchronized (map) {
            this.f10207b.a();
            this.f10207b.b();
            map.get(this.f10208c).unlock();
        }
    }
}
