package com.flexaspect.android.everycallcontrol.p003ui.activities.missedcall;

import java.util.TimerTask;
/* renamed from: com.flexaspect.android.everycallcontrol.ui.activities.missedcall.MissedCallActivity$b */
/* loaded from: classes-dex2jar.jar:com/flexaspect/android/everycallcontrol/ui/activities/missedcall/MissedCallActivity$b.class */
public class MissedCallActivity$b extends TimerTask {
    public MissedCallActivity$b(MissedCallActivity missedCallActivity) {
    }

    @Override // java.util.TimerTask, java.lang.Runnable
    public void run() {
        MissedCallActivity.I().dismiss();
        MissedCallActivity.J().cancel();
    }
}
