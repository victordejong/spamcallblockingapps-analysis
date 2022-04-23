package com.bytedance.sdk.openadsdk.b;

import com.bytedance.sdk.openadsdk.utils.k;
import com.bytedance.sdk.openadsdk.utils.q;
import java.io.File;
import java.io.IOException;
import java.util.List;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/b/b.class */
public abstract class b implements com.bytedance.sdk.openadsdk.b.a {

    /* renamed from: a  reason: collision with root package name */
    private final ExecutorService f8540a = Executors.newSingleThreadExecutor();

    /* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/b/b$a.class */
    class a implements Callable<Void> {

        /* renamed from: b  reason: collision with root package name */
        private final File f8542b;

        private a(File file) {
            this.f8542b = file;
        }

        /* renamed from: a */
        public Void call() throws Exception {
            b.this.b(this.f8542b);
            return null;
        }
    }

    private File b(String str, File file) {
        List<File> a2 = k.a(file);
        if (a2 == null || a2.size() <= 0) {
            return null;
        }
        for (File file2 : a2) {
            if (file2 != null && str.equals(file2.getName())) {
                q.e("TTFullScreenVideoAdImpl", "datastoreGet .........get cache video....");
                return file2;
            }
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b(File file) throws IOException {
        try {
            k.b(file);
        } catch (Throwable th) {
            q.a("LruDiskFile", "setLastModifiedNowError", th);
        }
        a(k.a(file.getParentFile()));
    }

    public File a(String str, File file) throws IOException {
        return b(str, file);
    }

    @Override // com.bytedance.sdk.openadsdk.b.a
    public void a(File file) throws IOException {
        this.f8540a.submit(new a(file));
    }

    protected abstract void a(List<File> list);

    protected abstract boolean a(long j, int i);

    protected abstract boolean a(File file, long j, int i);

    /* JADX INFO: Access modifiers changed from: package-private */
    public long b(List<File> list) {
        long j = 0;
        for (File file : list) {
            j += file.length();
        }
        return j;
    }
}
