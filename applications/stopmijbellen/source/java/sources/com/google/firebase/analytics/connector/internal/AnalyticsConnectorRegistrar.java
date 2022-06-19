package com.google.firebase.analytics.connector.internal;

import android.annotation.SuppressLint;
import android.content.Context;
import android.os.Bundle;
import androidx.annotation.Keep;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.internal.measurement.zzee;
import java.util.Arrays;
import java.util.List;
import p104g6.C2906b;
import p201p6.C4021f;
import p241t4.C4390a;
import p241t4.C4392c;
import p253u5.AbstractC4489d;
import p285x4.AbstractC4857a;
import p285x4.C4861b;
import p285x4.C4864d;
import p285x4.ExecutorC4863c;
import p305z4.AbstractC5080d;
import p305z4.AbstractC5083g;
import p305z4.C5077c;
import p305z4.C5093m;
@Keep
@KeepForSdk
/* loaded from: classes-dex2jar.jar:com/google/firebase/analytics/connector/internal/AnalyticsConnectorRegistrar.class */
public class AnalyticsConnectorRegistrar implements AbstractC5083g {
    public static final AbstractC4857a lambda$getComponents$0$AnalyticsConnectorRegistrar(AbstractC5080d abstractC5080d) {
        C4392c c4392c = (C4392c) abstractC5080d.mo40a(C4392c.class);
        Context context = (Context) abstractC5080d.mo40a(Context.class);
        AbstractC4489d abstractC4489d = (AbstractC4489d) abstractC5080d.mo40a(AbstractC4489d.class);
        Preconditions.checkNotNull(c4392c);
        Preconditions.checkNotNull(context);
        Preconditions.checkNotNull(abstractC4489d);
        Preconditions.checkNotNull(context.getApplicationContext());
        if (C4861b.f14904c == null) {
            synchronized (C4861b.class) {
                try {
                    if (C4861b.f14904c == null) {
                        Bundle bundle = new Bundle(1);
                        if (c4392c.m968g()) {
                            abstractC4489d.mo41a(C4390a.class, ExecutorC4863c.f14907a, C4864d.f14908a);
                            bundle.putBoolean("dataCollectionDefaultEnabled", c4392c.m969f());
                        }
                        C4861b.f14904c = new C4861b(zzee.zza(context, null, null, null, bundle).zzb());
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return C4861b.f14904c;
    }

    @Override // p305z4.AbstractC5083g
    @Keep
    @KeepForSdk
    @SuppressLint({"MissingPermission"})
    public List<C5077c<?>> getComponents() {
        C5077c.C5079b m56a = C5077c.m56a(AbstractC4857a.class);
        m56a.m53a(new C5093m(C4392c.class, 1, 0));
        m56a.m53a(new C5093m(Context.class, 1, 0));
        m56a.m53a(new C5093m(AbstractC4489d.class, 1, 0));
        m56a.m50d(C2906b.f9801h);
        m56a.m51c();
        return Arrays.asList(m56a.m52b(), C4021f.m1502a("fire-analytics", "19.0.0"));
    }
}
