package com.callapp.contacts.activity.contact.details.presenter.bottombar.notification;

import android.content.Context;
import android.content.res.Resources;
import android.view.View;
import com.callapp.contacts.activity.viewcontroller.ViewController;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/activity/contact/details/presenter/bottombar/notification/BaseNotificationBadgeViewController.class */
public abstract class BaseNotificationBadgeViewController<Type> implements ViewController {

    /* renamed from: a  reason: collision with root package name */
    private final View f12381a;

    /* renamed from: b  reason: collision with root package name */
    private final ShouldDisplay f12382b;

    /* renamed from: c  reason: collision with root package name */
    private final Evaluate<Type> f12383c;

    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/activity/contact/details/presenter/bottombar/notification/BaseNotificationBadgeViewController$Evaluate.class */
    public interface Evaluate<Type> {
        Type apply();
    }

    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/activity/contact/details/presenter/bottombar/notification/BaseNotificationBadgeViewController$ShouldDisplay.class */
    public interface ShouldDisplay {
        boolean apply();
    }

    public BaseNotificationBadgeViewController(View view, ShouldDisplay shouldDisplay, Evaluate<Type> evaluate) {
        this.f12381a = view;
        this.f12382b = shouldDisplay;
        this.f12383c = evaluate;
        a();
    }

    private void b(Type type) {
        this.f12381a.setVisibility(0);
        a((BaseNotificationBadgeViewController<Type>) type);
    }

    private void c() {
        this.f12381a.setVisibility(8);
    }

    @Override // com.callapp.contacts.activity.viewcontroller.ViewController
    public /* synthetic */ View a(int i) {
        View findViewById;
        findViewById = getRootView().findViewById(i);
        return findViewById;
    }

    public final void a() {
        if (this.f12382b.apply()) {
            b(this.f12383c.apply());
        } else {
            c();
        }
    }

    protected void a(Type type) {
    }

    @Override // com.callapp.contacts.activity.viewcontroller.ViewController
    public /* synthetic */ void b() {
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
        return this.f12381a;
    }

    @Override // com.callapp.contacts.activity.viewcontroller.ViewController
    public /* synthetic */ boolean isViewShown() {
        boolean isShown;
        isShown = getRootView().isShown();
        return isShown;
    }
}
