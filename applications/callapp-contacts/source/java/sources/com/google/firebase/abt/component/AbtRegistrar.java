package com.google.firebase.abt.component;

import android.content.Context;
import com.google.firebase.analytics.connector.AbstractC15587a;
import com.google.firebase.components.AbstractC15627e;
import com.google.firebase.components.AbstractC15634i;
import com.google.firebase.components.C15622b;
import com.google.firebase.components.C15648r;
import com.google.firebase.p394f.C15751g;
import java.util.Arrays;
import java.util.List;
/* loaded from: classes4-dex2jar.jar:com/google/firebase/abt/component/AbtRegistrar.class */
public class AbtRegistrar implements AbstractC15634i {
    public static /* synthetic */ C15584a lambda$getComponents$0(AbstractC15627e abstractC15627e) {
        return new C15584a((Context) abstractC15627e.mo8532a(Context.class), (AbstractC15587a) abstractC15627e.mo8532a(AbstractC15587a.class));
    }

    @Override // com.google.firebase.components.AbstractC15634i
    public List<C15622b<?>> getComponents() {
        return Arrays.asList(C15622b.m8552a(C15584a.class).m8544a(C15648r.m8510b(Context.class)).m8544a(C15648r.m8512a(AbstractC15587a.class)).m8545a(C15585b.m8621a()).m8547a(), C15751g.m8457a("fire-abt", "20.0.0"));
    }
}
