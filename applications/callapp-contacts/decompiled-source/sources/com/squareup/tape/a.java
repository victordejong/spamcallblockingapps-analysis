package com.squareup.tape;

import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.IOException;
import java.io.OutputStream;
/* loaded from: classes4-dex2jar.jar:com/squareup/tape/a.class */
public class a<T> implements c<T> {

    /* renamed from: a  reason: collision with root package name */
    public final d f35004a;

    /* renamed from: b  reason: collision with root package name */
    private final b f35005b = new b();

    /* renamed from: c  reason: collision with root package name */
    private final File f35006c;

    /* renamed from: d  reason: collision with root package name */
    private final AbstractC0555a<T> f35007d;

    /* renamed from: com.squareup.tape.a$a  reason: collision with other inner class name */
    /* loaded from: classes4-dex2jar.jar:com/squareup/tape/a$a.class */
    public interface AbstractC0555a<T> {
        T a(byte[] bArr) throws IOException;

        void a(T t, OutputStream outputStream) throws IOException;
    }

    /* loaded from: classes4-dex2jar.jar:com/squareup/tape/a$b.class */
    static final class b extends ByteArrayOutputStream {
        public final byte[] a() {
            return this.buf;
        }
    }

    public a(File file, AbstractC0555a<T> aVar) throws IOException {
        this.f35006c = file;
        this.f35007d = aVar;
        this.f35004a = new d(file);
    }

    @Override // com.squareup.tape.c
    public final int a() {
        return this.f35004a.b();
    }

    @Override // com.squareup.tape.c
    public final void a(T t) {
        try {
            this.f35005b.reset();
            this.f35007d.a(t, this.f35005b);
            this.f35004a.a(this.f35005b.a(), this.f35005b.size());
        } catch (IOException e) {
            throw new FileException("Failed to add entry.", e, this.f35006c);
        }
    }

    @Override // com.squareup.tape.c
    public final T b() {
        try {
            byte[] a2 = this.f35004a.a();
            if (a2 == null) {
                return null;
            }
            return this.f35007d.a(a2);
        } catch (IOException e) {
            throw new FileException("Failed to peek.", e, this.f35006c);
        }
    }

    @Override // com.squareup.tape.c
    public final void c() {
        try {
            this.f35004a.c();
        } catch (IOException e) {
            throw new FileException("Failed to remove.", e, this.f35006c);
        }
    }
}
