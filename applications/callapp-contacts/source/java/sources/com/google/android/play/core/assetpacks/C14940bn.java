package com.google.android.play.core.assetpacks;

import com.google.android.play.core.internal.C15072h;
import java.io.File;
import java.io.IOException;
/* renamed from: com.google.android.play.core.assetpacks.bn */
/* loaded from: classes4-dex2jar.jar:com/google/android/play/core/assetpacks/bn.class */
public final class C14940bn {

    /* renamed from: a */
    private static final C15072h f54543a = new C15072h("MergeSliceTaskHandler");

    /* renamed from: b */
    private final C14996w f54544b;

    public C14940bn(C14996w c14996w) {
        this.f54544b = c14996w;
    }

    /* renamed from: a */
    private static void m9735a(File file, File file2) {
        File[] listFiles;
        if (!file.isDirectory()) {
            if (file2.exists()) {
                String valueOf = String.valueOf(file2);
                StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + 51);
                sb.append("File clashing with existing file from other slice: ");
                sb.append(valueOf);
                throw new C14911al(sb.toString());
            } else if (file.renameTo(file2)) {
                return;
            } else {
                String valueOf2 = String.valueOf(file);
                StringBuilder sb2 = new StringBuilder(String.valueOf(valueOf2).length() + 21);
                sb2.append("Unable to move file: ");
                sb2.append(valueOf2);
                throw new C14911al(sb2.toString());
            }
        }
        file2.mkdirs();
        for (File file3 : file.listFiles()) {
            m9735a(file3, new File(file2, file3.getName()));
        }
        if (file.delete()) {
            return;
        }
        String valueOf3 = String.valueOf(file);
        StringBuilder sb3 = new StringBuilder(String.valueOf(valueOf3).length() + 28);
        sb3.append("Unable to delete directory: ");
        sb3.append(valueOf3);
        throw new C14911al(sb3.toString());
    }

    /* renamed from: a */
    public final void m9736a(C14939bm c14939bm) {
        File m9657b = this.f54544b.m9657b(c14939bm.f54507k, c14939bm.f54540a, c14939bm.f54541b, c14939bm.f54542c);
        if (m9657b.exists()) {
            File m9653c = this.f54544b.m9653c(c14939bm.f54507k, c14939bm.f54540a, c14939bm.f54541b);
            if (!m9653c.exists()) {
                m9653c.mkdirs();
            }
            m9735a(m9657b, m9653c);
            try {
                this.f54544b.m9663a(c14939bm.f54507k, c14939bm.f54540a, c14939bm.f54541b, this.f54544b.m9650d(c14939bm.f54507k, c14939bm.f54540a, c14939bm.f54541b) + 1);
                return;
            } catch (IOException e) {
                f54543a.m9509b("Writing merge checkpoint failed with %s.", e.getMessage());
                throw new C14911al("Writing merge checkpoint failed.", e, c14939bm.f54506j);
            }
        }
        throw new C14911al(String.format("Cannot find verified files for slice %s.", c14939bm.f54542c), c14939bm.f54506j);
    }
}
