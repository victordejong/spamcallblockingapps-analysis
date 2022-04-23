package com.criteo.publisher.f;

import com.criteo.publisher.f.w;
import com.criteo.publisher.m0.g;
import java.util.Collection;
/* loaded from: classes2-dex2jar.jar:com/criteo/publisher/f/n.class */
final class n extends w {

    /* renamed from: a  reason: collision with root package name */
    private final w f17294a;

    /* renamed from: b  reason: collision with root package name */
    private final g f17295b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public n(w wVar, g gVar) {
        this.f17294a = wVar;
        this.f17295b = gVar;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.criteo.publisher.f.w
    public final Collection<s> a() {
        return this.f17294a.a();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.criteo.publisher.f.w
    public final void a(String str, u uVar) {
        this.f17294a.a(str, uVar);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.criteo.publisher.f.w
    public final void a(String str, w.a aVar) {
        if (this.f17294a.b() < 49152 || a(str)) {
            this.f17294a.a(str, aVar);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.criteo.publisher.f.w
    public final boolean a(String str) {
        return this.f17294a.a(str);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.criteo.publisher.f.w
    public final int b() {
        return this.f17294a.b();
    }
}
