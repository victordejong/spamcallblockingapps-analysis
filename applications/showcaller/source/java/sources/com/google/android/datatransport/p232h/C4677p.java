package com.google.android.datatransport.p232h;

import com.google.android.datatransport.AbstractC4603c;
import com.google.android.datatransport.AbstractC4645d;
import com.google.android.datatransport.AbstractC4646e;
import com.google.android.datatransport.AbstractC4648g;
import com.google.android.datatransport.C4602b;
/* renamed from: com.google.android.datatransport.h.p */
/* loaded from: classes-dex2jar.jar:com/google/android/datatransport/h/p.class */
final class C4677p<T> implements AbstractC4646e<T> {

    /* renamed from: a */
    private final AbstractC4673m f14240a;

    /* renamed from: b */
    private final String f14241b;

    /* renamed from: c */
    private final C4602b f14242c;

    /* renamed from: d */
    private final AbstractC4645d<T, byte[]> f14243d;

    /* renamed from: e */
    private final AbstractC4678q f14244e;

    public C4677p(AbstractC4673m abstractC4673m, String str, C4602b c4602b, AbstractC4645d<T, byte[]> abstractC4645d, AbstractC4678q abstractC4678q) {
        this.f14240a = abstractC4673m;
        this.f14241b = str;
        this.f14242c = c4602b;
        this.f14243d = abstractC4645d;
        this.f14244e = abstractC4678q;
    }

    /* renamed from: c */
    public static /* synthetic */ void m22014c(Exception exc) {
    }

    @Override // com.google.android.datatransport.AbstractC4646e
    /* renamed from: a */
    public void mo1363a(AbstractC4603c<T> abstractC4603c) {
        mo1362b(abstractC4603c, C4676o.m22015b());
    }

    @Override // com.google.android.datatransport.AbstractC4646e
    /* renamed from: b */
    public void mo1362b(AbstractC4603c<T> abstractC4603c, AbstractC4648g abstractC4648g) {
        this.f14244e.mo22013a(AbstractC4671l.m22037a().mo22026e(this.f14240a).mo22028c(abstractC4603c).mo22025f(this.f14241b).mo22027d(this.f14243d).mo22029b(this.f14242c).mo22030a(), abstractC4648g);
    }
}
