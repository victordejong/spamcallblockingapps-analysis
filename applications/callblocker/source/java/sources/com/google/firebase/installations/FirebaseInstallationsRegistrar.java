package com.google.firebase.installations;

import androidx.annotation.Keep;
import com.google.firebase.C4865b;
import com.google.firebase.components.AbstractC4884e;
import com.google.firebase.components.AbstractC4890h;
import com.google.firebase.components.C4879b;
import com.google.firebase.components.C4899n;
import com.google.firebase.p162b.AbstractC4873c;
import com.google.firebase.p165e.AbstractC4935h;
import com.google.firebase.p165e.C4934g;
import java.util.Arrays;
import java.util.List;
@Keep
/* loaded from: classes-dex2jar.jar:com/google/firebase/installations/FirebaseInstallationsRegistrar.class */
public class FirebaseInstallationsRegistrar implements AbstractC4890h {
    public static /* synthetic */ AbstractC5033h lambda$getComponents$0(AbstractC4884e abstractC4884e) {
        return new C5026c((C4865b) abstractC4884e.mo2054a(C4865b.class), (AbstractC4935h) abstractC4884e.mo2054a(AbstractC4935h.class), (AbstractC4873c) abstractC4884e.mo2054a(AbstractC4873c.class));
    }

    @Override // com.google.firebase.components.AbstractC4890h
    public List<C4879b<?>> getComponents() {
        return Arrays.asList(C4879b.m2123a(AbstractC5033h.class).m2106a(C4899n.m2070b(C4865b.class)).m2106a(C4899n.m2070b(AbstractC4873c.class)).m2106a(C4899n.m2070b(AbstractC4935h.class)).m2107a(C5034i.m1780a()).m2103c(), C4934g.m2010a("fire-installations", "16.2.1"));
    }
}
