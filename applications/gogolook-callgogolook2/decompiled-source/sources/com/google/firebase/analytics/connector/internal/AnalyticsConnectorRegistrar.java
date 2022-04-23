package com.google.firebase.analytics.connector.internal;

import android.annotation.SuppressLint;
import android.content.Context;
import androidx.annotation.Keep;
import java.util.Collections;
import java.util.List;
import p081h.p203i.p325c.C9435c;
import p081h.p203i.p325c.p331k.p332a.AbstractC9452a;
import p081h.p203i.p325c.p331k.p332a.p333c.C9459b;
import p081h.p203i.p325c.p336m.AbstractC9489h;
import p081h.p203i.p325c.p336m.C9480d;
import p081h.p203i.p325c.p336m.C9498n;
import p081h.p203i.p325c.p362r.AbstractC9857d;
@Keep
/* loaded from: classes2-dex2jar.jar:com/google/firebase/analytics/connector/internal/AnalyticsConnectorRegistrar.class */
public class AnalyticsConnectorRegistrar implements AbstractC9489h {
    @Override // p081h.p203i.p325c.p336m.AbstractC9489h
    @Keep
    @SuppressLint({"MissingPermission"})
    public List<C9480d<?>> getComponents() {
        C9480d.C9482b a = C9480d.m15099a(AbstractC9452a.class);
        a.m15082a(C9498n.m15046c(C9435c.class));
        a.m15082a(C9498n.m15046c(Context.class));
        a.m15082a(C9498n.m15046c(AbstractC9857d.class));
        a.m15083a(C9459b.f21594a);
        a.m15079c();
        return Collections.singletonList(a.m15080b());
    }
}
