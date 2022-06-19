package com.flexaspect.android.everycallcontrol.p003ui.activities.missedcall;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import java.util.Objects;
/* renamed from: com.flexaspect.android.everycallcontrol.ui.activities.missedcall.MissedCallActivity$a */
/* loaded from: classes-dex2jar.jar:com/flexaspect/android/everycallcontrol/ui/activities/missedcall/MissedCallActivity$a.class */
public class MissedCallActivity$a extends BroadcastReceiver {

    /* renamed from: a */
    public final /* synthetic */ MissedCallActivity f2816a;

    public MissedCallActivity$a(MissedCallActivity missedCallActivity) {
        this.f2816a = missedCallActivity;
    }

    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        if (Objects.equals(intent.getAction(), l31.o)) {
            this.f2816a.finish();
        }
    }
}
