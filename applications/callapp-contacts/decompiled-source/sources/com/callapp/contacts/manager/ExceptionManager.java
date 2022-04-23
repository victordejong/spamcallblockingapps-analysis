package com.callapp.contacts.manager;

import com.callapp.contacts.model.Constants;
import com.callapp.contacts.util.CLog;
import com.callapp.framework.util.StringUtils;
import java.io.IOException;
import java.util.Queue;
import java.util.concurrent.ConcurrentLinkedQueue;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/manager/ExceptionManager.class */
public class ExceptionManager implements ManagedLifecycle {

    /* renamed from: a  reason: collision with root package name */
    public boolean f14838a = false;

    /* renamed from: b  reason: collision with root package name */
    public Queue<Long> f14839b;

    public final void a(Class cls, IOException iOException) {
        a(cls, iOException, iOException.getClass().getSimpleName(), new Object[0]);
    }

    public final void a(Class cls, IOException iOException, String str, Object... objArr) {
        synchronized (this) {
            long currentTimeMillis = System.currentTimeMillis();
            Long peek = this.f14839b.peek();
            while (peek != null && currentTimeMillis - Constants.MINUTE_IN_MILLIS > peek.longValue()) {
                this.f14839b.remove();
                peek = this.f14839b.peek();
            }
            this.f14839b.add(Long.valueOf(currentTimeMillis));
            if (this.f14839b.size() > 20) {
                this.f14838a = true;
            } else {
                this.f14838a = false;
            }
            CLog.a("ExceptionManager > " + StringUtils.a(cls), iOException, str + ": " + iOException.getMessage(), objArr);
        }
    }

    @Override // com.callapp.contacts.manager.ManagedLifecycle
    public void destroy() {
        this.f14839b = null;
    }

    @Override // com.callapp.contacts.manager.ManagedLifecycle
    public void init() {
        this.f14839b = new ConcurrentLinkedQueue();
    }

    public boolean isInternetIsDown() {
        return this.f14838a;
    }
}
