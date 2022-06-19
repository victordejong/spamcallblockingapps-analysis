package com.truecaller.stats;

import android.content.BroadcastReceiver;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.os.Parcelable;
import com.razorpay.AnalyticsConstants;
import java.util.Objects;
import kotlin.Metadata;
import p193e.p194a.p1050l5.p1051a.C17697p3;
import p193e.p194a.p1146q2.AbstractC19462a;
import p193e.p194a.p372b0.p411g.AbstractApplicationC8442a;
import s1.k;
import s1.u.i;
import s1.z.c.l;
@Metadata(bv = {1, 0, 3}, d1 = {"��\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0005\u0018��2\u00020\u0001B\u0007¢\u0006\u0004\b\t\u0010\nJ\u001f\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0004H\u0016¢\u0006\u0004\b\u0007\u0010\b¨\u0006\u000b"}, d2 = {"Lcom/truecaller/stats/IntentChooserReceiver;", "Landroid/content/BroadcastReceiver;", "Landroid/content/Context;", AnalyticsConstants.CONTEXT, "Landroid/content/Intent;", "intent", "Ls1/s;", "onReceive", "(Landroid/content/Context;Landroid/content/Intent;)V", "<init>", "()V", "stats_release"}, k = 1, mv = {1, 4, 1})
/* loaded from: classes13-dex2jar.jar:com/truecaller/stats/IntentChooserReceiver.class */
public final class IntentChooserReceiver extends BroadcastReceiver {
    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        l.e(context, AnalyticsConstants.CONTEXT);
        l.e(intent, "intent");
        Bundle extras = intent.getExtras();
        if (extras != null) {
            l.d(extras, "intent.extras ?: return");
            if (!extras.containsKey("android.intent.extra.CHOSEN_COMPONENT")) {
                return;
            }
            Parcelable parcelable = extras.getParcelable("android.intent.extra.CHOSEN_COMPONENT");
            Objects.requireNonNull(parcelable, "null cannot be cast to non-null type android.content.ComponentName");
            ComponentName componentName = (ComponentName) parcelable;
            AbstractApplicationC8442a m28551L = AbstractApplicationC8442a.m28551L();
            l.d(m28551L, "ApplicationBase.getAppBase()");
            AbstractC19462a mo12776C4 = m28551L.m28552K().mo12776C4();
            C17697p3.C17699b m15852a = C17697p3.m15852a();
            m15852a.m15850b("YearInReviewSharedWith");
            m15852a.m15848d(i.W(new k[]{new k("PackageName", componentName.getPackageName()), new k("ClassName", componentName.getClassName())}));
            C17697p3 build = m15852a.build();
            l.d(build, "GenericAnalyticsEvent.ne…\n                .build()");
            mo12776C4.mo13275a(build);
        }
    }
}
