package com.google.android.datatransport.runtime;

import com.google.android.datatransport.b;
import com.google.android.datatransport.c;
import com.google.android.datatransport.e;
import com.google.android.datatransport.f;
import com.google.android.datatransport.h;
import com.google.android.datatransport.runtime.b;
/* loaded from: classes3-dex2jar.jar:com/google/android/datatransport/runtime/n.class */
final class n<T> implements f<T> {

    /* renamed from: a  reason: collision with root package name */
    private final l f20453a;

    /* renamed from: b  reason: collision with root package name */
    private final String f20454b;

    /* renamed from: c  reason: collision with root package name */
    private final b f20455c;

    /* renamed from: d  reason: collision with root package name */
    private final e<T, byte[]> f20456d;
    private final p e;

    /* JADX INFO: Access modifiers changed from: package-private */
    public n(l lVar, String str, b bVar, e<T, byte[]> eVar, p pVar) {
        this.f20453a = lVar;
        this.f20454b = str;
        this.f20455c = bVar;
        this.f20456d = eVar;
        this.e = pVar;
    }

    @Override // com.google.android.datatransport.f
    public final void a(c<T> cVar) {
        a(cVar, o.a());
    }

    @Override // com.google.android.datatransport.f
    public final void a(c<T> cVar, h hVar) {
        this.e.a(new b.a().a(this.f20453a).a((c<?>) cVar).a(this.f20454b).a((e<?, byte[]>) this.f20456d).a(this.f20455c).a(), hVar);
    }
}
