package com.criteo.publisher.f;

import android.util.AtomicFile;
import com.criteo.publisher.f.s;
import com.criteo.publisher.f.w;
import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.lang.ref.SoftReference;
/* loaded from: classes2-dex2jar.jar:com/criteo/publisher/f/h.class */
final class h {

    /* renamed from: a  reason: collision with root package name */
    private final String f17270a;

    /* renamed from: b  reason: collision with root package name */
    private final AtomicFile f17271b;

    /* renamed from: d  reason: collision with root package name */
    private final v f17273d;

    /* renamed from: c  reason: collision with root package name */
    private final Object f17272c = new Object();
    private volatile SoftReference<s> e = new SoftReference<>(null);

    /* JADX INFO: Access modifiers changed from: package-private */
    public h(String str, AtomicFile atomicFile, v vVar) {
        this.f17270a = str;
        this.f17271b = atomicFile;
        this.f17273d = vVar;
    }

    private void a(s sVar) throws IOException {
        FileOutputStream startWrite = this.f17271b.startWrite();
        try {
            BufferedOutputStream bufferedOutputStream = new BufferedOutputStream(startWrite);
            try {
                this.f17273d.f17324a.a(sVar, bufferedOutputStream);
                this.f17271b.finishWrite(startWrite);
                bufferedOutputStream.close();
                if (startWrite != null) {
                    startWrite.close();
                }
            } catch (IOException e) {
                this.f17271b.failWrite(startWrite);
                throw e;
            }
        } catch (Throwable th) {
            try {
                throw th;
            } catch (Throwable th2) {
                if (startWrite != null) {
                    try {
                        startWrite.close();
                    } catch (Throwable th3) {
                        th.addSuppressed(th3);
                    }
                }
                throw th2;
            }
        }
    }

    private s b() throws IOException {
        if (!this.f17271b.getBaseFile().exists()) {
            return s.a(this.f17270a).a();
        }
        FileInputStream openRead = this.f17271b.openRead();
        try {
            BufferedInputStream bufferedInputStream = new BufferedInputStream(openRead);
            s sVar = (s) this.f17273d.f17324a.a(s.class, bufferedInputStream);
            bufferedInputStream.close();
            if (openRead != null) {
                openRead.close();
            }
            return sVar;
        } catch (Throwable th) {
            try {
                throw th;
            } catch (Throwable th2) {
                if (openRead != null) {
                    try {
                        openRead.close();
                    } catch (Throwable th3) {
                        th.addSuppressed(th3);
                    }
                }
                throw th2;
            }
        }
    }

    private void b(s sVar) throws IOException {
        synchronized (this.f17272c) {
            this.e = new SoftReference<>(null);
            a(sVar);
            this.e = new SoftReference<>(sVar);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final s a() throws IOException {
        synchronized (this.f17272c) {
            s sVar = this.e.get();
            if (sVar != null) {
                return sVar;
            }
            s b2 = b();
            this.e = new SoftReference<>(b2);
            return b2;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void a(u uVar) throws IOException {
        synchronized (this.f17272c) {
            s a2 = a();
            synchronized (this.f17272c) {
                this.e = new SoftReference<>(null);
                this.f17271b.delete();
            }
            if (!uVar.a(a2)) {
                b(a2);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void a(w.a aVar) throws IOException {
        synchronized (this.f17272c) {
            s.a k = a().k();
            aVar.a(k);
            b(k.a());
        }
    }
}
