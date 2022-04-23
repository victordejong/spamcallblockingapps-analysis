package com.google.firebase.remoteconfig;

import android.content.Context;
import com.google.firebase.abt.component.a;
import com.google.firebase.b;
import com.google.firebase.components.e;
import com.google.firebase.components.i;
import com.google.firebase.components.r;
import com.google.firebase.f.g;
import com.google.firebase.installations.h;
import java.util.Arrays;
import java.util.List;
/* loaded from: classes4-dex2jar.jar:com/google/firebase/remoteconfig/RemoteConfigRegistrar.class */
public class RemoteConfigRegistrar implements i {
    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ g lambda$getComponents$0(e eVar) {
        return new g((Context) eVar.a(Context.class), (b) eVar.a(b.class), (h) eVar.a(h.class), ((a) eVar.a(a.class)).a("frc"), (com.google.firebase.analytics.connector.a) eVar.a(com.google.firebase.analytics.connector.a.class));
    }

    @Override // com.google.firebase.components.i
    public List<com.google.firebase.components.b<?>> getComponents() {
        return Arrays.asList(com.google.firebase.components.b.a(g.class).a(r.b(Context.class)).a(r.b(b.class)).a(r.b(h.class)).a(r.b(a.class)).a(r.a(com.google.firebase.analytics.connector.a.class)).a(j.a()).a(2).a(), g.a("fire-rc", "20.0.4"));
    }
}
