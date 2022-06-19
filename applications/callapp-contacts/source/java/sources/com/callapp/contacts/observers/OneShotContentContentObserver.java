package com.callapp.contacts.observers;

import android.database.ContentObserver;
import android.net.Uri;
import com.callapp.contacts.CallAppApplication;
import com.callapp.contacts.manager.task.Task;
import com.callapp.contacts.observers.CallAppContentObserver;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/observers/OneShotContentContentObserver.class */
public class OneShotContentContentObserver extends ContentObserver {

    /* renamed from: a */
    private final CallAppContentObserver.ContentObserverListener f26853a;

    /* renamed from: b */
    private final boolean f26854b;

    public OneShotContentContentObserver(CallAppContentObserver.ContentObserverListener contentObserverListener, boolean z) {
        super(CallAppApplication.get().getHandler());
        this.f26853a = contentObserverListener;
        this.f26854b = z;
    }

    /* renamed from: a */
    public static OneShotContentContentObserver m28072a(Uri uri, CallAppContentObserver.ContentObserverListener contentObserverListener) {
        OneShotContentContentObserver oneShotContentContentObserver = new OneShotContentContentObserver(contentObserverListener, true);
        CallAppApplication.get().getContentResolver().registerContentObserver(uri, false, oneShotContentContentObserver);
        return oneShotContentContentObserver;
    }

    @Override // android.database.ContentObserver
    public void onChange(boolean z) {
        super.onChange(z);
        if (this.f26853a != null) {
            Task task = new Task() { // from class: com.callapp.contacts.observers.OneShotContentContentObserver.1
                @Override // com.callapp.contacts.manager.task.Task
                public void doTask() {
                    OneShotContentContentObserver.this.f26853a.onContentChanged();
                }
            };
            if (this.f26854b) {
                task.schedule(1000);
            } else {
                task.execute();
            }
        }
        CallAppApplication.get().getContentResolver().unregisterContentObserver(this);
    }
}
