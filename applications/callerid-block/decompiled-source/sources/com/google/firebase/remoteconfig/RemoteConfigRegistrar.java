package com.google.firebase.remoteconfig;

import android.content.Context;
import androidx.annotation.Keep;
import com.google.firebase.abt.component.a;
import com.google.firebase.c;
import com.google.firebase.components.d;
import com.google.firebase.components.e;
import com.google.firebase.components.i;
import com.google.firebase.components.q;
import com.google.firebase.installations.g;
import com.google.firebase.p083m.C2417h;
import java.util.Arrays;
import java.util.List;
@Keep
/* loaded from: classes2-dex2jar.jar:com/google/firebase/remoteconfig/RemoteConfigRegistrar.class */
public class RemoteConfigRegistrar implements i {
    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ C2536k lambda$getComponents$0(e eVar) {
        return new C2536k((Context) eVar.a(Context.class), (c) eVar.a(c.class), (g) eVar.a(g.class), ((a) eVar.a(a.class)).b("frc"), (com.google.firebase.analytics.a.a) eVar.a(com.google.firebase.analytics.a.a.class));
    }

    public List<d<?>> getComponents() {
        d.b a = d.a(C2536k.class);
        a.b(q.i(Context.class));
        a.b(q.i(c.class));
        a.b(q.i(g.class));
        a.b(q.i(a.class));
        a.b(q.g(com.google.firebase.analytics.a.a.class));
        a.f(C2537l.m3164b());
        a.e();
        return Arrays.asList(a.d(), C2417h.m3715a("fire-rc", "20.0.2"));
    }
}
