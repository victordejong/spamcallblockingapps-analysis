package com.flexaspect.android.everycallcontrol.p003ui.fragments;

import android.os.Bundle;
import android.view.View;
import p000.w91;
/* renamed from: com.flexaspect.android.everycallcontrol.ui.fragments.NewMessagesFragment$b */
/* loaded from: classes-dex2jar.jar:com/flexaspect/android/everycallcontrol/ui/fragments/NewMessagesFragment$b.class */
public class NewMessagesFragment$b implements View.OnClickListener {

    /* renamed from: a */
    public final /* synthetic */ NewMessagesFragment f3073a;

    public NewMessagesFragment$b(NewMessagesFragment newMessagesFragment) {
        this.f3073a = newMessagesFragment;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        if (NewMessagesFragment.x(this.f3073a) == NewMessagesFragment$e.NOT_INSTALLED) {
            this.f3073a.x.onClick(view);
            return;
        }
        Bundle bundle = new Bundle();
        bundle.putString("Value", NewMessagesFragment.y(this.f3073a).k());
        w91.m275c(this, w91.EnumC1708a.THIRD_PARTY_APPS_SETUP, bundle);
        NewMessagesFragment.y(this.f3073a).s(false);
    }
}
