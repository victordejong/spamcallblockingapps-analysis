package p193e.p1512i.p1516b.p1537z1;

import android.util.AtomicFile;
import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.lang.ref.SoftReference;
import java.util.Objects;
import p193e.p1512i.p1516b.p1537z1.AbstractC23184g;
/* renamed from: e.i.b.z1.l */
/* loaded from: classes-dex2jar.jar:e/i/b/z1/l.class */
public class C23197l {

    /* renamed from: a */
    public final String f64207a;

    /* renamed from: b */
    public final AtomicFile f64208b;

    /* renamed from: d */
    public final C23170a0 f64210d;

    /* renamed from: c */
    public final Object f64209c = new Object();

    /* renamed from: e */
    public volatile SoftReference<AbstractC23211x> f64211e = new SoftReference<>(null);

    public C23197l(String str, AtomicFile atomicFile, C23170a0 c23170a0) {
        this.f64207a = str;
        this.f64208b = atomicFile;
        this.f64210d = c23170a0;
    }

    /* renamed from: a */
    public void m7401a(AbstractC23211x abstractC23211x) throws IOException {
        synchronized (this.f64209c) {
            this.f64211e = new SoftReference<>(null);
            m7398d(abstractC23211x);
            this.f64211e = new SoftReference<>(abstractC23211x);
        }
    }

    /* renamed from: b */
    public void m7400b(AbstractC23215z abstractC23215z) throws IOException {
        synchronized (this.f64209c) {
            AbstractC23211x m7399c = m7399c();
            synchronized (this.f64209c) {
                this.f64211e = new SoftReference<>(null);
                this.f64208b.delete();
            }
            if (!C23189h0.this.f64187a.mo7388a((AbstractC23181e0) m7399c)) {
                m7401a(m7399c);
            }
        }
    }

    /* renamed from: c */
    public AbstractC23211x m7399c() throws IOException {
        synchronized (this.f64209c) {
            AbstractC23211x abstractC23211x = this.f64211e.get();
            if (abstractC23211x != null) {
                return abstractC23211x;
            }
            AbstractC23211x m7397e = m7397e();
            this.f64211e = new SoftReference<>(m7397e);
            return m7397e;
        }
    }

    /* renamed from: d */
    public final void m7398d(AbstractC23211x abstractC23211x) throws IOException {
        FileOutputStream startWrite = this.f64208b.startWrite();
        try {
            BufferedOutputStream bufferedOutputStream = new BufferedOutputStream(startWrite);
            try {
                this.f64210d.f64146a.m7562b(abstractC23211x, bufferedOutputStream);
                this.f64208b.finishWrite(startWrite);
                bufferedOutputStream.close();
                if (startWrite == null) {
                    return;
                }
                startWrite.close();
            } catch (IOException e) {
                this.f64208b.failWrite(startWrite);
                throw e;
            }
        } catch (Throwable th) {
            if (startWrite != null) {
                try {
                    startWrite.close();
                } catch (Throwable th2) {
                    th.addSuppressed(th2);
                }
            }
            throw th;
        }
    }

    /* renamed from: e */
    public final AbstractC23211x m7397e() throws IOException {
        if (!this.f64208b.getBaseFile().exists()) {
            String str = this.f64207a;
            AbstractC23184g.C23186b c23186b = new AbstractC23184g.C23186b();
            c23186b.mo7358d(false);
            c23186b.mo7359c(false);
            c23186b.mo7361a(false);
            Objects.requireNonNull(str, "Null impressionId");
            c23186b.f64177f = str;
            return c23186b.mo7360b();
        }
        FileInputStream openRead = this.f64208b.openRead();
        try {
            BufferedInputStream bufferedInputStream = new BufferedInputStream(openRead);
            AbstractC23211x abstractC23211x = (AbstractC23211x) this.f64210d.f64146a.m7563a(AbstractC23211x.class, bufferedInputStream);
            bufferedInputStream.close();
            if (openRead != null) {
                openRead.close();
            }
            return abstractC23211x;
        } catch (Throwable th) {
            if (openRead != null) {
                try {
                    openRead.close();
                } catch (Throwable th2) {
                    th.addSuppressed(th2);
                }
            }
            throw th;
        }
    }
}
