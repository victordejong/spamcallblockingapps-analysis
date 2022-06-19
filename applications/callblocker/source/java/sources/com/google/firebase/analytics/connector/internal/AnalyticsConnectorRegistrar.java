package com.google.firebase.analytics.connector.internal;

import android.annotation.SuppressLint;
import android.content.Context;
import androidx.annotation.Keep;
import com.google.firebase.C4865b;
import com.google.firebase.analytics.connector.AbstractC4859a;
import com.google.firebase.components.AbstractC4890h;
import com.google.firebase.components.C4879b;
import com.google.firebase.components.C4899n;
import com.google.firebase.p161a.AbstractC4857d;
import com.google.firebase.p165e.C4934g;
import java.util.Arrays;
import java.util.List;
@Keep
/* loaded from: classes-dex2jar.jar:com/google/firebase/analytics/connector/internal/AnalyticsConnectorRegistrar.class */
public class AnalyticsConnectorRegistrar implements AbstractC4890h {
    @Override // com.google.firebase.components.AbstractC4890h
    @Keep
    @SuppressLint({"MissingPermission"})
    public List<C4879b<?>> getComponents() {
        return Arrays.asList(C4879b.m2123a(AbstractC4859a.class).m2106a(C4899n.m2070b(C4865b.class)).m2106a(C4899n.m2070b(Context.class)).m2106a(C4899n.m2070b(AbstractC4857d.class)).m2107a(C4863a.f20930a).m2104b().m2103c(), C4934g.m2010a("fire-analytics", "17.4.2"));
    }
}
