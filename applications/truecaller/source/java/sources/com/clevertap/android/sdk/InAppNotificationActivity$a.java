package com.clevertap.android.sdk;

import android.content.DialogInterface;
import android.os.Bundle;
import p193e.p1485h.p1486a.p1493c.p1501q0.AbstractC22798c0;
/* loaded from: classes-dex2jar.jar:com/clevertap/android/sdk/InAppNotificationActivity$a.class */
public class InAppNotificationActivity$a implements DialogInterface.OnClickListener {

    /* renamed from: a */
    public final /* synthetic */ InAppNotificationActivity f2259a;

    public InAppNotificationActivity$a(InAppNotificationActivity inAppNotificationActivity) {
        this.f2259a = inAppNotificationActivity;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public void onClick(DialogInterface dialogInterface, int i) {
        Bundle bundle = new Bundle();
        bundle.putString("wzrk_id", this.f2259a.b.f2334g);
        bundle.putString("wzrk_c2a", this.f2259a.b.f2333f.get(0).f2364h);
        InAppNotificationActivity inAppNotificationActivity = this.f2259a;
        AbstractC22798c0 ua = inAppNotificationActivity.ua();
        if (ua != null) {
            ua.mo7755P7(inAppNotificationActivity.b, bundle, null);
        }
        String str = this.f2259a.b.f2333f.get(0).f2357a;
        if (str != null) {
            this.f2259a.ta(str, bundle);
        } else {
            this.f2259a.ra(bundle);
        }
    }
}
