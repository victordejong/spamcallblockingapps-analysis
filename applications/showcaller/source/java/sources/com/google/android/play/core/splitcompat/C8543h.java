package com.google.android.play.core.splitcompat;

import android.util.Log;
import com.google.android.play.core.internal.C8505n0;
import java.io.File;
import java.io.FileOutputStream;
import java.io.InputStream;
import java.util.Set;
import java.util.zip.ZipEntry;
import java.util.zip.ZipFile;
/* renamed from: com.google.android.play.core.splitcompat.h */
/* loaded from: classes2-dex2jar.jar:com/google/android/play/core/splitcompat/h.class */
public final class C8543h implements AbstractC8545j {

    /* renamed from: a */
    final /* synthetic */ Set f38121a;

    /* renamed from: b */
    final /* synthetic */ C8553r f38122b;

    /* renamed from: c */
    final /* synthetic */ ZipFile f38123c;

    public C8543h(Set set, C8553r c8553r, ZipFile zipFile) {
        this.f38121a = set;
        this.f38122b = c8553r;
        this.f38123c = zipFile;
    }

    @Override // com.google.android.play.core.splitcompat.AbstractC8545j
    /* renamed from: a */
    public final void mo3364a(C8546k c8546k, File file, boolean z) {
        this.f38121a.add(file);
        if (!z) {
            Log.i("SplitCompat", String.format("NativeLibraryExtractor: split '%s' has native library '%s' that does not exist; extracting from '%s!%s' to '%s'", this.f38122b.m3353b(), c8546k.f38124a, this.f38122b.m3354a().getAbsolutePath(), c8546k.f38125b.getName(), file.getAbsolutePath()));
            ZipFile zipFile = this.f38123c;
            ZipEntry zipEntry = c8546k.f38125b;
            int i = C8547l.f38127b;
            byte[] bArr = new byte[4096];
            InputStream inputStream = zipFile.getInputStream(zipEntry);
            try {
                FileOutputStream fileOutputStream = new FileOutputStream(file);
                while (true) {
                    int read = inputStream.read(bArr);
                    if (read <= 0) {
                        fileOutputStream.close();
                        inputStream.close();
                        return;
                    }
                    fileOutputStream.write(bArr, 0, read);
                }
            } catch (Throwable th) {
                if (inputStream != null) {
                    try {
                        inputStream.close();
                    } catch (Throwable th2) {
                        C8505n0.m3487a(th, th2);
                    }
                }
                throw th;
            }
        }
    }
}
