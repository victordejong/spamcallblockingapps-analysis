package com.callapp.contacts.activity.contact.list;

import com.callapp.contacts.manager.ManagedLifecycle;
import com.callapp.contacts.manager.Singletons;
import com.callapp.contacts.manager.preferences.Prefs;
import java.util.Date;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/activity/contact/list/RetentionAnalytics.class */
public class RetentionAnalytics implements ManagedLifecycle {
    /* renamed from: a */
    public static void m30523a() {
        if (Prefs.f26514fZ.isNull()) {
            Prefs.f26514fZ.set(new Date());
        }
    }

    /* renamed from: b */
    public static void m30522b() {
        Prefs.f26442eG.m28170a(5);
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
