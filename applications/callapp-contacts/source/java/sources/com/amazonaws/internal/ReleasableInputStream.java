package com.amazonaws.internal;

import com.amazonaws.logging.Log;
import com.amazonaws.logging.LogFactory;
import java.io.FileInputStream;
import java.io.InputStream;
/* loaded from: classes-dex2jar.jar:com/amazonaws/internal/ReleasableInputStream.class */
public class ReleasableInputStream extends SdkFilterInputStream implements Releasable {

    /* renamed from: a */
    private static final Log f12084a = LogFactory.m38584a(ReleasableInputStream.class);

    /* renamed from: b */
    private boolean f12085b;

    public ReleasableInputStream(InputStream inputStream) {
        super(inputStream);
    }

    /* renamed from: a */
    public static ReleasableInputStream m38608a(InputStream inputStream) {
        return inputStream instanceof ReleasableInputStream ? (ReleasableInputStream) inputStream : inputStream instanceof FileInputStream ? ResettableInputStream.m38606a((FileInputStream) inputStream) : new ReleasableInputStream(inputStream);
    }

    /* renamed from: b */
    private void m38607b() {
        try {
            this.in.close();
        } catch (Exception e) {
            Log log = f12084a;
            if (log.mo38597a()) {
                log.mo38595a("FYI", e);
            }
        }
        if (this.in instanceof Releasable) {
            ((Releasable) this.in).mo38609a();
        }
        abortIfNeeded();
    }

    @Override // com.amazonaws.internal.Releasable
    /* renamed from: a */
    public final void mo38609a() {
        m38607b();
    }

    @Override // com.amazonaws.internal.SdkFilterInputStream, java.io.FilterInputStream, java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        if (!this.f12085b) {
            m38607b();
        }
    }
}
