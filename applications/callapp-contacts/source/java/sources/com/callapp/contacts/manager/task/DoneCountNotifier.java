package com.callapp.contacts.manager.task;

import com.callapp.contacts.manager.task.Task;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/manager/task/DoneCountNotifier.class */
public class DoneCountNotifier implements Task.DoneListener {

    /* renamed from: a */
    private final int f26721a;

    /* renamed from: b */
    private int f26722b = 0;

    /* renamed from: c */
    private final Task.DoneListener f26723c;

    public DoneCountNotifier(int i, Task.DoneListener doneListener) {
        this.f26721a = i;
        this.f26723c = doneListener;
    }

    @Override // com.callapp.contacts.manager.task.Task.DoneListener
    public void onDone() {
        int i = this.f26722b + 1;
        this.f26722b = i;
        Task.DoneListener doneListener = this.f26723c;
        if (doneListener == null || i != this.f26721a) {
            return;
        }
        doneListener.onDone();
    }
}
