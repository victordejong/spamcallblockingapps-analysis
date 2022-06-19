package com.criteo.publisher.p246f;

import android.content.Context;
import com.criteo.publisher.logging.C8402g;
import com.criteo.publisher.logging.C8404h;
import com.criteo.publisher.p256m0.C8441l;
import com.squareup.tape.AbstractC17157c;
import com.squareup.tape.C17153a;
import com.squareup.tape.C17156b;
import java.io.ByteArrayInputStream;
import java.io.File;
import java.io.IOException;
import java.io.OutputStream;
/* renamed from: com.criteo.publisher.f.ae */
/* loaded from: classes2-dex2jar.jar:com/criteo/publisher/f/ae.class */
public final class C8290ae<T> {

    /* renamed from: a */
    final Context f29885a;

    /* renamed from: b */
    final AbstractC8292b<T> f29886b;

    /* renamed from: c */
    private final C8402g f29887c = C8404h.m25741a(getClass());

    /* renamed from: d */
    private final C8441l f29888d;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.criteo.publisher.f.ae$a */
    /* loaded from: classes2-dex2jar.jar:com/criteo/publisher/f/ae$a.class */
    public static final class C8291a<T> implements C17153a.AbstractC17154a<T> {

        /* renamed from: a */
        private final C8441l f29889a;

        /* renamed from: b */
        private final Class<T> f29890b;

        C8291a(C8441l c8441l, Class<T> cls) {
            this.f29889a = c8441l;
            this.f29890b = cls;
        }

        @Override // com.squareup.tape.C17153a.AbstractC17154a
        /* renamed from: a */
        public final T mo5860a(byte[] bArr) throws IOException {
            if (bArr == null) {
                return null;
            }
            ByteArrayInputStream byteArrayInputStream = new ByteArrayInputStream(bArr);
            try {
                T t = (T) this.f29889a.m25681a(this.f29890b, byteArrayInputStream);
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

        @Override // com.squareup.tape.C17153a.AbstractC17154a
        /* renamed from: a */
        public final void mo5861a(T t, OutputStream outputStream) throws IOException {
            if (t == null || outputStream == null) {
                return;
            }
            this.f29889a.m25680a(t, outputStream);
        }
    }

    public C8290ae(Context context, C8441l c8441l, AbstractC8292b<T> abstractC8292b) {
        this.f29885a = context;
        this.f29888d = c8441l;
        this.f29886b = abstractC8292b;
    }

    /* renamed from: b */
    private boolean m25917b(File file) {
        File[] listFiles;
        if (file.isDirectory() && (listFiles = file.listFiles()) != null) {
            for (File file2 : listFiles) {
                if (!m25917b(file2)) {
                    return false;
                }
            }
        }
        return file.delete();
    }

    /* renamed from: a */
    public final AbstractC17157c<T> m25918a(File file) {
        try {
            C17153a c17153a = new C17153a(file, new C8291a(this.f29888d, this.f29886b.mo25717c()));
            c17153a.mo5856b();
            return c17153a;
        } catch (Exception e) {
            if (m25917b(file)) {
                try {
                    return new C17153a(file, new C8291a(this.f29888d, this.f29886b.mo25717c()));
                } catch (IOException e2) {
                    e.addSuppressed(e2);
                    return new C17156b();
                } finally {
                    this.f29887c.m25744a(C8296f.m25915a(e));
                }
            }
            return new C17156b();
        }
    }
}
