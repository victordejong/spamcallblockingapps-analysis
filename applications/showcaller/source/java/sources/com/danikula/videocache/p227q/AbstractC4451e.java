package com.danikula.videocache.p227q;

import java.io.File;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import org.slf4j.AbstractC9605b;
import org.slf4j.C9606c;
/* renamed from: com.danikula.videocache.q.e */
/* loaded from: classes-dex2jar.jar:com/danikula/videocache/q/e.class */
public abstract class AbstractC4451e implements AbstractC4445a {

    /* renamed from: a */
    private static final AbstractC9605b f13574a = C9606c.m352i("LruDiskUsage");

    /* renamed from: b */
    private final ExecutorService f13575b = Executors.newSingleThreadExecutor();

    /* renamed from: com.danikula.videocache.q.e$a */
    /* loaded from: classes-dex2jar.jar:com/danikula/videocache/q/e$a.class */
    private class CallableC4452a implements Callable<Void> {

        /* renamed from: a */
        private final File f13576a;

        public CallableC4452a(File file) {
            AbstractC4451e.this = r4;
            this.f13576a = file;
        }

        /* renamed from: a */
        public Void call() {
            AbstractC4451e.this.m22432e(this.f13576a);
            return null;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v2 */
    /* JADX WARN: Type inference failed for: r0v3 */
    /* JADX WARN: Type inference failed for: r0v9 */
    /* renamed from: d */
    private long m22433d(List<File> list) {
        Iterator<File> it = list.iterator();
        ?? r0 = 0;
        while (true) {
            char c = r0;
            if (it.hasNext()) {
                r0 = c + it.next().length();
            } else {
                return c;
            }
        }
    }

    /* renamed from: e */
    public void m22432e(File file) {
        C4448d.m22438e(file);
        m22431f(C4448d.m22442a(file.getParentFile()));
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [long] */
    /* JADX WARN: Type inference failed for: r0v18, types: [long] */
    /* renamed from: f */
    private void m22431f(List<File> list) {
        char m22433d = m22433d(list);
        int size = list.size();
        for (File file : list) {
            if (!mo22427b(file, m22433d, size)) {
                long length = file.length();
                if (file.delete()) {
                    size--;
                    m22433d -= length;
                    f13574a.info("Cache file " + file + " is deleted because it exceeds cache limit");
                } else {
                    f13574a.error("Error deleting file " + file + " for trimming cache");
                }
            }
        }
    }

    @Override // com.danikula.videocache.p227q.AbstractC4445a
    /* renamed from: a */
    public void mo22435a(File file) {
        this.f13575b.submit(new CallableC4452a(file));
    }

    /* renamed from: b */
    protected abstract boolean mo22427b(File file, long j, int i);
}
