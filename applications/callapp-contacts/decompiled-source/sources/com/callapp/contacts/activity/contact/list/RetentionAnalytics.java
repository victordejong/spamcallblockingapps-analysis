package com.callapp.contacts.activity.contact.list;

import com.callapp.contacts.manager.ManagedLifecycle;
import com.callapp.contacts.manager.Singletons;
import com.callapp.contacts.manager.preferences.Prefs;
import java.util.Date;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/activity/contact/list/RetentionAnalytics.class */
public class RetentionAnalytics implements ManagedLifecycle {
    public static void a() {
        if (Prefs.fZ.isNull()) {
            Prefs.fZ.set(new Date());
        }
    }

    public static void b() {
        Prefs.eG.a(5);
    }

    public static RetentionAnalytics get() {
        return Singletons.get().getRetentionAnalytics();
    }

    @Override // com.callapp.contacts.manager.ManagedLifecycle
    public void destroy() {
    }

    @Override // com.callapp.contacts.manager.ManagedLifecycle
    public void init() {
    }
}
