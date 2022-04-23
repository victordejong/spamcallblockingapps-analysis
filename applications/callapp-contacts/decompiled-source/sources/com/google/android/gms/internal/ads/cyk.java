package com.google.android.gms.internal.ads;

import java.util.Iterator;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/cyk.class */
final class cyk implements Iterable<String> {

    /* renamed from: a  reason: collision with root package name */
    private final /* synthetic */ CharSequence f26573a;

    /* renamed from: b  reason: collision with root package name */
    private final /* synthetic */ cyf f26574b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public cyk(cyf cyfVar, CharSequence charSequence) {
        this.f26574b = cyfVar;
        this.f26573a = charSequence;
    }

    @Override // java.lang.Iterable
    public final Iterator<String> iterator() {
        return this.f26574b.b(this.f26573a);
    }

    public final String toString() {
        StringBuilder a2 = new cxw(", ").a(new StringBuilder("["), iterator());
        a2.append(']');
        return a2.toString();
    }
}
