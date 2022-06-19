package com.bytedance.sdk.openadsdk.preload.geckox.p221g;

import com.bytedance.sdk.openadsdk.preload.geckox.utils.C5418c;
import com.bytedance.sdk.openadsdk.preload.geckox.utils.FileLock;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.locks.Lock;
import java.util.concurrent.locks.ReentrantLock;
/* renamed from: com.bytedance.sdk.openadsdk.preload.geckox.g.a */
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/preload/geckox/g/a.class */
public class C5376a {

    /* renamed from: a */
    private static final Map<String, Lock> f18869a = new HashMap();

    /* renamed from: b */
    private FileLock f18870b;

    /* renamed from: c */
    private String f18871c;

    private C5376a(String str, FileLock fileLock) {
        this.f18871c = str;
        this.f18870b = fileLock;
    }

    /* renamed from: a */
    public static C5376a m32437a(String str) throws Exception {
        Map<String, Lock> map = f18869a;
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
                FileLock m32366c = FileLock.m32366c(str);
                if (m32366c == null) {
                    lock2.unlock();
                    return null;
                }
                return new C5376a(str, m32366c);
            } catch (Exception e) {
                lock2.lock();
                C5418c.m32359a(new RuntimeException(e));
                return null;
            }
        }
    }

    /* renamed from: a */
    public void m32438a() {
        Map<String, Lock> map = f18869a;
        synchronized (map) {
            this.f18870b.m32371a();
            this.f18870b.m32368b();
            map.get(this.f18871c).unlock();
        }
    }
}
