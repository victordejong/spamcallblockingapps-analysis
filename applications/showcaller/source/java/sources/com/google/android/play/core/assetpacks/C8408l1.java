package com.google.android.play.core.assetpacks;

import com.google.android.play.core.internal.C8466a;
import java.io.File;
import java.io.IOException;
/* renamed from: com.google.android.play.core.assetpacks.l1 */
/* loaded from: classes2-dex2jar.jar:com/google/android/play/core/assetpacks/l1.class */
public final class C8408l1 {

    /* renamed from: a */
    private static final C8466a f37840a = new C8466a("MergeSliceTaskHandler");

    /* renamed from: b */
    private final C8446v f37841b;

    public C8408l1(C8446v c8446v) {
        this.f37841b = c8446v;
    }

    /* renamed from: b */
    private static void m3718b(File file, File file2) {
        File[] listFiles;
        if (!file.isDirectory()) {
            if (file2.exists()) {
                String valueOf = String.valueOf(file2);
                StringBuilder sb = new StringBuilder(valueOf.length() + 51);
                sb.append("File clashing with existing file from other slice: ");
                sb.append(valueOf);
                throw new C8369bk(sb.toString());
            } else if (file.renameTo(file2)) {
                return;
            } else {
                String valueOf2 = String.valueOf(file);
                StringBuilder sb2 = new StringBuilder(valueOf2.length() + 21);
                sb2.append("Unable to move file: ");
                sb2.append(valueOf2);
                throw new C8369bk(sb2.toString());
            }
        }
        file2.mkdirs();
        for (File file3 : file.listFiles()) {
            m3718b(file3, new File(file2, file3.getName()));
        }
        if (file.delete()) {
            return;
        }
        String valueOf3 = String.valueOf(file);
        StringBuilder sb3 = new StringBuilder(valueOf3.length() + 28);
        sb3.append("Unable to delete directory: ");
        sb3.append(valueOf3);
        throw new C8369bk(sb3.toString());
    }

    /* renamed from: a */
    public final void m3719a(C8404k1 c8404k1) {
        File m3639w = this.f37841b.m3639w(c8404k1.f37669b, c8404k1.f37825c, c8404k1.f37826d, c8404k1.f37827e);
        if (m3639w.exists()) {
            File m3638x = this.f37841b.m3638x(c8404k1.f37669b, c8404k1.f37825c, c8404k1.f37826d);
            if (!m3638x.exists()) {
                m3638x.mkdirs();
            }
            m3718b(m3639w, m3638x);
            try {
                this.f37841b.m3636z(c8404k1.f37669b, c8404k1.f37825c, c8404k1.f37826d, this.f37841b.m3637y(c8404k1.f37669b, c8404k1.f37825c, c8404k1.f37826d) + 1);
                return;
            } catch (IOException e) {
                f37840a.m3566b("Writing merge checkpoint failed with %s.", e.getMessage());
                throw new C8369bk("Writing merge checkpoint failed.", e, c8404k1.f37668a);
            }
        }
        throw new C8369bk(String.format("Cannot find verified files for slice %s.", c8404k1.f37827e), c8404k1.f37668a);
    }
}
