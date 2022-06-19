package com.bytedance.sdk.p127a.p129b.p130a.p136f;

import java.io.File;
import java.io.IOException;
/* renamed from: com.bytedance.sdk.a.b.a.f.a */
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/a/b/a/f/a.class */
public interface AbstractC4080a {

    /* renamed from: a */
    public static final AbstractC4080a f14829a = new AbstractC4080a() { // from class: com.bytedance.sdk.a.b.a.f.a.1
        @Override // com.bytedance.sdk.p127a.p129b.p130a.p136f.AbstractC4080a
        /* renamed from: a */
        public final void mo36672a(File file) throws IOException {
            if (file.delete() || !file.exists()) {
                return;
            }
            throw new IOException("failed to delete ".concat(String.valueOf(file)));
        }

        @Override // com.bytedance.sdk.p127a.p129b.p130a.p136f.AbstractC4080a
        /* renamed from: a */
        public final void mo36671a(File file, File file2) throws IOException {
            mo36672a(file2);
            if (file.renameTo(file2)) {
                return;
            }
            throw new IOException("failed to rename " + file + " to " + file2);
        }

        @Override // com.bytedance.sdk.p127a.p129b.p130a.p136f.AbstractC4080a
        /* renamed from: b */
        public final boolean mo36670b(File file) {
            return file.exists();
        }

        @Override // com.bytedance.sdk.p127a.p129b.p130a.p136f.AbstractC4080a
        /* renamed from: c */
        public final long mo36669c(File file) {
            return file.length();
        }
    };

    /* renamed from: a */
    void mo36672a(File file) throws IOException;

    /* renamed from: a */
    void mo36671a(File file, File file2) throws IOException;

    /* renamed from: b */
    boolean mo36670b(File file);

    /* renamed from: c */
    long mo36669c(File file);
}
