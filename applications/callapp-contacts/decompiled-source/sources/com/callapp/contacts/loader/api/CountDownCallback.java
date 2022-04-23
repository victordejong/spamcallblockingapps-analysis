package com.callapp.contacts.loader.api;

import com.callapp.contacts.event.Callback;
import com.callapp.framework.AggregatedException;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.atomic.AtomicInteger;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/loader/api/CountDownCallback.class */
public class CountDownCallback<T> implements Callback<T> {

    /* renamed from: a  reason: collision with root package name */
    private final AtomicInteger f14532a;

    /* renamed from: b  reason: collision with root package name */
    private final Callback<T> f14533b;

    /* renamed from: c  reason: collision with root package name */
    private List<Throwable> f14534c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public CountDownCallback(int i, Callback<T> callback) {
        this.f14533b = callback;
        this.f14532a = new AtomicInteger(i);
    }

    @Override // com.callapp.contacts.event.Callback
    public final void a(T t) {
        if (this.f14532a.decrementAndGet() == 0) {
            List<Throwable> list = this.f14534c;
            if (list == null || list.isEmpty()) {
                this.f14533b.a(t);
            } else {
                this.f14533b.a(t, new AggregatedException(this.f14534c));
            }
        }
    }

    @Override // com.callapp.contacts.event.Callback
    public final void a(T t, Exception exc) {
        Exception exc2 = exc;
        if (exc == null) {
            exc2 = new RuntimeException("Unknown error");
        }
        synchronized (this) {
            if (this.f14534c == null) {
                this.f14534c = new ArrayList();
            }
            this.f14534c.add(exc2);
        }
        a(t);
    }
}
