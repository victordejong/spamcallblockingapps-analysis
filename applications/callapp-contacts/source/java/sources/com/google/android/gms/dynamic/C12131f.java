package com.google.android.gms.dynamic;

import java.util.Iterator;
/* renamed from: com.google.android.gms.dynamic.f */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/dynamic/f.class */
public final class C12131f implements AbstractC12130e {

    /* renamed from: a */
    final /* synthetic */ AbstractC12125a f39655a;

    public C12131f(AbstractC12125a abstractC12125a) {
        this.f39655a = abstractC12125a;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.android.gms.dynamic.AbstractC12130e
    /* renamed from: a */
    public final void mo18978a(AbstractC12128c abstractC12128c) {
        this.f39655a.f39650a = abstractC12128c;
        Iterator<AbstractC12138m> it2 = this.f39655a.f39652c.iterator();
        while (it2.hasNext()) {
            it2.next().mo18976b();
        }
        this.f39655a.f39652c.clear();
        this.f39655a.f39651b = null;
    }
}
