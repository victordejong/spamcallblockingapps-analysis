package com.callapp.contacts.activity.viewcontroller;

import android.content.Context;
import android.content.res.Resources;
import android.view.View;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/activity/viewcontroller/ViewController.class */
public interface ViewController {

    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/activity/viewcontroller/ViewController$_CC.class */
    public final /* synthetic */ class _CC {
    }

    <VIEW extends View> VIEW a(int i);

    void b();

    Context getContext();

    Resources getResources();

    View getRootView();

    boolean isViewShown();
}
