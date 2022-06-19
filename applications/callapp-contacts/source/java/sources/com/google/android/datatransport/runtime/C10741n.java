package com.google.android.datatransport.runtime;

import com.google.android.datatransport.AbstractC10628c;
import com.google.android.datatransport.AbstractC10677e;
import com.google.android.datatransport.AbstractC10678f;
import com.google.android.datatransport.AbstractC10680h;
import com.google.android.datatransport.C10627b;
import com.google.android.datatransport.runtime.C10689b;
/* renamed from: com.google.android.datatransport.runtime.n */
/* loaded from: classes3-dex2jar.jar:com/google/android/datatransport/runtime/n.class */
final class C10741n<T> implements AbstractC10678f<T> {

    /* renamed from: a */
    private final AbstractC10738l f34600a;

    /* renamed from: b */
    private final String f34601b;

    /* renamed from: c */
    private final C10627b f34602c;

    /* renamed from: d */
    private final AbstractC10677e<T, byte[]> f34603d;

    /* renamed from: e */
    private final AbstractC10743p f34604e;

    public C10741n(AbstractC10738l abstractC10738l, String str, C10627b c10627b, AbstractC10677e<T, byte[]> abstractC10677e, AbstractC10743p abstractC10743p) {
        this.f34600a = abstractC10738l;
        this.f34601b = str;
        this.f34602c = c10627b;
        this.f34603d = abstractC10677e;
        this.f34604e = abstractC10743p;
    }

    @Override // com.google.android.datatransport.AbstractC10678f
    /* renamed from: a */
    public final void mo8247a(AbstractC10628c<T> abstractC10628c) {
        mo8246a(abstractC10628c, C10742o.m22442a());
    }

    @Override // com.google.android.datatransport.AbstractC10678f
    /* renamed from: a */
    public final void mo8246a(AbstractC10628c<T> abstractC10628c, AbstractC10680h abstractC10680h) {
        this.f34604e.mo22438a(new C10689b.C10691a().mo22452a(this.f34600a).mo22454a((AbstractC10628c<?>) abstractC10628c).mo22451a(this.f34601b).mo22453a((AbstractC10677e<?, byte[]>) this.f34603d).mo22455a(this.f34602c).mo22456a(), abstractC10680h);
    }
}
