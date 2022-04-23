package com.amazonaws.internal;

import com.amazonaws.logging.Log;
import com.amazonaws.logging.LogFactory;
import java.io.FileInputStream;
import java.io.InputStream;
/* loaded from: classes-dex2jar.jar:com/amazonaws/internal/ReleasableInputStream.class */
public class ReleasableInputStream extends SdkFilterInputStream implements Releasable {

    /* renamed from: a  reason: collision with root package name */
    private static final Log f6634a = LogFactory.a(ReleasableInputStream.class);

    /* renamed from: b  reason: collision with root package name */
    private boolean f6635b;

    /* JADX INFO: Access modifiers changed from: protected */
    public ReleasableInputStream(InputStream inputStream) {
        super(inputStream);
    }

    public static ReleasableInputStream a(InputStream inputStream) {
        return inputStream instanceof ReleasableInputStream ? (ReleasableInputStream) inputStream : inputStream instanceof FileInputStream ? ResettableInputStream.a((FileInputStream) inputStream) : new ReleasableInputStream(inputStream);
    }

    private void b() {
        try {
            this.in.close();
        } catch (Exception e) {
            Log log = f6634a;
            if (log.a()) {
                log.a("FYI", e);
            }
        }
        if (this.in instanceof Releasable) {
            ((Releasable) this.in).a();
        }
        abortIfNeeded();
    }

    @Override // com.amazonaws.internal.Releasable
    public final void a() {
        b();
    }

    @Override // com.amazonaws.internal.SdkFilterInputStream, java.io.FilterInputStream, java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        if (!this.f6635b) {
            b();
        }
    }
}
