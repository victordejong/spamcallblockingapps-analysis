package com.google.firebase.remoteconfig;

import android.content.Context;
import com.google.firebase.C15601b;
import com.google.firebase.abt.component.C15584a;
import com.google.firebase.analytics.connector.AbstractC15587a;
import com.google.firebase.components.AbstractC15627e;
import com.google.firebase.components.AbstractC15634i;
import com.google.firebase.components.C15622b;
import com.google.firebase.components.C15648r;
import com.google.firebase.installations.AbstractC15822h;
import com.google.firebase.p394f.C15751g;
import java.util.Arrays;
import java.util.List;
/* loaded from: classes4-dex2jar.jar:com/google/firebase/remoteconfig/RemoteConfigRegistrar.class */
public class RemoteConfigRegistrar implements AbstractC15634i {
    public static /* synthetic */ C15908g lambda$getComponents$0(AbstractC15627e abstractC15627e) {
        return new C15908g((Context) abstractC15627e.mo8532a(Context.class), (C15601b) abstractC15627e.mo8532a(C15601b.class), (AbstractC15822h) abstractC15627e.mo8532a(AbstractC15822h.class), ((C15584a) abstractC15627e.mo8532a(C15584a.class)).m8622a("frc"), (AbstractC15587a) abstractC15627e.mo8532a(AbstractC15587a.class));
    }

    @Override // com.google.firebase.components.AbstractC15634i
    public List<C15622b<?>> getComponents() {
        return Arrays.asList(C15622b.m8552a(C15908g.class).m8544a(C15648r.m8510b(Context.class)).m8544a(C15648r.m8510b(C15601b.class)).m8544a(C15648r.m8510b(AbstractC15822h.class)).m8544a(C15648r.m8510b(C15584a.class)).m8544a(C15648r.m8512a(AbstractC15587a.class)).m8545a(C15933j.m8036a()).m8546a(2).m8547a(), C15751g.m8457a("fire-rc", "20.0.4"));
    }
}
