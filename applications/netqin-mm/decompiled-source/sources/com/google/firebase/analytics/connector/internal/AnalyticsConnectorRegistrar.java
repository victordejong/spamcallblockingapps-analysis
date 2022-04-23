package com.google.firebase.analytics.connector.internal;

import android.content.Context;
import androidx.annotation.Keep;
import com.google.android.gms.common.annotation.KeepForSdk;
import java.util.Arrays;
import java.util.List;
import p131c.p161d.p282e.C5128c;
import p131c.p161d.p282e.p285j.p286a.AbstractC5143a;
import p131c.p161d.p282e.p285j.p286a.p287c.C5150b;
import p131c.p161d.p282e.p288k.AbstractC5171h;
import p131c.p161d.p282e.p288k.C5162d;
import p131c.p161d.p282e.p288k.C5180n;
import p131c.p161d.p282e.p313o.AbstractC5473d;
import p131c.p161d.p282e.p351v.C6061h;
@Keep
@KeepForSdk
/* loaded from: classes2-dex2jar.jar:com/google/firebase/analytics/connector/internal/AnalyticsConnectorRegistrar.class */
public class AnalyticsConnectorRegistrar implements AbstractC5171h {
    @Override // p131c.p161d.p282e.p288k.AbstractC5171h
    @Keep
    @KeepForSdk
    public List<C5162d<?>> getComponents() {
        C5162d.C5164b a = C5162d.m24395a(AbstractC5143a.class);
        a.m24378a(C5180n.m24343c(C5128c.class));
        a.m24378a(C5180n.m24343c(Context.class));
        a.m24378a(C5180n.m24343c(AbstractC5473d.class));
        a.m24379a(C5150b.f17779a);
        a.m24376b();
        return Arrays.asList(a.m24382a(), C6061h.m22163a("fire-analytics", "18.0.0"));
    }
}
