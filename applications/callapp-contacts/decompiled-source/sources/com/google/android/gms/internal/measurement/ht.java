package com.google.android.gms.internal.measurement;

import java.io.IOException;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/measurement/ht.class */
final class ht<T> implements ia<T> {

    /* renamed from: a  reason: collision with root package name */
    private final ho f29094a;

    /* renamed from: b  reason: collision with root package name */
    private final im<?, ?> f29095b;

    /* renamed from: c  reason: collision with root package name */
    private final boolean f29096c;

    /* renamed from: d  reason: collision with root package name */
    private final fz<?> f29097d;

    private ht(im<?, ?> imVar, fz<?> fzVar, ho hoVar) {
        this.f29095b = imVar;
        this.f29096c = fzVar.a(hoVar);
        this.f29097d = fzVar;
        this.f29094a = hoVar;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static <T> ht<T> a(im<?, ?> imVar, fz<?> fzVar, ho hoVar) {
        return new ht<>(imVar, fzVar, hoVar);
    }

    @Override // com.google.android.gms.internal.measurement.ia
    public final int a(T t) {
        int hashCode = this.f29095b.a(t).hashCode();
        if (!this.f29096c) {
            return hashCode;
        }
        throw null;
    }

    @Override // com.google.android.gms.internal.measurement.ia
    public final T a() {
        return (T) this.f29094a.p().B();
    }

    @Override // com.google.android.gms.internal.measurement.ia
    public final void a(T t, ft ftVar) throws IOException {
        throw null;
    }

    @Override // com.google.android.gms.internal.measurement.ia
    public final void a(T t, byte[] bArr, int i, int i2, fa faVar) throws IOException {
        gl glVar = (gl) t;
        if (glVar.zzc == in.a()) {
            glVar.zzc = in.b();
        }
        throw null;
    }

    @Override // com.google.android.gms.internal.measurement.ia
    public final boolean a(T t, T t2) {
        if (!this.f29095b.a(t).equals(this.f29095b.a(t2))) {
            return false;
        }
        if (!this.f29096c) {
            return true;
        }
        throw null;
    }

    @Override // com.google.android.gms.internal.measurement.ia
    public final int b(T t) {
        im<?, ?> imVar = this.f29095b;
        int c2 = imVar.c(imVar.a(t));
        if (!this.f29096c) {
            return c2;
        }
        throw null;
    }

    @Override // com.google.android.gms.internal.measurement.ia
    public final void b(T t, T t2) {
        ic.a(this.f29095b, t, t2);
        if (this.f29096c) {
            ic.d();
        }
    }

    @Override // com.google.android.gms.internal.measurement.ia
    public final void c(T t) {
        this.f29095b.b(t);
    }

    @Override // com.google.android.gms.internal.measurement.ia
    public final boolean d(T t) {
        throw null;
    }
}
