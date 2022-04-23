package com.callapp.contacts.observers;

import android.database.ContentObserver;
import android.net.Uri;
import com.callapp.contacts.CallAppApplication;
import com.callapp.contacts.manager.task.Task;
import com.callapp.contacts.observers.CallAppContentObserver;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/observers/OneShotContentContentObserver.class */
public class OneShotContentContentObserver extends ContentObserver {

    /* renamed from: a  reason: collision with root package name */
    private final CallAppContentObserver.ContentObserverListener f15297a;

    /* renamed from: b  reason: collision with root package name */
    private final boolean f15298b;

    public OneShotContentContentObserver(CallAppContentObserver.ContentObserverListener contentObserverListener, boolean z) {
        super(CallAppApplication.get().getHandler());
        this.f15297a = contentObserverListener;
        this.f15298b = z;
    }

    public static OneShotContentContentObserver a(Uri uri, CallAppContentObserver.ContentObserverListener contentObserverListener) {
        OneShotContentContentObserver oneShotContentContentObserver = new OneShotContentContentObserver(contentObserverListener, true);
        CallAppApplication.get().getContentResolver().registerContentObserver(uri, false, oneShotContentContentObserver);
        return oneShotContentContentObserver;
    }

    @Override // android.database.ContentObserver
    public void onChange(boolean z) {
        super.onChange(z);
        if (this.f15297a != null) {
            Task task = new Task() { // from class: com.callapp.contacts.observers.OneShotContentContentObserver.1
                @Override // com.callapp.contacts.manager.task.Task
                public void doTask() {
                    OneShotContentContentObserver.this.f15297a.onContentChanged();
                }
            };
            if (this.f15298b) {
                task.schedule(1000);
            } else {
                task.execute();
            }
        }
        CallAppApplication.get().getContentResolver().unregisterContentObserver(this);
    }
}
