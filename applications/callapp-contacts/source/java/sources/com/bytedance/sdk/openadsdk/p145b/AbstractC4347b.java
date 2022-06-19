package com.bytedance.sdk.openadsdk.p145b;

import com.bytedance.sdk.openadsdk.utils.C5467k;
import com.bytedance.sdk.openadsdk.utils.C5478q;
import java.io.File;
import java.io.IOException;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
/* renamed from: com.bytedance.sdk.openadsdk.b.b */
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/b/b.class */
public abstract class AbstractC4347b implements AbstractC4346a {

    /* renamed from: a */
    private final ExecutorService f16000a = Executors.newSingleThreadExecutor();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.bytedance.sdk.openadsdk.b.b$a */
    /* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/b/b$a.class */
    public class CallableC4349a implements Callable<Void> {

        /* renamed from: b */
        private final File f16002b;

        private CallableC4349a(File file) {
            AbstractC4347b.this = r4;
            this.f16002b = file;
        }

        /* renamed from: a */
        public Void call() throws Exception {
            AbstractC4347b.this.m35744b(this.f16002b);
            return null;
        }
    }

    /* renamed from: b */
    private File m35743b(String str, File file) {
        List<File> m32139a = C5467k.m32139a(file);
        if (m32139a == null || m32139a.size() <= 0) {
            return null;
        }
        for (File file2 : m32139a) {
            if (file2 != null && str.equals(file2.getName())) {
                C5478q.m32106e("TTFullScreenVideoAdImpl", "datastoreGet .........get cache video....");
                return file2;
            }
        }
        return null;
    }

    /* renamed from: b */
    public void m35744b(File file) throws IOException {
        try {
            C5467k.m32138b(file);
        } catch (Throwable th) {
            C5478q.m32117a("LruDiskFile", "setLastModifiedNowError", th);
        }
        mo34552a(C5467k.m32139a(file.getParentFile()));
    }

    /* renamed from: a */
    public File mo35738a(String str, File file) throws IOException {
        return m35743b(str, file);
    }

    @Override // com.bytedance.sdk.openadsdk.p145b.AbstractC4346a
    /* renamed from: a */
    public void mo35745a(File file) throws IOException {
        this.f16000a.submit(new CallableC4349a(file));
    }

    /* renamed from: a */
    protected abstract void mo34552a(List<File> list);

    /* renamed from: a */
    protected abstract boolean mo35740a(long j, int i);

    /* renamed from: a */
    protected abstract boolean mo35739a(File file, long j, int i);

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v2 */
    /* JADX WARN: Type inference failed for: r0v3 */
    /* JADX WARN: Type inference failed for: r0v9 */
    /* renamed from: b */
    public long m35742b(List<File> list) {
        Iterator<File> it2 = list.iterator();
        ?? r0 = 0;
        while (true) {
            char c = r0;
            if (it2.hasNext()) {
                r0 = c + it2.next().length();
            } else {
                return c;
            }
        }
    }
}
