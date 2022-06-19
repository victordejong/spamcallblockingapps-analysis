package com.bytedance.sdk.openadsdk.preload.geckox.p221g;

import android.os.Process;
import android.util.Pair;
import com.bytedance.sdk.openadsdk.preload.geckox.utils.C5419d;
import com.bytedance.sdk.openadsdk.preload.geckox.utils.ExecutorC5422f;
import com.bytedance.sdk.openadsdk.preload.geckox.utils.FileLock;
import java.io.File;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.atomic.AtomicLong;
/* renamed from: com.bytedance.sdk.openadsdk.preload.geckox.g.c */
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/preload/geckox/g/c.class */
public class C5378c {

    /* renamed from: a */
    private static final Map<String, Pair<FileLock, AtomicLong>> f18876a = new HashMap();

    /* renamed from: a */
    public static void m32434a(String str) throws Exception {
        Map<String, Pair<FileLock, AtomicLong>> map = f18876a;
        synchronized (map) {
            Pair<FileLock, AtomicLong> pair = map.get(str);
            Pair<FileLock, AtomicLong> pair2 = pair;
            if (pair == null) {
                pair2 = new Pair<>(FileLock.m32369a(str, Process.myPid()), new AtomicLong(0L));
                map.put(str, pair2);
            }
            ((AtomicLong) pair2.second).incrementAndGet();
        }
    }

    /* renamed from: b */
    public static void m32433b(String str) throws Exception {
        Map<String, Pair<FileLock, AtomicLong>> map = f18876a;
        synchronized (map) {
            Pair<FileLock, AtomicLong> pair = map.get(str);
            if (pair == null) {
                throw new RuntimeException("using.lock illegal state");
            }
            int i = (((AtomicLong) pair.second).decrementAndGet() > 0L ? 1 : (((AtomicLong) pair.second).decrementAndGet() == 0L ? 0 : -1));
            if (i < 0) {
                throw new RuntimeException("using.lock count illegal");
            }
            if (i == 0) {
                ((FileLock) pair.first).m32371a();
                map.remove(str);
            }
        }
    }

    /* renamed from: c */
    public static void m32432c(String str) throws Exception {
        Map<String, Pair<FileLock, AtomicLong>> map = f18876a;
        synchronized (map) {
            FileLock m32367b = FileLock.m32367b(str);
            if (m32367b == null) {
                return;
            }
            Pair<FileLock, AtomicLong> pair = map.get(str);
            if (pair != null && ((AtomicLong) pair.second).get() != 0) {
                m32367b.m32371a();
                FileLock.m32369a(str, Process.myPid());
                return;
            }
            File parentFile = new File(str).getParentFile();
            final File file = new File(parentFile.getAbsolutePath() + "--pending-delete");
            if (parentFile.renameTo(file)) {
                m32367b.m32371a();
                m32367b.m32368b();
                ExecutorC5422f.m32351a().execute(new Runnable() { // from class: com.bytedance.sdk.openadsdk.preload.geckox.g.c.1
                    @Override // java.lang.Runnable
                    public final void run() {
                        C5419d.m32358a(file);
                    }
                });
            }
        }
    }
}
