package com.flexaspect.android.everycallcontrol.p003ui.fragments;

import android.os.Bundle;
import android.view.View;
import p000.w91;
import sh0;
/* renamed from: com.flexaspect.android.everycallcontrol.ui.fragments.NewMessagesFragment$a */
/* loaded from: classes-dex2jar.jar:com/flexaspect/android/everycallcontrol/ui/fragments/NewMessagesFragment$a.class */
public class NewMessagesFragment$a implements View.OnClickListener {
    public NewMessagesFragment$a(NewMessagesFragment newMessagesFragment) {
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        Bundle bundle = new Bundle();
        bundle.putString("Value", "com.moez.QKSMS");
        w91.m275c(this, w91.EnumC1708a.THIRD_PARTY_APPS_INSTALL, bundle);
        sh0.c.w();
    }
}
