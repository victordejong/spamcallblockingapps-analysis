package com.google.firebase.dynamiclinks.internal;

import androidx.annotation.Keep;
import com.google.firebase.C4865b;
import com.google.firebase.analytics.connector.AbstractC4859a;
import com.google.firebase.components.AbstractC4890h;
import com.google.firebase.components.C4879b;
import com.google.firebase.components.C4899n;
import com.google.firebase.dynamiclinks.AbstractC4908a;
import java.util.Arrays;
import java.util.List;
@Keep
/* loaded from: classes-dex2jar.jar:com/google/firebase/dynamiclinks/internal/FirebaseDynamicLinkRegistrar.class */
public final class FirebaseDynamicLinkRegistrar implements AbstractC4890h {
    @Override // com.google.firebase.components.AbstractC4890h
    @Keep
    public final List<C4879b<?>> getComponents() {
        return Arrays.asList(C4879b.m2123a(AbstractC4908a.class).m2106a(C4899n.m2070b(C4865b.class)).m2106a(C4899n.m2072a(AbstractC4859a.class)).m2107a(C4916g.f21039a).m2103c());
    }
}
