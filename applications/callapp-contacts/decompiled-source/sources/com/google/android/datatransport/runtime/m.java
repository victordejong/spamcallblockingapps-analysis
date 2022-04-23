package com.google.android.datatransport.runtime;

import com.google.android.datatransport.b;
import com.google.android.datatransport.e;
import com.google.android.datatransport.f;
import com.google.android.datatransport.g;
import java.util.Set;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes3-dex2jar.jar:com/google/android/datatransport/runtime/m.class */
public final class m implements g {

    /* renamed from: a  reason: collision with root package name */
    private final Set<b> f20450a;

    /* renamed from: b  reason: collision with root package name */
    private final l f20451b;

    /* renamed from: c  reason: collision with root package name */
    private final p f20452c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public m(Set<b> set, l lVar, p pVar) {
        this.f20450a = set;
        this.f20451b = lVar;
        this.f20452c = pVar;
    }

    @Override // com.google.android.datatransport.g
    public final <T> f<T> a(String str, b bVar, e<T, byte[]> eVar) {
        if (this.f20450a.contains(bVar)) {
            return new n(this.f20451b, str, bVar, eVar, this.f20452c);
        }
        throw new IllegalArgumentException(String.format("%s is not supported byt this factory. Supported encodings are: %s.", bVar, this.f20450a));
    }
}
