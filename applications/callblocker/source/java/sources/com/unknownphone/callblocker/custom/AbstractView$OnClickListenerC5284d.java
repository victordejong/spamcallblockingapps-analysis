package com.unknownphone.callblocker.custom;

import android.view.View;
import com.unknownphone.callblocker.p186d.C5291c;
/* renamed from: com.unknownphone.callblocker.custom.d */
/* loaded from: classes-dex2jar.jar:com/unknownphone/callblocker/custom/d.class */
public abstract class AbstractView$OnClickListenerC5284d implements View.OnClickListener {
    /* renamed from: a */
    public abstract void mo996a(View view);

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        mo996a(view);
        C5291c.m1046a(view.getContext());
    }
}
