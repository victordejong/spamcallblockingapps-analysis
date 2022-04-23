package com.criteo.publisher.f;

import android.content.Context;
import com.criteo.publisher.logging.g;
import com.criteo.publisher.logging.h;
import com.criteo.publisher.m0.l;
import com.squareup.tape.a;
import com.squareup.tape.b;
import com.squareup.tape.c;
import java.io.ByteArrayInputStream;
import java.io.File;
import java.io.IOException;
import java.io.OutputStream;
/* loaded from: classes2-dex2jar.jar:com/criteo/publisher/f/ae.class */
public final class ae<T> {

    /* renamed from: a  reason: collision with root package name */
    final Context f17252a;

    /* renamed from: b  reason: collision with root package name */
    final b<T> f17253b;

    /* renamed from: c  reason: collision with root package name */
    private final g f17254c = h.a(getClass());

    /* renamed from: d  reason: collision with root package name */
    private final l f17255d;

    /* loaded from: classes2-dex2jar.jar:com/criteo/publisher/f/ae$a.class */
    static final class a<T> implements a.AbstractC0555a<T> {

        /* renamed from: a  reason: collision with root package name */
        private final l f17256a;

        /* renamed from: b  reason: collision with root package name */
        private final Class<T> f17257b;

        a(l lVar, Class<T> cls) {
            this.f17256a = lVar;
            this.f17257b = cls;
        }

        @Override // com.squareup.tape.a.AbstractC0555a
        public final T a(byte[] bArr) throws IOException {
            if (bArr == null) {
                return null;
            }
            ByteArrayInputStream byteArrayInputStream = new ByteArrayInputStream(bArr);
            try {
                T t = (T) this.f17256a.a(this.f17257b, byteArrayInputStream);
                byteArrayInputStream.close();
                return t;
            } catch (Throwable th) {
                try {
                    throw th;
                } catch (Throwable th2) {
                    try {
                        byteArrayInputStream.close();
                    } catch (Throwable th3) {
                        th.addSuppressed(th3);
                    }
                    throw th2;
                }
            }
        }

        @Override // com.squareup.tape.a.AbstractC0555a
        public final void a(T t, OutputStream outputStream) throws IOException {
            if (t != null && outputStream != null) {
                this.f17256a.a(t, outputStream);
            }
        }
    }

    public ae(Context context, l lVar, b<T> bVar) {
        this.f17252a = context;
        this.f17255d = lVar;
        this.f17253b = bVar;
    }

    private boolean b(File file) {
        File[] listFiles;
        if (file.isDirectory() && (listFiles = file.listFiles()) != null) {
            for (File file2 : listFiles) {
                if (!b(file2)) {
                    return false;
                }
            }
        }
        return file.delete();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final c<T> a(File file) {
        try {
            com.squareup.tape.a aVar = new com.squareup.tape.a(file, new a(this.f17255d, this.f17253b.c()));
            aVar.b();
            return aVar;
        } catch (Exception e) {
            if (b(file)) {
                try {
                    return new com.squareup.tape.a(file, new a(this.f17255d, this.f17253b.c()));
                } catch (IOException e2) {
                    e.addSuppressed(e2);
                    return new b();
                } finally {
                    this.f17254c.a(f.a(e));
                }
            }
            return new b();
        }
    }
}
