package com.callapp.contacts.observers;

import android.database.ContentObserver;
import android.os.Handler;
import java.util.ArrayList;
import java.util.Iterator;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/observers/CallAppContentObserver.class */
public abstract class CallAppContentObserver extends ContentObserver {

    /* renamed from: a  reason: collision with root package name */
    private Handler f15278a;

    /* renamed from: b  reason: collision with root package name */
    private final ArrayList<ContentObserverListener> f15279b = new ArrayList<>(1);

    /* renamed from: c  reason: collision with root package name */
    private boolean f15280c = true;

    /* renamed from: d  reason: collision with root package name */
    private final Runnable f15281d = new Runnable() { // from class: com.callapp.contacts.observers._$$Lambda$CallAppContentObserver$p8szfzDn9sJHralWAdgF7LcyvOE
        @Override // java.lang.Runnable
        public final void run() {
            CallAppContentObserver.this.a();
        }
    };

    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/observers/CallAppContentObserver$ContentObserverListener.class */
    public interface ContentObserverListener {
        void onContentChanged();
    }

    public CallAppContentObserver(Handler handler) {
        super(handler);
        this.f15278a = handler;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a() {
        this.f15280c = true;
        Runnable b2 = b();
        if (b2 != null) {
            b2.run();
        }
        synchronized (this.f15279b) {
            Iterator<ContentObserverListener> it2 = this.f15279b.iterator();
            while (it2.hasNext()) {
                it2.next().onContentChanged();
            }
        }
    }

    public final void a(ContentObserverListener contentObserverListener) {
        synchronized (this.f15279b) {
            this.f15279b.add(contentObserverListener);
        }
    }

    protected abstract Runnable b();

    public final void b(ContentObserverListener contentObserverListener) {
        synchronized (this.f15279b) {
            this.f15279b.remove(contentObserverListener);
        }
    }

    @Override // android.database.ContentObserver
    public void onChange(boolean z) {
        super.onChange(z);
        if (this.f15280c) {
            this.f15278a.removeCallbacks(this.f15281d);
            this.f15278a.postDelayed(this.f15281d, 1000L);
            this.f15280c = false;
        }
    }
}
