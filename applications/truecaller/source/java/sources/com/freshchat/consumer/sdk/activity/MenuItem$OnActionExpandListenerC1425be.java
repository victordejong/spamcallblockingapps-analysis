package com.freshchat.consumer.sdk.activity;

import android.view.MenuItem;
/* renamed from: com.freshchat.consumer.sdk.activity.be */
/* loaded from: classes2-dex2jar.jar:com/freshchat/consumer/sdk/activity/be.class */
public class MenuItem$OnActionExpandListenerC1425be implements MenuItem.OnActionExpandListener {

    /* renamed from: qL */
    public final /* synthetic */ FAQSearchActivity f3940qL;

    public MenuItem$OnActionExpandListenerC1425be(FAQSearchActivity fAQSearchActivity) {
        this.f3940qL = fAQSearchActivity;
    }

    @Override // android.view.MenuItem.OnActionExpandListener
    public boolean onMenuItemActionCollapse(MenuItem menuItem) {
        this.f3940qL.finish();
        return true;
    }

    @Override // android.view.MenuItem.OnActionExpandListener
    public boolean onMenuItemActionExpand(MenuItem menuItem) {
        return true;
    }
}
