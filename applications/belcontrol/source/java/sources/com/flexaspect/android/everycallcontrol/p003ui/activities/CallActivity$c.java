package com.flexaspect.android.everycallcontrol.p003ui.activities;

import android.net.Uri;
import android.os.Bundle;
import android.telecom.PhoneAccountHandle;
import android.telecom.TelecomManager;
import android.view.View;
/* renamed from: com.flexaspect.android.everycallcontrol.ui.activities.CallActivity$c */
/* loaded from: classes-dex2jar.jar:com/flexaspect/android/everycallcontrol/ui/activities/CallActivity$c.class */
public class CallActivity$c implements View.OnClickListener {

    /* renamed from: a */
    public final /* synthetic */ PhoneAccountHandle f2744a;

    /* renamed from: b */
    public final /* synthetic */ TelecomManager f2745b;

    /* renamed from: c */
    public final /* synthetic */ g61 f2746c;

    /* renamed from: d */
    public final /* synthetic */ CallActivity f2747d;

    public CallActivity$c(CallActivity callActivity, PhoneAccountHandle phoneAccountHandle, TelecomManager telecomManager, g61 g61Var) {
        this.f2747d = callActivity;
        this.f2744a = phoneAccountHandle;
        this.f2745b = telecomManager;
        this.f2746c = g61Var;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        Bundle bundle = new Bundle();
        bundle.putParcelable("android.telecom.extra.PHONE_ACCOUNT_HANDLE", this.f2744a);
        this.f2745b.placeCall(Uri.fromParts("tel", this.f2746c.f6665g.toString(), null), bundle);
        CallActivity.A(this.f2747d).dismiss();
    }
}
