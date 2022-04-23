package com.google.firebase.installations;

import com.google.firebase.b;
import com.google.firebase.c.f;
import com.google.firebase.components.e;
import com.google.firebase.components.i;
import com.google.firebase.components.r;
import com.google.firebase.f.g;
import java.util.Arrays;
import java.util.List;
/* loaded from: classes4-dex2jar.jar:com/google/firebase/installations/FirebaseInstallationsRegistrar.class */
public class FirebaseInstallationsRegistrar implements i {
    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ h lambda$getComponents$0(e eVar) {
        return new c((b) eVar.a(b.class), eVar.c(com.google.firebase.f.i.class), eVar.c(f.class));
    }

    @Override // com.google.firebase.components.i
    public List<com.google.firebase.components.b<?>> getComponents() {
        return Arrays.asList(com.google.firebase.components.b.a(h.class).a(r.b(b.class)).a(r.d(f.class)).a(r.d(com.google.firebase.f.i.class)).a(i.a()).a(), g.a("fire-installations", "16.3.5"));
    }
}
