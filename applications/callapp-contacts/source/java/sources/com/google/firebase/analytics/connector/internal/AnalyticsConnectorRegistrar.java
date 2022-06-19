package com.google.firebase.analytics.connector.internal;

import android.content.Context;
import com.google.firebase.C15601b;
import com.google.firebase.analytics.connector.AbstractC15587a;
import com.google.firebase.components.AbstractC15634i;
import com.google.firebase.components.C15622b;
import com.google.firebase.components.C15648r;
import com.google.firebase.p389b.AbstractC15609d;
import com.google.firebase.p394f.C15751g;
import java.util.Arrays;
import java.util.List;
/* loaded from: classes4-dex2jar.jar:com/google/firebase/analytics/connector/internal/AnalyticsConnectorRegistrar.class */
public class AnalyticsConnectorRegistrar implements AbstractC15634i {
    public static final /* synthetic */ int zza = 0;

    @Override // com.google.firebase.components.AbstractC15634i
    public List<C15622b<?>> getComponents() {
        return Arrays.asList(C15622b.m8552a(AbstractC15587a.class).m8544a(C15648r.m8510b(C15601b.class)).m8544a(C15648r.m8510b(Context.class)).m8544a(C15648r.m8510b(AbstractC15609d.class)).m8545a(C15595a.f55956a).m8546a(2).m8547a(), C15751g.m8457a("fire-analytics", "18.0.3"));
    }
}
