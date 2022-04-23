package com.google.firebase.messaging;

import com.google.android.datatransport.c;
import com.google.android.datatransport.e;
import com.google.android.datatransport.f;
import com.google.android.datatransport.g;
import com.google.android.datatransport.h;
import com.google.firebase.b.d;
import com.google.firebase.components.i;
import com.google.firebase.components.r;
import java.util.Arrays;
import java.util.List;
/* loaded from: classes4-dex2jar.jar:com/google/firebase/messaging/FirebaseMessagingRegistrar.class */
public class FirebaseMessagingRegistrar implements i {

    /* loaded from: classes4-dex2jar.jar:com/google/firebase/messaging/FirebaseMessagingRegistrar$a.class */
    static final class a<T> implements f<T> {
        private a() {
        }

        @Override // com.google.android.datatransport.f
        public final void a(c<T> cVar) {
        }

        @Override // com.google.android.datatransport.f
        public final void a(c<T> cVar, h hVar) {
            hVar.onSchedule(null);
        }
    }

    /* loaded from: classes4-dex2jar.jar:com/google/firebase/messaging/FirebaseMessagingRegistrar$b.class */
    public static final class b implements g {
        @Override // com.google.android.datatransport.g
        public final <T> f<T> a(String str, com.google.android.datatransport.b bVar, e<T, byte[]> eVar) {
            return new a();
        }
    }

    static g determineFactory(g gVar) {
        if (gVar == null) {
            return new b();
        }
        try {
            gVar.a("test", com.google.android.datatransport.b.a("json"), x.f32567a);
            return gVar;
        } catch (IllegalArgumentException e) {
            return new b();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static final /* synthetic */ FirebaseMessaging lambda$getComponents$0$FirebaseMessagingRegistrar(com.google.firebase.components.e eVar) {
        return new FirebaseMessaging((com.google.firebase.b) eVar.a(com.google.firebase.b.class), (com.google.firebase.iid.a.a) eVar.a(com.google.firebase.iid.a.a.class), eVar.c(com.google.firebase.f.i.class), eVar.c(com.google.firebase.c.f.class), (com.google.firebase.installations.h) eVar.a(com.google.firebase.installations.h.class), determineFactory((g) eVar.a(g.class)), (d) eVar.a(d.class));
    }

    @Override // com.google.firebase.components.i
    public List<com.google.firebase.components.b<?>> getComponents() {
        return Arrays.asList(com.google.firebase.components.b.a(FirebaseMessaging.class).a(r.b(com.google.firebase.b.class)).a(r.a(com.google.firebase.iid.a.a.class)).a(r.d(com.google.firebase.f.i.class)).a(r.d(com.google.firebase.c.f.class)).a(r.a(g.class)).a(r.b(com.google.firebase.installations.h.class)).a(r.b(d.class)).a(w.f32566a).a(1).a(), com.google.firebase.f.g.a("fire-fcm", "20.1.7_1p"));
    }
}
