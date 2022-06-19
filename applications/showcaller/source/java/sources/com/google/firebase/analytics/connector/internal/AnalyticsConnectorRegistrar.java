package com.google.firebase.analytics.connector.internal;

import android.annotation.SuppressLint;
import android.content.Context;
import androidx.annotation.Keep;
import androidx.annotation.RecentlyNonNull;
import com.google.firebase.C8849c;
import com.google.firebase.analytics.p292a.AbstractC8834a;
import com.google.firebase.components.AbstractC8868i;
import com.google.firebase.components.C8858d;
import com.google.firebase.components.C8881q;
import com.google.firebase.p312j.AbstractC9245d;
import com.google.firebase.p315m.C9256h;
import java.util.Arrays;
import java.util.List;
@Keep
/* loaded from: classes2-dex2jar.jar:com/google/firebase/analytics/connector/internal/AnalyticsConnectorRegistrar.class */
public class AnalyticsConnectorRegistrar implements AbstractC8868i {
    public static final /* synthetic */ int zza = 0;

    @Override // com.google.firebase.components.AbstractC8868i
    @RecentlyNonNull
    @Keep
    @SuppressLint({"MissingPermission"})
    public List<C8858d<?>> getComponents() {
        return Arrays.asList(C8858d.m2510a(AbstractC8834a.class).m2495b(C8881q.m2438i(C8849c.class)).m2495b(C8881q.m2438i(Context.class)).m2495b(C8881q.m2438i(AbstractC9245d.class)).m2491f(C8842a.f38761a).m2492e().m2493d(), C9256h.m1400a("fire-analytics", "18.0.3"));
    }
}
