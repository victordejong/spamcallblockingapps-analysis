package com.google.android.play.core.assetpacks;

import com.google.android.play.core.internal.h;
import java.io.File;
import java.io.IOException;
/* loaded from: classes4-dex2jar.jar:com/google/android/play/core/assetpacks/bn.class */
final class bn {

    /* renamed from: a  reason: collision with root package name */
    private static final h f31186a = new h("MergeSliceTaskHandler");

    /* renamed from: b  reason: collision with root package name */
    private final w f31187b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public bn(w wVar) {
        this.f31187b = wVar;
    }

    private static void a(File file, File file2) {
        File[] listFiles;
        if (file.isDirectory()) {
            file2.mkdirs();
            for (File file3 : file.listFiles()) {
                a(file3, new File(file2, file3.getName()));
            }
            if (!file.delete()) {
                String valueOf = String.valueOf(file);
                StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + 28);
                sb.append("Unable to delete directory: ");
                sb.append(valueOf);
                throw new al(sb.toString());
            }
        } else if (file2.exists()) {
            String valueOf2 = String.valueOf(file2);
            StringBuilder sb2 = new StringBuilder(String.valueOf(valueOf2).length() + 51);
            sb2.append("File clashing with existing file from other slice: ");
            sb2.append(valueOf2);
            throw new al(sb2.toString());
        } else if (!file.renameTo(file2)) {
            String valueOf3 = String.valueOf(file);
            StringBuilder sb3 = new StringBuilder(String.valueOf(valueOf3).length() + 21);
            sb3.append("Unable to move file: ");
            sb3.append(valueOf3);
            throw new al(sb3.toString());
        }
    }

    public final void a(bm bmVar) {
        File b2 = this.f31187b.b(bmVar.k, bmVar.f31183a, bmVar.f31184b, bmVar.f31185c);
        if (b2.exists()) {
            File c2 = this.f31187b.c(bmVar.k, bmVar.f31183a, bmVar.f31184b);
            if (!c2.exists()) {
                c2.mkdirs();
            }
            a(b2, c2);
            try {
                this.f31187b.a(bmVar.k, bmVar.f31183a, bmVar.f31184b, this.f31187b.d(bmVar.k, bmVar.f31183a, bmVar.f31184b) + 1);
            } catch (IOException e) {
                f31186a.b("Writing merge checkpoint failed with %s.", e.getMessage());
                throw new al("Writing merge checkpoint failed.", e, bmVar.j);
            }
        } else {
            throw new al(String.format("Cannot find verified files for slice %s.", bmVar.f31185c), bmVar.j);
        }
    }
}
