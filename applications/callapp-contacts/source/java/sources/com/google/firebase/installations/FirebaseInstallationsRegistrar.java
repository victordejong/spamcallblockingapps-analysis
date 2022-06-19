package com.google.firebase.installations;

import com.google.firebase.C15601b;
import com.google.firebase.components.AbstractC15627e;
import com.google.firebase.components.AbstractC15634i;
import com.google.firebase.components.C15622b;
import com.google.firebase.components.C15648r;
import com.google.firebase.p390c.AbstractC15616f;
import com.google.firebase.p394f.AbstractC15754i;
import com.google.firebase.p394f.C15751g;
import java.util.Arrays;
import java.util.List;
/* loaded from: classes4-dex2jar.jar:com/google/firebase/installations/FirebaseInstallationsRegistrar.class */
public class FirebaseInstallationsRegistrar implements AbstractC15634i {
    public static /* synthetic */ AbstractC15822h lambda$getComponents$0(AbstractC15627e abstractC15627e) {
        return new C15813c((C15601b) abstractC15627e.mo8532a(C15601b.class), abstractC15627e.mo8522c(AbstractC15754i.class), abstractC15627e.mo8522c(AbstractC15616f.class));
    }

    @Override // com.google.firebase.components.AbstractC15634i
    public List<C15622b<?>> getComponents() {
        return Arrays.asList(C15622b.m8552a(AbstractC15822h.class).m8544a(C15648r.m8510b(C15601b.class)).m8544a(C15648r.m8508d(AbstractC15616f.class)).m8544a(C15648r.m8508d(AbstractC15754i.class)).m8545a(C15823i.m8283a()).m8547a(), C15751g.m8457a("fire-installations", "16.3.5"));
    }
}
