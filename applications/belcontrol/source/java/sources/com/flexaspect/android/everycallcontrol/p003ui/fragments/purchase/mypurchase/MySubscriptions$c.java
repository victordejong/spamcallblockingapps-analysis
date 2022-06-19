package com.flexaspect.android.everycallcontrol.p003ui.fragments.purchase.mypurchase;

import android.view.View;
import androidx.fragment.app.FragmentActivity;
/* renamed from: com.flexaspect.android.everycallcontrol.ui.fragments.purchase.mypurchase.MySubscriptions$c */
/* loaded from: classes-dex2jar.jar:com/flexaspect/android/everycallcontrol/ui/fragments/purchase/mypurchase/MySubscriptions$c.class */
public class MySubscriptions$c implements View.OnClickListener {

    /* renamed from: a */
    public final /* synthetic */ MySubscriptions f3132a;

    public MySubscriptions$c(MySubscriptions mySubscriptions) {
        this.f3132a = mySubscriptions;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        FragmentActivity activity = this.f3132a.getActivity();
        if (activity != null) {
            activity.onBackPressed();
        }
    }
}
