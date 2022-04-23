package com.google.firebase.iid;

import com.google.android.gms.tasks.h;
import com.google.android.gms.tasks.k;
import com.google.firebase.b;
import com.google.firebase.c.f;
import com.google.firebase.components.e;
import com.google.firebase.components.i;
import com.google.firebase.components.r;
import com.google.firebase.f.g;
import com.google.firebase.iid.a.a;
import java.util.Arrays;
import java.util.List;
/* loaded from: classes4-dex2jar.jar:com/google/firebase/iid/Registrar.class */
public final class Registrar implements i {

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes4-dex2jar.jar:com/google/firebase/iid/Registrar$a.class */
    public static final class a implements com.google.firebase.iid.a.a {

        /* renamed from: a  reason: collision with root package name */
        final FirebaseInstanceId f32322a;

        public a(FirebaseInstanceId firebaseInstanceId) {
            this.f32322a = firebaseInstanceId;
        }

        @Override // com.google.firebase.iid.a.a
        public final String a() {
            return this.f32322a.getToken();
        }

        @Override // com.google.firebase.iid.a.a
        public final void a(a.AbstractC0518a aVar) {
            this.f32322a.h.add(aVar);
        }

        @Override // com.google.firebase.iid.a.a
        public final h<String> b() {
            String token = this.f32322a.getToken();
            return token != null ? k.a(token) : this.f32322a.getInstanceId().a(q.f32354a);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static final /* synthetic */ FirebaseInstanceId lambda$getComponents$0$Registrar(e eVar) {
        return new FirebaseInstanceId((b) eVar.a(b.class), eVar.c(com.google.firebase.f.i.class), eVar.c(f.class), (com.google.firebase.installations.h) eVar.a(com.google.firebase.installations.h.class));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static final /* synthetic */ com.google.firebase.iid.a.a lambda$getComponents$1$Registrar(e eVar) {
        return new a((FirebaseInstanceId) eVar.a(FirebaseInstanceId.class));
    }

    @Override // com.google.firebase.components.i
    public final List<com.google.firebase.components.b<?>> getComponents() {
        return Arrays.asList(com.google.firebase.components.b.a(FirebaseInstanceId.class).a(r.b(b.class)).a(r.d(com.google.firebase.f.i.class)).a(r.d(f.class)).a(r.b(com.google.firebase.installations.h.class)).a(o.f32352a).a(1).a(), com.google.firebase.components.b.a(com.google.firebase.iid.a.a.class).a(r.b(FirebaseInstanceId.class)).a(p.f32353a).a(), g.a("fire-iid", "21.1.0"));
    }
}
