package com.truecaller.common.background;

import android.content.BroadcastReceiver;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import com.razorpay.AnalyticsConstants;
import kotlin.Metadata;
import p1727n3.p1807k.p1808a.AbstractServiceC26431i;
import s1.z.c.l;
@Metadata(bv = {1, 0, 3}, d1 = {"��\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0005\u0018��2\u00020\u0001B\u0007¢\u0006\u0004\b\t\u0010\nJ\u001f\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0004H\u0016¢\u0006\u0004\b\u0007\u0010\b¨\u0006\u000b"}, d2 = {"Lcom/truecaller/common/background/DelayedServiceBroadcastReceiver;", "Landroid/content/BroadcastReceiver;", "Landroid/content/Context;", AnalyticsConstants.CONTEXT, "Landroid/content/Intent;", "intent", "Ls1/s;", "onReceive", "(Landroid/content/Context;Landroid/content/Intent;)V", "<init>", "()V", "common_release"}, k = 1, mv = {1, 4, 1})
/* loaded from: classes7-dex2jar.jar:com/truecaller/common/background/DelayedServiceBroadcastReceiver.class */
public final class DelayedServiceBroadcastReceiver extends BroadcastReceiver {

    /* renamed from: a */
    public static final /* synthetic */ int f10905a = 0;

    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        boolean z;
        l.e(context, AnalyticsConstants.CONTEXT);
        l.e(intent, "intent");
        Intent intent2 = new Intent();
        ComponentName componentName = (ComponentName) intent.getParcelableExtra("component_name");
        if (componentName != null) {
            try {
                l.d(componentName, "it");
                Class.forName(componentName.getClassName());
                z = true;
            } catch (Exception e) {
                z = false;
            }
            Integer num = null;
            if (!z) {
                componentName = null;
            }
            if (componentName == null) {
                return;
            }
            l.d(componentName, "intent.getParcelableExtr…  }\n            ?: return");
            Integer valueOf = Integer.valueOf(intent.getIntExtra("job_id", -1));
            if (valueOf.intValue() != -1) {
                num = valueOf;
            }
            if (num == null) {
                return;
            }
            int intValue = num.intValue();
            Bundle bundle = (Bundle) intent.getParcelableExtra("payload");
            if (bundle != null) {
                intent2.putExtras(bundle);
            }
            AbstractServiceC26431i.enqueueWork(context, componentName, intValue, intent2);
        }
    }
}
