package com.google.firebase.iid;

import androidx.annotation.Keep;
import com.google.firebase.C4865b;
import com.google.firebase.components.AbstractC4890h;
import com.google.firebase.components.C4879b;
import com.google.firebase.components.C4899n;
import com.google.firebase.iid.p166a.AbstractC4939a;
import com.google.firebase.installations.AbstractC5033h;
import com.google.firebase.p161a.AbstractC4857d;
import com.google.firebase.p162b.AbstractC4873c;
import com.google.firebase.p165e.AbstractC4935h;
import com.google.firebase.p165e.C4934g;
import java.util.Arrays;
import java.util.List;
@Keep
/* loaded from: classes-dex2jar.jar:com/google/firebase/iid/Registrar.class */
public final class Registrar implements AbstractC4890h {

    /* renamed from: com.google.firebase.iid.Registrar$a */
    /* loaded from: classes-dex2jar.jar:com/google/firebase/iid/Registrar$a.class */
    public static final class C4937a implements AbstractC4939a {

        /* renamed from: a */
        private final FirebaseInstanceId f21073a;

        public C4937a(FirebaseInstanceId firebaseInstanceId) {
            this.f21073a = firebaseInstanceId;
        }
    }

    @Override // com.google.firebase.components.AbstractC4890h
    @Keep
    public final List<C4879b<?>> getComponents() {
        return Arrays.asList(C4879b.m2123a(FirebaseInstanceId.class).m2106a(C4899n.m2070b(C4865b.class)).m2106a(C4899n.m2070b(AbstractC4857d.class)).m2106a(C4899n.m2070b(AbstractC4935h.class)).m2106a(C4899n.m2070b(AbstractC4873c.class)).m2106a(C4899n.m2070b(AbstractC5033h.class)).m2107a(C4990q.f21173a).m2110a().m2103c(), C4879b.m2123a(AbstractC4939a.class).m2106a(C4899n.m2070b(FirebaseInstanceId.class)).m2107a(C4991r.f21174a).m2103c(), C4934g.m2010a("fire-iid", "20.1.5"));
    }
}
