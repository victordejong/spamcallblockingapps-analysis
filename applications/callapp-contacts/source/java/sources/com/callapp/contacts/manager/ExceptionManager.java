package com.callapp.contacts.manager;

import com.callapp.contacts.model.Constants;
import com.callapp.contacts.util.CLog;
import com.callapp.framework.util.StringUtils;
import java.io.IOException;
import java.util.Queue;
import java.util.concurrent.ConcurrentLinkedQueue;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/manager/ExceptionManager.class */
public class ExceptionManager implements ManagedLifecycle {

    /* renamed from: a */
    public boolean f25664a = false;

    /* renamed from: b */
    public Queue<Long> f25665b;

    /* renamed from: a */
    public final void m28679a(Class cls, IOException iOException) {
        m28678a(cls, iOException, iOException.getClass().getSimpleName(), new Object[0]);
    }

    /* renamed from: a */
    public final void m28678a(Class cls, IOException iOException, String str, Object... objArr) {
        synchronized (this) {
            long currentTimeMillis = System.currentTimeMillis();
            Long peek = this.f25665b.peek();
            while (peek != null && currentTimeMillis - Constants.MINUTE_IN_MILLIS > peek.longValue()) {
                this.f25665b.remove();
                peek = this.f25665b.peek();
            }
            this.f25665b.add(Long.valueOf(currentTimeMillis));
            if (this.f25665b.size() > 20) {
                this.f25664a = true;
            } else {
                this.f25664a = false;
            }
            CLog.m27600a("ExceptionManager > " + StringUtils.m26058a(cls), iOException, str + ": " + iOException.getMessage(), objArr);
        }
    }

    @Override // com.callapp.contacts.manager.ManagedLifecycle
    public void destroy() {
        this.f25665b = null;
    }

    @Override // com.callapp.contacts.manager.ManagedLifecycle
    public void init() {
        this.f25665b = new ConcurrentLinkedQueue();
    }

    public boolean isInternetIsDown() {
        return this.f25664a;
    }
}
