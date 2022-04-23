package com.callapp.contacts.widget.floatingwidget.ui.callapp;

import com.callapp.contacts.activity.base.BaseActivity;
import com.callapp.contacts.manager.ManagedLifecycle;
import com.callapp.contacts.manager.Singletons;
import java.lang.ref.WeakReference;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/widget/floatingwidget/ui/callapp/CallAppChatHeadLifecycleObserverManager.class */
public class CallAppChatHeadLifecycleObserverManager implements ManagedLifecycle {

    /* renamed from: a  reason: collision with root package name */
    public final Object f16741a = new Object();

    /* renamed from: b  reason: collision with root package name */
    public final CallAppChatHeadLifecycleObserver f16742b = new CallAppChatHeadLifecycleObserver();

    /* renamed from: c  reason: collision with root package name */
    public WeakReference<BaseActivity> f16743c;

    public static CallAppChatHeadLifecycleObserverManager get() {
        return Singletons.get().getCallAppChatHeadLifecycleObserverManager();
    }

    public final void a() {
        if (isRegisteredActivity()) {
            CallAppChatHeadLifecycleObserver.a();
        }
    }

    @Override // com.callapp.contacts.manager.ManagedLifecycle
    public void destroy() {
    }

    @Override // com.callapp.contacts.manager.ManagedLifecycle
    public void init() {
    }

    public boolean isRegisteredActivity() {
        WeakReference<BaseActivity> weakReference = this.f16743c;
        return (weakReference == null || weakReference.get() == null) ? false : true;
    }
}
