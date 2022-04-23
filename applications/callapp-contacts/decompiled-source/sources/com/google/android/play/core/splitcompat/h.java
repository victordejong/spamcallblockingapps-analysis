package com.google.android.play.core.splitcompat;

import com.google.android.play.core.internal.ay;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.Set;
import java.util.zip.ZipEntry;
import java.util.zip.ZipFile;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes4-dex2jar.jar:com/google/android/play/core/splitcompat/h.class */
public final class h implements j {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ Set f31438a;

    /* renamed from: b  reason: collision with root package name */
    final /* synthetic */ r f31439b;

    /* renamed from: c  reason: collision with root package name */
    final /* synthetic */ ZipFile f31440c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public h(Set set, r rVar, ZipFile zipFile) {
        this.f31438a = set;
        this.f31439b = rVar;
        this.f31440c = zipFile;
    }

    @Override // com.google.android.play.core.splitcompat.j
    public final void a(k kVar, File file, boolean z) throws IOException {
        this.f31438a.add(file);
        if (!z) {
            String.format("NativeLibraryExtractor: split '%s' has native library '%s' that does not exist; extracting from '%s!%s' to '%s'", this.f31439b.f31453b, kVar.f31441a, this.f31439b.f31452a.getAbsolutePath(), kVar.f31442b.getName(), file.getAbsolutePath());
            ZipFile zipFile = this.f31440c;
            ZipEntry zipEntry = kVar.f31442b;
            int i = l.f31443a;
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
                if (inputStream != null) {
                    inputStream.close();
                }
            } catch (Throwable th) {
                if (inputStream != null) {
                    try {
                        inputStream.close();
                    } catch (Throwable th2) {
                        ay.a(th, th2);
                    }
                }
                throw th;
            }
        }
    }
}
