package com.callapp.contacts.loader.api;

import com.callapp.contacts.event.Callback;
import com.callapp.framework.AggregatedException;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.atomic.AtomicInteger;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/loader/api/CountDownCallback.class */
public class CountDownCallback<T> implements Callback<T> {

    /* renamed from: a */
    private final AtomicInteger f25319a;

    /* renamed from: b */
    private final Callback<T> f25320b;

    /* renamed from: c */
    private List<Throwable> f25321c;

    public CountDownCallback(int i, Callback<T> callback) {
        this.f25320b = callback;
        this.f25319a = new AtomicInteger(i);
    }

    @Override // com.callapp.contacts.event.Callback
    /* renamed from: a */
    public final void mo28871a(T t) {
        if (this.f25319a.decrementAndGet() == 0) {
            List<Throwable> list = this.f25321c;
            if (list == null || list.isEmpty()) {
                this.f25320b.mo28871a(t);
            } else {
                this.f25320b.mo28870a(t, new AggregatedException(this.f25321c));
            }
        }
    }

    @Override // com.callapp.contacts.event.Callback
    /* renamed from: a */
    public final void mo28870a(T t, Exception exc) {
        RuntimeException runtimeException = exc;
        if (exc == null) {
            runtimeException = new RuntimeException("Unknown error");
        }
        synchronized (this) {
            if (this.f25321c == null) {
                this.f25321c = new ArrayList();
            }
            this.f25321c.add(runtimeException);
        }
        mo28871a(t);
    }
}
