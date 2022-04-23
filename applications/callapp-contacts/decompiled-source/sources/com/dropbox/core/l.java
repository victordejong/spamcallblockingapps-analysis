package com.dropbox.core;

import com.dropbox.core.DbxApiException;
import com.dropbox.core.a.c;
import com.dropbox.core.http.a;
import com.dropbox.core.util.IOUtil;
import com.fasterxml.jackson.core.JsonProcessingException;
import java.io.Closeable;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
/* loaded from: classes2-dex2jar.jar:com/dropbox/core/l.class */
public abstract class l<R, E, X extends DbxApiException> implements Closeable {

    /* renamed from: a  reason: collision with root package name */
    private final a.c f17818a;

    /* renamed from: b  reason: collision with root package name */
    private final c<R> f17819b;

    /* renamed from: c  reason: collision with root package name */
    private final c<E> f17820c;

    /* renamed from: d  reason: collision with root package name */
    private boolean f17821d = false;
    private boolean e = false;
    private final String f;

    public l(a.c cVar, c<R> cVar2, c<E> cVar3, String str) {
        this.f17818a = cVar;
        this.f17819b = cVar2;
        this.f17820c = cVar3;
        this.f = str;
    }

    private R a() throws DbxApiException, DbxException {
        if (this.f17821d) {
            throw new IllegalStateException("This uploader is already closed.");
        } else if (!this.e) {
            a.b bVar = null;
            try {
                try {
                    a.b c2 = this.f17818a.c();
                    try {
                        if (c2.f17782a == 200) {
                            R deserialize = this.f17819b.deserialize(c2.f17783b);
                            if (c2 != null) {
                                IOUtil.a((Closeable) c2.f17783b);
                            }
                            this.e = true;
                            return deserialize;
                        } else if (c2.f17782a == 409) {
                            throw a(DbxWrappedException.a(this.f17820c, c2, this.f));
                        } else {
                            throw i.a(c2);
                        }
                    } catch (JsonProcessingException e) {
                        throw new BadResponseException(i.c(c2), "Bad JSON in response: ".concat(String.valueOf(e)), e);
                    }
                } catch (IOException e2) {
                    throw new NetworkIOException(e2);
                }
            } catch (Throwable th) {
                if (0 != 0) {
                    IOUtil.a((Closeable) bVar.f17783b);
                }
                this.e = true;
                throw th;
            }
        } else {
            throw new IllegalStateException("This uploader is already finished and cannot be used to upload more data.");
        }
    }

    protected abstract X a(DbxWrappedException dbxWrappedException);

    public final R a(InputStream inputStream) throws DbxApiException, DbxException, IOException {
        try {
            try {
                this.f17818a.a((IOUtil.a) null);
                OutputStream a2 = this.f17818a.a();
                try {
                    IOUtil.a(inputStream, a2);
                    R a3 = a();
                    close();
                    return a3;
                } finally {
                    a2.close();
                }
            } catch (IOUtil.ReadException e) {
                throw e.a();
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
        if (!this.f17821d) {
            this.f17818a.b();
            this.f17821d = true;
        }
    }
}
