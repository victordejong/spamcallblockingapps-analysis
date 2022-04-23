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

    /* renamed from: a  reason: collision with root package name */
    private InCallActionFragment.InCallActionFragmentInterface f12182a;

    /* renamed from: b  reason: collision with root package name */
    private final ViewGroup f12183b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public BaseAnsweringMethodViewController(ViewGroup viewGroup, InCallActionFragment.InCallActionFragmentInterface inCallActionFragmentInterface) {
        this.f12182a = inCallActionFragmentInterface;
        this.f12183b = (ViewGroup) LayoutInflater.from(viewGroup.getContext()).inflate(getLayoutResource(), viewGroup, true);
    }

    @Override // com.callapp.contacts.activity.viewcontroller.ViewController
    public /* synthetic */ View a(int i) {
        View findViewById;
        findViewById = getRootView().findViewById(i);
        return findViewById;
    }

    public void a() {
        this.f12182a = null;
    }

    @Override // com.callapp.contacts.activity.viewcontroller.ViewController
    public /* synthetic */ void b() {
        getRootView().setVisibility(0);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public InCallActionFragment.InCallActionFragmentInterface getCallback() {
        return this.f12182a;
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
        return this.f12183b;
    }

    @Override // com.callapp.contacts.activity.viewcontroller.ViewController
    public /* synthetic */ boolean isViewShown() {
        boolean isShown;
        isShown = getRootView().isShown();
        return isShown;
    }
}
