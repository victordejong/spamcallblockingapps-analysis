package com.callapp.contacts.widget.floatingwidget.p240ui.callapp;

import com.callapp.contacts.activity.base.BaseActivity;
import com.callapp.contacts.manager.ManagedLifecycle;
import com.callapp.contacts.manager.Singletons;
import java.lang.ref.WeakReference;
/* renamed from: com.callapp.contacts.widget.floatingwidget.ui.callapp.CallAppChatHeadLifecycleObserverManager */
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/widget/floatingwidget/ui/callapp/CallAppChatHeadLifecycleObserverManager.class */
public class CallAppChatHeadLifecycleObserverManager implements ManagedLifecycle {

    /* renamed from: a */
    public final Object f29144a = new Object();

    /* renamed from: b */
    public final CallAppChatHeadLifecycleObserver f29145b = new CallAppChatHeadLifecycleObserver();

    /* renamed from: c */
    public WeakReference<BaseActivity> f29146c;

    public static CallAppChatHeadLifecycleObserverManager get() {
        return Singletons.get().getCallAppChatHeadLifecycleObserverManager();
    }

    /* renamed from: a */
    public final void m26493a() {
        if (isRegisteredActivity()) {
            CallAppChatHeadLifecycleObserver.m26495a();
        }
    }

    @Override // com.callapp.contacts.manager.ManagedLifecycle
    public void destroy() {
    }

    @Override // com.callapp.contacts.manager.ManagedLifecycle
    public void init() {
    }

    public boolean isRegisteredActivity() {
        WeakReference<BaseActivity> weakReference = this.f29146c;
        return (weakReference == null || weakReference.get() == null) ? false : true;
    }
}
