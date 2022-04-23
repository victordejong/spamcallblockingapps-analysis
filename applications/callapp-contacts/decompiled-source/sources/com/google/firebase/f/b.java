package com.google.firebase.f;

import com.google.firebase.components.e;
import com.google.firebase.components.r;
import java.util.Iterator;
import java.util.Set;
/* loaded from: classes4-dex2jar.jar:com/google/firebase/f/b.class */
public final class b implements i {

    /* renamed from: a  reason: collision with root package name */
    private final String f32306a;

    /* renamed from: b  reason: collision with root package name */
    private final d f32307b;

    b(Set<f> set, d dVar) {
        this.f32306a = a(set);
        this.f32307b = dVar;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ i a(e eVar) {
        return new b(eVar.b(f.class), d.b());
    }

    private static String a(Set<f> set) {
        StringBuilder sb = new StringBuilder();
        Iterator<f> it2 = set.iterator();
        while (it2.hasNext()) {
            f next = it2.next();
            sb.append(next.a());
            sb.append('/');
            sb.append(next.b());
            if (it2.hasNext()) {
                sb.append(' ');
            }
        }
        return sb.toString();
    }

    public static com.google.firebase.components.b<i> b() {
        return com.google.firebase.components.b.a(i.class).a(r.c(f.class)).a(c.a()).a();
    }

    @Override // com.google.firebase.f.i
    public final String a() {
        if (this.f32307b.a().isEmpty()) {
            return this.f32306a;
        }
        return this.f32306a + ' ' + a(this.f32307b.a());
    }
}
