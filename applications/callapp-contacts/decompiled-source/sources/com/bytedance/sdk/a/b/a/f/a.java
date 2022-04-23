package com.bytedance.sdk.a.b.a.f;

import java.io.File;
import java.io.IOException;
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/a/b/a/f/a.class */
public interface a {

    /* renamed from: a  reason: collision with root package name */
    public static final a f8024a = new a() { // from class: com.bytedance.sdk.a.b.a.f.a.1
        @Override // com.bytedance.sdk.a.b.a.f.a
        public final void a(File file) throws IOException {
            if (!file.delete() && file.exists()) {
                throw new IOException("failed to delete ".concat(String.valueOf(file)));
            }
        }

        @Override // com.bytedance.sdk.a.b.a.f.a
        public final void a(File file, File file2) throws IOException {
            a(file2);
            if (!file.renameTo(file2)) {
                throw new IOException("failed to rename " + file + " to " + file2);
            }
        }

        @Override // com.bytedance.sdk.a.b.a.f.a
        public final boolean b(File file) {
            return file.exists();
        }

        @Override // com.bytedance.sdk.a.b.a.f.a
        public final long c(File file) {
            return file.length();
        }
    };

    void a(File file) throws IOException;

    void a(File file, File file2) throws IOException;

    boolean b(File file);

    long c(File file);
}
