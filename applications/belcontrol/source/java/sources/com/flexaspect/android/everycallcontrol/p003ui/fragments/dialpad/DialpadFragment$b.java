package com.flexaspect.android.everycallcontrol.p003ui.fragments.dialpad;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.telephony.TelephonyManager;
import android.text.TextUtils;
import com.android.internal.telephony.PhoneConstants;
/* renamed from: com.flexaspect.android.everycallcontrol.ui.fragments.dialpad.DialpadFragment$b */
/* loaded from: classes-dex2jar.jar:com/flexaspect/android/everycallcontrol/ui/fragments/dialpad/DialpadFragment$b.class */
public class DialpadFragment$b extends BroadcastReceiver {

    /* renamed from: a */
    public final /* synthetic */ DialpadFragment f3119a;

    public DialpadFragment$b(DialpadFragment dialpadFragment) {
        this.f3119a = dialpadFragment;
    }

    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        String stringExtra = intent.getStringExtra(PhoneConstants.STATE_KEY);
        if ((TextUtils.equals(stringExtra, TelephonyManager.EXTRA_STATE_IDLE) || TextUtils.equals(stringExtra, TelephonyManager.EXTRA_STATE_OFFHOOK)) && DialpadFragment.J(this.f3119a)) {
            DialpadFragment.K(this.f3119a, false);
        }
    }
}
