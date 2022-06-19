package com.squareup.tape;

import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.IOException;
import java.io.OutputStream;
/* renamed from: com.squareup.tape.a */
/* loaded from: classes4-dex2jar.jar:com/squareup/tape/a.class */
public class C17153a<T> implements AbstractC17157c<T> {

    /* renamed from: a */
    public final C17158d f60725a;

    /* renamed from: b */
    private final C17155b f60726b = new C17155b();

    /* renamed from: c */
    private final File f60727c;

    /* renamed from: d */
    private final AbstractC17154a<T> f60728d;

    /* renamed from: com.squareup.tape.a$a */
    /* loaded from: classes4-dex2jar.jar:com/squareup/tape/a$a.class */
    public interface AbstractC17154a<T> {
        /* renamed from: a */
        T mo5860a(byte[] bArr) throws IOException;

        /* renamed from: a */
        void mo5861a(T t, OutputStream outputStream) throws IOException;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.squareup.tape.a$b */
    /* loaded from: classes4-dex2jar.jar:com/squareup/tape/a$b.class */
    public static final class C17155b extends ByteArrayOutputStream {
        /* renamed from: a */
        public final byte[] m5859a() {
            return this.buf;
        }
    }

    public C17153a(File file, AbstractC17154a<T> abstractC17154a) throws IOException {
        this.f60727c = file;
        this.f60728d = abstractC17154a;
        this.f60725a = new C17158d(file);
    }

    @Override // com.squareup.tape.AbstractC17157c
    /* renamed from: a */
    public final int mo5858a() {
        return this.f60725a.m5841b();
    }

    @Override // com.squareup.tape.AbstractC17157c
    /* renamed from: a */
    public final void mo5857a(T t) {
        try {
            this.f60726b.reset();
            this.f60728d.mo5861a(t, this.f60726b);
            this.f60725a.m5844a(this.f60726b.m5859a(), this.f60726b.size());
        } catch (IOException e) {
            throw new FileException("Failed to add entry.", e, this.f60727c);
        }
    }

    @Override // com.squareup.tape.AbstractC17157c
    /* renamed from: b */
    public final T mo5856b() {
        try {
            byte[] m5854a = this.f60725a.m5854a();
            if (m5854a != null) {
                return this.f60728d.mo5860a(m5854a);
            }
            return null;
        } catch (IOException e) {
            throw new FileException("Failed to peek.", e, this.f60727c);
        }
    }

    @Override // com.squareup.tape.AbstractC17157c
    /* renamed from: c */
    public final void mo5855c() {
        try {
            this.f60725a.m5836c();
        } catch (IOException e) {
            throw new FileException("Failed to remove.", e, this.f60727c);
        }
    }
}
