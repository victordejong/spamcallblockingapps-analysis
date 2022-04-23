package com.google.firebase.analytics.connector.internal;

import android.content.Context;
import com.google.firebase.analytics.connector.a;
import com.google.firebase.b.d;
import com.google.firebase.components.b;
import com.google.firebase.components.i;
import com.google.firebase.components.r;
import com.google.firebase.f.g;
import java.util.Arrays;
import java.util.List;
/* loaded from: classes4-dex2jar.jar:com/google/firebase/analytics/connector/internal/AnalyticsConnectorRegistrar.class */
public class AnalyticsConnectorRegistrar implements i {
    public static final /* synthetic */ int zza = 0;

    @Override // com.google.firebase.components.i
    public List<b<?>> getComponents() {
        return Arrays.asList(b.a(a.class).a(r.b(com.google.firebase.b.class)).a(r.b(Context.class)).a(r.b(d.class)).a(a.f32196a).a(2).a(), g.a("fire-analytics", "18.0.3"));
    }
}
