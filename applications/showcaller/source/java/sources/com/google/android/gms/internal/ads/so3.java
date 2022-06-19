package com.google.android.gms.internal.ads;

import android.net.Uri;
import java.util.Collections;
import java.util.List;
import java.util.Map;
import java.util.Objects;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/so3.class */
public final class so3 implements AbstractC7098w7 {

    /* renamed from: b */
    private final AbstractC7098w7 f29592b;

    /* renamed from: c */
    private long f29593c;

    /* renamed from: d */
    private Uri f29594d = Uri.EMPTY;

    /* renamed from: e */
    private Map<String, List<String>> f29595e = Collections.emptyMap();

    public so3(AbstractC7098w7 abstractC7098w7) {
        Objects.requireNonNull(abstractC7098w7);
        this.f29592b = abstractC7098w7;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC7207z5
    /* renamed from: c */
    public final int mo8335c(byte[] bArr, int i, int i2) {
        int mo8335c = this.f29592b.mo8335c(bArr, i, i2);
        if (mo8335c != -1) {
            this.f29593c += mo8335c;
        }
        return mo8335c;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC7098w7
    /* renamed from: d */
    public final Map<String, List<String>> mo8435d() {
        return this.f29592b.mo8435d();
    }

    @Override // com.google.android.gms.internal.ads.AbstractC7098w7
    /* renamed from: e */
    public final long mo8334e(C6472fb c6472fb) {
        this.f29594d = c6472fb.f22761a;
        this.f29595e = Collections.emptyMap();
        long mo8334e = this.f29592b.mo8334e(c6472fb);
        Uri zzi = zzi();
        Objects.requireNonNull(zzi);
        this.f29594d = zzi;
        this.f29595e = mo8435d();
        return mo8334e;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC7098w7
    /* renamed from: f */
    public final void mo8765f(AbstractC6816ol abstractC6816ol) {
        Objects.requireNonNull(abstractC6816ol);
        this.f29592b.mo8765f(abstractC6816ol);
    }

    @Override // com.google.android.gms.internal.ads.AbstractC7098w7
    /* renamed from: g */
    public final void mo8333g() {
        this.f29592b.mo8333g();
    }

    /* renamed from: p */
    public final long m10972p() {
        return this.f29593c;
    }

    /* renamed from: q */
    public final Uri m10971q() {
        return this.f29594d;
    }

    /* renamed from: r */
    public final Map<String, List<String>> m10970r() {
        return this.f29595e;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC7098w7
    public final Uri zzi() {
        return this.f29592b.zzi();
    }
}
