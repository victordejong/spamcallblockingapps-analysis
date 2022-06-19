package com.google.android.gms.internal.ads;

import java.util.Iterator;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/cyk.class */
public final class cyk implements Iterable<String> {

    /* renamed from: a */
    private final /* synthetic */ CharSequence f46768a;

    /* renamed from: b */
    private final /* synthetic */ cyf f46769b;

    public cyk(cyf cyfVar, CharSequence charSequence) {
        this.f46769b = cyfVar;
        this.f46768a = charSequence;
    }

    @Override // java.lang.Iterable
    public final Iterator<String> iterator() {
        return this.f46769b.m17064b(this.f46768a);
    }

    public final String toString() {
        StringBuilder m17071a = new cxw(", ").m17071a(new StringBuilder("["), iterator());
        m17071a.append(']');
        return m17071a.toString();
    }
}
