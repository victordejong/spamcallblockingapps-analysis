package com.flexaspect.android.everycallcontrol.p003ui.fragments;

import android.os.Bundle;
import android.view.View;
import p000.w91;
/* renamed from: com.flexaspect.android.everycallcontrol.ui.fragments.NewMessagesFragment$c */
/* loaded from: classes-dex2jar.jar:com/flexaspect/android/everycallcontrol/ui/fragments/NewMessagesFragment$c.class */
public class NewMessagesFragment$c implements View.OnClickListener {

    /* renamed from: a */
    public final /* synthetic */ NewMessagesFragment f3074a;

    public NewMessagesFragment$c(NewMessagesFragment newMessagesFragment) {
        this.f3074a = newMessagesFragment;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        if (NewMessagesFragment.x(this.f3074a) == NewMessagesFragment$e.NOT_INSTALLED) {
            this.f3074a.x.onClick(view);
            return;
        }
        Bundle bundle = new Bundle();
        bundle.putString("Value", NewMessagesFragment.y(this.f3074a).k());
        w91.m275c(this, w91.EnumC1708a.THIRD_PARTY_APPS_SETUP, bundle);
        NewMessagesFragment.y(this.f3074a).s(true);
    }
}
