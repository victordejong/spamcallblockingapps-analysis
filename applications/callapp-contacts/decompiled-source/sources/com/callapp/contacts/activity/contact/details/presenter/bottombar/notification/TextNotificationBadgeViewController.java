package com.callapp.contacts.activity.contact.details.presenter.bottombar.notification;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.ViewGroup;
import android.widget.TextView;
import com.callapp.contacts.activity.contact.details.presenter.bottombar.notification.BaseNotificationBadgeViewController;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/activity/contact/details/presenter/bottombar/notification/TextNotificationBadgeViewController.class */
public class TextNotificationBadgeViewController extends BaseNotificationBadgeViewController<String> {
    public TextNotificationBadgeViewController(Context context, BaseNotificationBadgeViewController.ShouldDisplay shouldDisplay, BaseNotificationBadgeViewController.Evaluate<String> evaluate) {
        super(LayoutInflater.from(context).inflate(2131558828, (ViewGroup) null), shouldDisplay, evaluate);
    }

    @Override // com.callapp.contacts.activity.contact.details.presenter.bottombar.notification.BaseNotificationBadgeViewController
    protected final /* synthetic */ void a(String str) {
        ((TextView) getRootView().findViewById(2131362131)).setText(str);
    }
}
