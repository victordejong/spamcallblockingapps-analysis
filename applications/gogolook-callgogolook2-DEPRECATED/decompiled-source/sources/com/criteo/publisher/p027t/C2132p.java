package com.criteo.publisher.p027t;

import android.content.Context;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import com.criteo.publisher.p020a0.C1917h;
import com.criteo.publisher.p020a0.C1928p;
import java.io.ByteArrayInputStream;
import java.io.File;
import java.io.IOException;
import java.io.OutputStream;
import p081h.p444n.p446b.AbstractC10822d;
import p081h.p444n.p446b.C10818b;
import p081h.p444n.p446b.C10821c;
/* renamed from: com.criteo.publisher.t.p */
/* loaded from: classes-dex2jar.jar:com/criteo/publisher/t/p.class */
public class C2132p {
    @NonNull

    /* renamed from: a */
    public final Context f2425a;
    @NonNull

    /* renamed from: b */
    public final C2134q f2426b;
    @NonNull

    /* renamed from: c */
    public final C1917h f2427c;

    @VisibleForTesting
    /* renamed from: com.criteo.publisher.t.p$a */
    /* loaded from: classes-dex2jar.jar:com/criteo/publisher/t/p$a.class */
    public static class C2133a implements C10818b.AbstractC10819a<AbstractC2127m> {
        @NonNull

        /* renamed from: a */
        public final C2134q f2428a;

        public C2133a(@NonNull C2134q qVar) {
            this.f2428a = qVar;
        }

        /* renamed from: a */
        public void toStream(@Nullable AbstractC2127m mVar, @Nullable OutputStream outputStream) throws IOException {
            if (mVar != null && outputStream != null) {
                this.f2428a.m35645a(mVar, outputStream);
            }
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // p081h.p444n.p446b.C10818b.AbstractC10819a
        @Nullable
        public AbstractC2127m from(@Nullable byte[] bArr) throws IOException {
            if (bArr == null) {
                return null;
            }
            ByteArrayInputStream byteArrayInputStream = new ByteArrayInputStream(bArr);
            try {
                AbstractC2127m a = this.f2428a.m35644a(byteArrayInputStream);
                byteArrayInputStream.close();
                return a;
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
    }

    public C2132p(@NonNull Context context, @NonNull C2134q qVar, @NonNull C1917h hVar) {
        this.f2425a = context;
        this.f2426b = qVar;
        this.f2427c = hVar;
    }

    /* renamed from: a */
    private AbstractC10822d<AbstractC2127m> m35649a(@NonNull File file) {
        try {
            return new C10818b(file, new C2133a(this.f2426b));
        } catch (IOException e) {
            if (m35647b(file)) {
                try {
                    return new C10818b(file, new C2133a(this.f2426b));
                } catch (IOException e2) {
                    e.addSuppressed(e2);
                    return new C10821c();
                } finally {
                    C1928p.m36001a((Throwable) e);
                }
            }
            return new C10821c();
        }
    }

    /* renamed from: b */
    private boolean m35647b(@NonNull File file) {
        File[] listFiles;
        if (file.isDirectory() && (listFiles = file.listFiles()) != null) {
            for (File file2 : listFiles) {
                if (!m35647b(file2)) {
                    return false;
                }
            }
        }
        return file.delete();
    }

    @NonNull
    /* renamed from: a */
    public AbstractC10822d<AbstractC2127m> m35650a() {
        return m35649a(m35648b());
    }

    @VisibleForTesting
    /* renamed from: b */
    public File m35648b() {
        return new File(this.f2425a.getFilesDir(), this.f2427c.m36031f());
    }
}
