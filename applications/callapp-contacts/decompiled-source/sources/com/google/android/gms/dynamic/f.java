package com.google.android.gms.dynamic;

import java.util.Iterator;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/dynamic/f.class */
final class f implements e {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ a f22965a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public f(a aVar) {
        this.f22965a = aVar;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.android.gms.dynamic.e
    public final void a(c cVar) {
        this.f22965a.f22960a = cVar;
        Iterator<m> it2 = this.f22965a.f22962c.iterator();
        while (it2.hasNext()) {
            it2.next().b();
        }
        this.f22965a.f22962c.clear();
        this.f22965a.f22961b = null;
    }
}
