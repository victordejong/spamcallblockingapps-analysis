package com.criteo.publisher.p246f;

import android.util.AtomicFile;
import com.criteo.publisher.p246f.AbstractC8320s;
import com.criteo.publisher.p246f.AbstractC8326w;
import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.lang.ref.SoftReference;
/* renamed from: com.criteo.publisher.f.h */
/* loaded from: classes2-dex2jar.jar:com/criteo/publisher/f/h.class */
final class C8298h {

    /* renamed from: a */
    private final String f29905a;

    /* renamed from: b */
    private final AtomicFile f29906b;

    /* renamed from: d */
    private final C8325v f29908d;

    /* renamed from: c */
    private final Object f29907c = new Object();

    /* renamed from: e */
    private volatile SoftReference<AbstractC8320s> f29909e = new SoftReference<>(null);

    public C8298h(String str, AtomicFile atomicFile, C8325v c8325v) {
        this.f29905a = str;
        this.f29906b = atomicFile;
        this.f29908d = c8325v;
    }

    /* renamed from: a */
    private void m25912a(AbstractC8320s abstractC8320s) throws IOException {
        FileOutputStream startWrite = this.f29906b.startWrite();
        try {
            BufferedOutputStream bufferedOutputStream = new BufferedOutputStream(startWrite);
            try {
                this.f29908d.f29968a.m25680a(abstractC8320s, bufferedOutputStream);
                this.f29906b.finishWrite(startWrite);
                bufferedOutputStream.close();
                if (startWrite == null) {
                    return;
                }
                startWrite.close();
            } catch (IOException e) {
                this.f29906b.failWrite(startWrite);
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

    /* renamed from: b */
    private AbstractC8320s m25909b() throws IOException {
        if (!this.f29906b.getBaseFile().exists()) {
            return AbstractC8320s.m25882a(this.f29905a).mo25870a();
        }
        FileInputStream openRead = this.f29906b.openRead();
        try {
            BufferedInputStream bufferedInputStream = new BufferedInputStream(openRead);
            AbstractC8320s abstractC8320s = (AbstractC8320s) this.f29908d.f29968a.m25681a(AbstractC8320s.class, bufferedInputStream);
            bufferedInputStream.close();
            if (openRead != null) {
                openRead.close();
            }
            return abstractC8320s;
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

    /* renamed from: b */
    private void m25908b(AbstractC8320s abstractC8320s) throws IOException {
        synchronized (this.f29907c) {
            this.f29909e = new SoftReference<>(null);
            m25912a(abstractC8320s);
            this.f29909e = new SoftReference<>(abstractC8320s);
        }
    }

    /* renamed from: a */
    public final AbstractC8320s m25913a() throws IOException {
        synchronized (this.f29907c) {
            AbstractC8320s abstractC8320s = this.f29909e.get();
            if (abstractC8320s != null) {
                return abstractC8320s;
            }
            AbstractC8320s m25909b = m25909b();
            this.f29909e = new SoftReference<>(m25909b);
            return m25909b;
        }
    }

    /* renamed from: a */
    public final void m25911a(AbstractC8324u abstractC8324u) throws IOException {
        synchronized (this.f29907c) {
            AbstractC8320s m25913a = m25913a();
            synchronized (this.f29907c) {
                this.f29909e = new SoftReference<>(null);
                this.f29906b.delete();
            }
            if (!abstractC8324u.mo25855a(m25913a)) {
                m25908b(m25913a);
            }
        }
    }

    /* renamed from: a */
    public final void m25910a(AbstractC8326w.AbstractC8327a abstractC8327a) throws IOException {
        synchronized (this.f29907c) {
            AbstractC8320s.AbstractC8321a mo25872k = m25913a().mo25872k();
            abstractC8327a.mo25849a(mo25872k);
            m25908b(mo25872k.mo25870a());
        }
    }
}
