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

    /* renamed from: a */
    protected final LoadContext f25214a;

    /* renamed from: b */
    private final Class<? extends ContactDataLoader> f25215b;

    public BaseLoaderTask(ContactDataLoader contactDataLoader, LoadContext loadContext) {
        this.f25215b = contactDataLoader.getClass();
        this.f25214a = loadContext;
    }

    @Override // com.callapp.contacts.manager.task.Task
    public void onError(Throwable th) {
        if (th instanceof QuotaReachedException) {
            CLog.m27610a(getClass(), "Quota reached (Loader=%s, Task=%s", StringUtils.m26058a(this.f25215b), getClass().getName());
            this.f25214a.m28864a(this.f25215b, th);
        } else if (!(th instanceof UnauthorizedAccessErrorException)) {
            super.onError(th);
        } else {
            CLog.m27610a(getClass(), "UnauthorizedAccessErrorException (Loader=%s, Task=%s", StringUtils.m26058a(this.f25215b), getClass().getName());
            this.f25214a.m28864a(this.f25215b, th);
        }
    }

    @Override // com.callapp.contacts.manager.task.Task, java.lang.Runnable
    public void run() {
        if (this.f25214a.m28865a(this.f25215b) || this.f25214a.isStopped()) {
            return;
        }
        super.run();
    }
}
