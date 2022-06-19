package com.dropbox.core;

import com.dropbox.core.DbxApiException;
import com.dropbox.core.http.AbstractC8582a;
import com.dropbox.core.p263a.AbstractC8547c;
import com.dropbox.core.util.IOUtil;
import com.fasterxml.jackson.core.JsonProcessingException;
import java.io.Closeable;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
/* renamed from: com.dropbox.core.l */
/* loaded from: classes2-dex2jar.jar:com/dropbox/core/l.class */
public abstract class AbstractC8619l<R, E, X extends DbxApiException> implements Closeable {

    /* renamed from: a */
    private final AbstractC8582a.AbstractC8585c f30612a;

    /* renamed from: b */
    private final AbstractC8547c<R> f30613b;

    /* renamed from: c */
    private final AbstractC8547c<E> f30614c;

    /* renamed from: d */
    private boolean f30615d = false;

    /* renamed from: e */
    private boolean f30616e = false;

    /* renamed from: f */
    private final String f30617f;

    public AbstractC8619l(AbstractC8582a.AbstractC8585c abstractC8585c, AbstractC8547c<R> abstractC8547c, AbstractC8547c<E> abstractC8547c2, String str) {
        this.f30612a = abstractC8585c;
        this.f30613b = abstractC8547c;
        this.f30614c = abstractC8547c2;
        this.f30617f = str;
    }

    /* renamed from: a */
    private R m25255a() throws DbxApiException, DbxException {
        if (!this.f30615d) {
            if (this.f30616e) {
                throw new IllegalStateException("This uploader is already finished and cannot be used to upload more data.");
            }
            AbstractC8582a.C8584b c8584b = null;
            try {
                try {
                    AbstractC8582a.C8584b mo25284c = this.f30612a.mo25284c();
                    try {
                        if (mo25284c.f30566a != 200) {
                            if (mo25284c.f30566a != 409) {
                                throw C8600i.m25279a(mo25284c);
                            }
                            throw mo24988a(DbxWrappedException.m25357a(this.f30614c, mo25284c, this.f30617f));
                        }
                        R deserialize = this.f30613b.deserialize(mo25284c.f30567b);
                        if (mo25284c != null) {
                            IOUtil.m25247a((Closeable) mo25284c.f30567b);
                        }
                        this.f30616e = true;
                        return deserialize;
                    } catch (JsonProcessingException e) {
                        throw new BadResponseException(C8600i.m25260c(mo25284c), "Bad JSON in response: ".concat(String.valueOf(e)), e);
                    }
                } catch (IOException e2) {
                    throw new NetworkIOException(e2);
                }
            } catch (Throwable th) {
                if (0 != 0) {
                    IOUtil.m25247a((Closeable) c8584b.f30567b);
                }
                this.f30616e = true;
                throw th;
            }
        }
        throw new IllegalStateException("This uploader is already closed.");
    }

    /* renamed from: a */
    protected abstract X mo24988a(DbxWrappedException dbxWrappedException);

    /* renamed from: a */
    public final R m25254a(InputStream inputStream) throws DbxApiException, DbxException, IOException {
        try {
            try {
                this.f30612a.mo25286a((IOUtil.AbstractC8630a) null);
                OutputStream mo25287a = this.f30612a.mo25287a();
                try {
                    IOUtil.m25245a(inputStream, mo25287a);
                    R m25255a = m25255a();
                    close();
                    return m25255a;
                } finally {
                    mo25287a.close();
                }
            } catch (IOUtil.ReadException e) {
                throw e.m25242a();
            } catch (IOException e2) {
                throw new NetworkIOException(e2);
            }
        } catch (Throwable th) {
            close();
            throw th;
        }
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        if (!this.f30615d) {
            this.f30612a.mo25285b();
            this.f30615d = true;
        }
    }
}
