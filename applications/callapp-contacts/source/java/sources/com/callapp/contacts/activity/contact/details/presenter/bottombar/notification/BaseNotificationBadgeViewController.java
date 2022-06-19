package com.callapp.contacts.activity.contact.details.presenter.bottombar.notification;

import android.content.Context;
import android.content.res.Resources;
import android.view.View;
import com.callapp.contacts.activity.viewcontroller.ViewController;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/activity/contact/details/presenter/bottombar/notification/BaseNotificationBadgeViewController.class */
public abstract class BaseNotificationBadgeViewController<Type> implements ViewController {

    /* renamed from: a */
    private final View f22206a;

    /* renamed from: b */
    private final ShouldDisplay f22207b;

    /* renamed from: c */
    private final Evaluate<Type> f22208c;

    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/activity/contact/details/presenter/bottombar/notification/BaseNotificationBadgeViewController$Evaluate.class */
    public interface Evaluate<Type> {
        Type apply();
    }

    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/activity/contact/details/presenter/bottombar/notification/BaseNotificationBadgeViewController$ShouldDisplay.class */
    public interface ShouldDisplay {
        boolean apply();
    }

    public BaseNotificationBadgeViewController(View view, ShouldDisplay shouldDisplay, Evaluate<Type> evaluate) {
        this.f22206a = view;
        this.f22207b = shouldDisplay;
        this.f22208c = evaluate;
        m30787a();
    }

    /* renamed from: b */
    private void m30786b(Type type) {
        this.f22206a.setVisibility(0);
        mo30783a((BaseNotificationBadgeViewController<Type>) type);
    }

    /* renamed from: c */
    private void m30785c() {
        this.f22206a.setVisibility(8);
    }

    @Override // com.callapp.contacts.activity.viewcontroller.ViewController
    /* renamed from: a */
    public /* synthetic */ View mo26540a(int i) {
        View findViewById;
        findViewById = getRootView().findViewById(i);
        return findViewById;
    }

    /* renamed from: a */
    public final void m30787a() {
        if (this.f22207b.apply()) {
            m30786b(this.f22208c.apply());
        } else {
            m30785c();
        }
    }

    /* renamed from: a */
    protected void mo30783a(Type type) {
    }

    @Override // com.callapp.contacts.activity.viewcontroller.ViewController
    /* renamed from: b */
    public /* synthetic */ void mo26534b() {
        getRootView().setVisibility(0);
    }

    @Override // com.callapp.contacts.activity.viewcontroller.ViewController
    public /* synthetic */ Context getContext() {
        Context context;
        context = getRootView().getContext();
        return context;
    }

    @Override // com.callapp.contacts.activity.viewcontroller.ViewController
    public /* synthetic */ Resources getResources() {
        Resources resources;
        resources = getRootView().getResources();
        return resources;
    }

    @Override // com.callapp.contacts.activity.viewcontroller.ViewController
    public View getRootView() {
        return this.f22206a;
    }

    @Override // com.callapp.contacts.activity.viewcontroller.ViewController
    public /* synthetic */ boolean isViewShown() {
        boolean isShown;
        isShown = getRootView().isShown();
        return isShown;
    }
}
