package com.callapp.contacts.activity.contact.details.incallfragment;

import android.content.Context;
import android.content.res.Resources;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import com.callapp.contacts.activity.contact.details.incallfragment.InCallActionFragment;
import com.callapp.contacts.activity.viewcontroller.ViewController;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/activity/contact/details/incallfragment/BaseAnsweringMethodViewController.class */
public abstract class BaseAnsweringMethodViewController implements ViewController {

    /* renamed from: a */
    private InCallActionFragment.InCallActionFragmentInterface f21923a;

    /* renamed from: b */
    private final ViewGroup f21924b;

    public BaseAnsweringMethodViewController(ViewGroup viewGroup, InCallActionFragment.InCallActionFragmentInterface inCallActionFragmentInterface) {
        this.f21923a = inCallActionFragmentInterface;
        this.f21924b = (ViewGroup) LayoutInflater.from(viewGroup.getContext()).inflate(getLayoutResource(), viewGroup, true);
    }

    @Override // com.callapp.contacts.activity.viewcontroller.ViewController
    /* renamed from: a */
    public /* synthetic */ View mo26540a(int i) {
        View findViewById;
        findViewById = getRootView().findViewById(i);
        return findViewById;
    }

    /* renamed from: a */
    public void mo30868a() {
        this.f21923a = null;
    }

    @Override // com.callapp.contacts.activity.viewcontroller.ViewController
    /* renamed from: b */
    public /* synthetic */ void mo26534b() {
        getRootView().setVisibility(0);
    }

    public InCallActionFragment.InCallActionFragmentInterface getCallback() {
        return this.f21923a;
    }

    @Override // com.callapp.contacts.activity.viewcontroller.ViewController
    public /* synthetic */ Context getContext() {
        Context context;
        context = getRootView().getContext();
        return context;
    }

    protected abstract int getLayoutResource();

    @Override // com.callapp.contacts.activity.viewcontroller.ViewController
    public /* synthetic */ Resources getResources() {
        Resources resources;
        resources = getRootView().getResources();
        return resources;
    }

    @Override // com.callapp.contacts.activity.viewcontroller.ViewController
    public ViewGroup getRootView() {
        return this.f21924b;
    }

    @Override // com.callapp.contacts.activity.viewcontroller.ViewController
    public /* synthetic */ boolean isViewShown() {
        boolean isShown;
        isShown = getRootView().isShown();
        return isShown;
    }
}
