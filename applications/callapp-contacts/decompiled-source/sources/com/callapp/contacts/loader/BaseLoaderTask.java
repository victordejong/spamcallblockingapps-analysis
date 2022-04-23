package com.callapp.contacts.loader;

import com.callapp.contacts.loader.api.ContactDataLoader;
import com.callapp.contacts.loader.api.LoadContext;
import com.callapp.contacts.loader.social.QuotaReachedException;
import com.callapp.contacts.loader.social.UnauthorizedAccessErrorException;
import com.callapp.contacts.manager.task.Task;
import com.callapp.contacts.util.CLog;
import com.callapp.framework.util.StringUtils;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/loader/BaseLoaderTask.class */
public abstract class BaseLoaderTask extends Task {

    /* renamed from: a  reason: collision with root package name */
    protected final LoadContext f14431a;

    /* renamed from: b  reason: collision with root package name */
    private final Class<? extends ContactDataLoader> f14432b;

    public BaseLoaderTask(ContactDataLoader contactDataLoader, LoadContext loadContext) {
        this.f14432b = contactDataLoader.getClass();
        this.f14431a = loadContext;
    }

    @Override // com.callapp.contacts.manager.task.Task
    public void onError(Throwable th) {
        if (th instanceof QuotaReachedException) {
            CLog.a(getClass(), "Quota reached (Loader=%s, Task=%s", StringUtils.a(this.f14432b), getClass().getName());
            this.f14431a.a(this.f14432b, th);
        } else if (th instanceof UnauthorizedAccessErrorException) {
            CLog.a(getClass(), "UnauthorizedAccessErrorException (Loader=%s, Task=%s", StringUtils.a(this.f14432b), getClass().getName());
            this.f14431a.a(this.f14432b, th);
        } else {
            super.onError(th);
        }
    }

    @Override // com.callapp.contacts.manager.task.Task, java.lang.Runnable
    public void run() {
        if (!this.f14431a.a(this.f14432b) && !this.f14431a.isStopped()) {
            super.run();
        }
    }
}
