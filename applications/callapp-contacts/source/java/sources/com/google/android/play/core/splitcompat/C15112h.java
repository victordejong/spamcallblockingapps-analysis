package com.google.android.play.core.splitcompat;

import com.google.android.play.core.internal.C15034ay;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.Set;
import java.util.zip.ZipEntry;
import java.util.zip.ZipFile;
/* renamed from: com.google.android.play.core.splitcompat.h */
/* loaded from: classes4-dex2jar.jar:com/google/android/play/core/splitcompat/h.class */
public final class C15112h implements AbstractC15114j {

    /* renamed from: a */
    final /* synthetic */ Set f54853a;

    /* renamed from: b */
    final /* synthetic */ C15122r f54854b;

    /* renamed from: c */
    final /* synthetic */ ZipFile f54855c;

    public C15112h(Set set, C15122r c15122r, ZipFile zipFile) {
        this.f54853a = set;
        this.f54854b = c15122r;
        this.f54855c = zipFile;
    }

    @Override // com.google.android.play.core.splitcompat.AbstractC15114j
    /* renamed from: a */
    public final void mo9430a(C15115k c15115k, File file, boolean z) throws IOException {
        this.f54853a.add(file);
        if (!z) {
            String.format("NativeLibraryExtractor: split '%s' has native library '%s' that does not exist; extracting from '%s!%s' to '%s'", this.f54854b.f54868b, c15115k.f54856a, this.f54854b.f54867a.getAbsolutePath(), c15115k.f54857b.getName(), file.getAbsolutePath());
            ZipFile zipFile = this.f54855c;
            ZipEntry zipEntry = c15115k.f54857b;
            int i = C15116l.f54858a;
            byte[] bArr = new byte[4096];
            InputStream inputStream = zipFile.getInputStream(zipEntry);
            try {
                FileOutputStream fileOutputStream = new FileOutputStream(file);
                while (true) {
                    int read = inputStream.read(bArr);
                    if (read <= 0) {
                        break;
                    }
                    fileOutputStream.write(bArr, 0, read);
                }
                fileOutputStream.close();
                if (inputStream == null) {
                    return;
                }
                inputStream.close();
            } catch (Throwable th) {
                if (inputStream != null) {
                    try {
                        inputStream.close();
                    } catch (Throwable th2) {
                        C15034ay.m9577a(th, th2);
                    }
                }
                throw th;
            }
        }
    }
}
