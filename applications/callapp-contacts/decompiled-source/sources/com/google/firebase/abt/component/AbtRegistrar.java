package com.google.firebase.abt.component;

import android.content.Context;
import com.google.firebase.analytics.connector.a;
import com.google.firebase.components.b;
import com.google.firebase.components.e;
import com.google.firebase.components.i;
import com.google.firebase.components.r;
import com.google.firebase.f.g;
import java.util.Arrays;
import java.util.List;
/* loaded from: classes4-dex2jar.jar:com/google/firebase/abt/component/AbtRegistrar.class */
public class AbtRegistrar implements i {
    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ a lambda$getComponents$0(e eVar) {
        return new a((Context) eVar.a(Context.class), (a) eVar.a(a.class));
    }

    @Override // com.google.firebase.components.i
    public List<b<?>> getComponents() {
        return Arrays.asList(b.a(a.class).a(r.b(Context.class)).a(r.a(a.class)).a(b.a()).a(), g.a("fire-abt", "20.0.0"));
    }
}
