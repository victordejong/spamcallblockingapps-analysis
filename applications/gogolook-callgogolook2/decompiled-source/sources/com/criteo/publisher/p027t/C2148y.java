package com.criteo.publisher.p027t;

import android.util.AtomicFile;
import androidx.annotation.GuardedBy;
import androidx.annotation.NonNull;
import androidx.annotation.RequiresApi;
import androidx.annotation.VisibleForTesting;
import com.criteo.publisher.p027t.AbstractC2127m;
import com.criteo.publisher.p027t.AbstractC2135r;
import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.lang.ref.SoftReference;
@RequiresApi(api = 17)
/* renamed from: com.criteo.publisher.t.y */
/* loaded from: classes-dex2jar.jar:com/criteo/publisher/t/y.class */
public class C2148y {
    @NonNull

    /* renamed from: a */
    public final String f2445a;
    @NonNull
    @GuardedBy("fileLock")

    /* renamed from: b */
    public final AtomicFile f2446b;
    @NonNull

    /* renamed from: d */
    public final C2134q f2448d;
    @NonNull

    /* renamed from: c */
    public final Object f2447c = new Object();
    @NonNull

    /* renamed from: e */
    public volatile SoftReference<AbstractC2127m> f2449e = new SoftReference<>(null);

    public C2148y(@NonNull String str, @NonNull AtomicFile atomicFile, @NonNull C2134q qVar) {
        this.f2445a = str;
        this.f2446b = atomicFile;
        this.f2448d = qVar;
    }

    /* renamed from: b */
    private void m35606b(@NonNull AbstractC2127m mVar) throws IOException {
        FileOutputStream startWrite = this.f2446b.startWrite();
        try {
            BufferedOutputStream bufferedOutputStream = new BufferedOutputStream(startWrite);
            try {
                this.f2448d.m35645a(mVar, bufferedOutputStream);
                this.f2446b.finishWrite(startWrite);
                bufferedOutputStream.close();
                if (startWrite != null) {
                    startWrite.close();
                }
            } catch (IOException e) {
                this.f2446b.failWrite(startWrite);
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

    @NonNull
    /* renamed from: c */
    private AbstractC2127m m35605c() throws IOException {
        if (!this.f2446b.getBaseFile().exists()) {
            return AbstractC2127m.m35675a(this.f2445a).mo35665a();
        }
        FileInputStream openRead = this.f2446b.openRead();
        try {
            BufferedInputStream bufferedInputStream = new BufferedInputStream(openRead);
            AbstractC2127m a = this.f2448d.m35644a(bufferedInputStream);
            bufferedInputStream.close();
            if (openRead != null) {
                openRead.close();
            }
            return a;
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

    @VisibleForTesting
    /* renamed from: a */
    public void m35611a() {
        synchronized (this.f2447c) {
            this.f2449e = new SoftReference<>(null);
            this.f2446b.delete();
        }
    }

    @VisibleForTesting
    /* renamed from: a */
    public void m35610a(AbstractC2127m mVar) throws IOException {
        synchronized (this.f2447c) {
            this.f2449e = new SoftReference<>(null);
            m35606b(mVar);
            this.f2449e = new SoftReference<>(mVar);
        }
    }

    /* renamed from: a */
    public void m35609a(AbstractC2131o oVar) throws IOException {
        synchronized (this.f2447c) {
            AbstractC2127m b = m35607b();
            m35611a();
            if (!oVar.mo35612a(b)) {
                m35610a(b);
            }
        }
    }

    /* renamed from: a */
    public void m35608a(AbstractC2135r.AbstractC2136a aVar) throws IOException {
        synchronized (this.f2447c) {
            AbstractC2127m.AbstractC2128a i = m35607b().mo35667i();
            aVar.mo35638a(i);
            m35610a(i.mo35665a());
        }
    }

    /* renamed from: b */
    public AbstractC2127m m35607b() throws IOException {
        synchronized (this.f2447c) {
            AbstractC2127m mVar = this.f2449e.get();
            if (mVar != null) {
                return mVar;
            }
            AbstractC2127m c = m35605c();
            this.f2449e = new SoftReference<>(c);
            return c;
        }
    }
}
