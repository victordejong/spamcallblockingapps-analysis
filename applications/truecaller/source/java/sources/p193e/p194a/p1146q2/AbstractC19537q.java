package p193e.p194a.p1146q2;

import android.content.BroadcastReceiver;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.os.Parcelable;
import com.razorpay.AnalyticsConstants;
import com.truecaller.TrueApp;
import com.truecaller.log.AssertionUtil;
import java.util.HashMap;
import java.util.Objects;
import p193e.p1432d.p1439c.p1440a.C22128a;
import s1.z.c.l;
/* renamed from: e.a.q2.q */
/* loaded from: classes4-dex2jar.jar:e/a/q2/q.class */
public abstract class AbstractC19537q extends BroadcastReceiver {
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
            l.e(context, AnalyticsConstants.CONTEXT);
            String string = extras.getString("EXTRA_SOURCE", null);
            HashMap m8667T = C22128a.m8667T("PackageSelected", componentName.getPackageName());
            AssertionUtil.isNotNull(string, " Source Param cannot be null.");
            l.c(string);
            m8667T.put("Source", string);
            TrueApp m36032b0 = TrueApp.m36032b0();
            l.d(m36032b0, "TrueApp.getApp()");
            C22128a.m8711G0("ANDROID_MAIN_ShareTruecaller", null, m8667T, null, "event.build()", m36032b0.mo10154s().mo12776C4());
        }
    }
}
