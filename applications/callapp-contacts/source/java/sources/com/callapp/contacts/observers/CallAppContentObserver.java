package com.callapp.contacts.observers;

import android.database.ContentObserver;
import android.os.Handler;
import java.util.ArrayList;
import java.util.Iterator;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/observers/CallAppContentObserver.class */
public abstract class CallAppContentObserver extends ContentObserver {

    /* renamed from: a */
    private Handler f26821a;

    /* renamed from: b */
    private final ArrayList<ContentObserverListener> f26822b = new ArrayList<>(1);

    /* renamed from: c */
    private boolean f26823c = true;

    /* renamed from: d */
    private final Runnable f26824d = new Runnable() { // from class: com.callapp.contacts.observers._$$Lambda$CallAppContentObserver$p8szfzDn9sJHralWAdgF7LcyvOE
        @Override // java.lang.Runnable
        public final void run() {
            CallAppContentObserver.this.m28110a();
        }
    };

    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/observers/CallAppContentObserver$ContentObserverListener.class */
    public interface ContentObserverListener {
        void onContentChanged();
    }

    public CallAppContentObserver(Handler handler) {
        super(handler);
        this.f26821a = handler;
    }

    /* renamed from: a */
    public /* synthetic */ void m28110a() {
        this.f26823c = true;
        Runnable mo28080b = mo28080b();
        if (mo28080b != null) {
            mo28080b.run();
        }
        synchronized (this.f26822b) {
            Iterator<ContentObserverListener> it2 = this.f26822b.iterator();
            while (it2.hasNext()) {
                it2.next().onContentChanged();
            }
        }
    }

    /* renamed from: a */
    public final void m28109a(ContentObserverListener contentObserverListener) {
        synchronized (this.f26822b) {
            this.f26822b.add(contentObserverListener);
        }
    }

    /* renamed from: b */
    protected abstract Runnable mo28080b();

    /* renamed from: b */
    public final void m28108b(ContentObserverListener contentObserverListener) {
        synchronized (this.f26822b) {
            this.f26822b.remove(contentObserverListener);
        }
    }

    @Override // android.database.ContentObserver
    public void onChange(boolean z) {
        super.onChange(z);
        if (this.f26823c) {
            this.f26821a.removeCallbacks(this.f26824d);
            this.f26821a.postDelayed(this.f26824d, 1000L);
            this.f26823c = false;
        }
    }
}
