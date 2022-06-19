package com.freshchat.consumer.sdk.p063m;

import android.view.View;
import androidx.fragment.app.FragmentManager;
/* renamed from: com.freshchat.consumer.sdk.m.w */
/* loaded from: classes2-dex2jar.jar:com/freshchat/consumer/sdk/m/w.class */
public class View$OnClickListenerC1800w implements View.OnClickListener {

    /* renamed from: pp */
    public final /* synthetic */ C1797t f4664pp;

    public View$OnClickListenerC1800w(C1797t c1797t) {
        this.f4664pp = c1797t;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        FragmentManager fragmentManager = this.f4664pp.getFragmentManager();
        if (fragmentManager != null) {
            fragmentManager.m42921c0();
        }
    }
}
