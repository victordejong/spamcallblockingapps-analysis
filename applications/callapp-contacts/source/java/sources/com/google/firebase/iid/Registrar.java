package com.google.firebase.iid;

import com.google.android.gms.tasks.AbstractC14185h;
import com.google.android.gms.tasks.C14188k;
import com.google.firebase.C15601b;
import com.google.firebase.components.AbstractC15627e;
import com.google.firebase.components.AbstractC15634i;
import com.google.firebase.components.C15622b;
import com.google.firebase.components.C15648r;
import com.google.firebase.iid.p395a.AbstractC15760a;
import com.google.firebase.installations.AbstractC15822h;
import com.google.firebase.p390c.AbstractC15616f;
import com.google.firebase.p394f.AbstractC15754i;
import com.google.firebase.p394f.C15751g;
import java.util.Arrays;
import java.util.List;
/* loaded from: classes4-dex2jar.jar:com/google/firebase/iid/Registrar.class */
public final class Registrar implements AbstractC15634i {

    /* renamed from: com.google.firebase.iid.Registrar$a */
    /* loaded from: classes4-dex2jar.jar:com/google/firebase/iid/Registrar$a.class */
    public static final class C15758a implements AbstractC15760a {

        /* renamed from: a */
        final FirebaseInstanceId f56118a;

        public C15758a(FirebaseInstanceId firebaseInstanceId) {
            this.f56118a = firebaseInstanceId;
        }

        @Override // com.google.firebase.iid.p395a.AbstractC15760a
        /* renamed from: a */
        public final String mo8426a() {
            return this.f56118a.getToken();
        }

        @Override // com.google.firebase.iid.p395a.AbstractC15760a
        /* renamed from: a */
        public final void mo8425a(AbstractC15760a.AbstractC15761a abstractC15761a) {
            this.f56118a.f56115h.add(abstractC15761a);
        }

        @Override // com.google.firebase.iid.p395a.AbstractC15760a
        /* renamed from: b */
        public final AbstractC14185h<String> mo8424b() {
            String token = this.f56118a.getToken();
            return token != null ? C14188k.m11464a(token) : this.f56118a.getInstanceId().mo11490a(C15777q.f56154a);
        }
    }

    public static final /* synthetic */ FirebaseInstanceId lambda$getComponents$0$Registrar(AbstractC15627e abstractC15627e) {
        return new FirebaseInstanceId((C15601b) abstractC15627e.mo8532a(C15601b.class), abstractC15627e.mo8522c(AbstractC15754i.class), abstractC15627e.mo8522c(AbstractC15616f.class), (AbstractC15822h) abstractC15627e.mo8532a(AbstractC15822h.class));
    }

    public static final /* synthetic */ AbstractC15760a lambda$getComponents$1$Registrar(AbstractC15627e abstractC15627e) {
        return new C15758a((FirebaseInstanceId) abstractC15627e.mo8532a(FirebaseInstanceId.class));
    }

    @Override // com.google.firebase.components.AbstractC15634i
    public final List<C15622b<?>> getComponents() {
        return Arrays.asList(C15622b.m8552a(FirebaseInstanceId.class).m8544a(C15648r.m8510b(C15601b.class)).m8544a(C15648r.m8508d(AbstractC15754i.class)).m8544a(C15648r.m8508d(AbstractC15616f.class)).m8544a(C15648r.m8510b(AbstractC15822h.class)).m8545a(C15775o.f56152a).m8546a(1).m8547a(), C15622b.m8552a(AbstractC15760a.class).m8544a(C15648r.m8510b(FirebaseInstanceId.class)).m8545a(C15776p.f56153a).m8547a(), C15751g.m8457a("fire-iid", "21.1.0"));
    }
}
