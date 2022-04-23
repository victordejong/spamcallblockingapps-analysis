package com.callapp.contacts.manager.task;

import com.callapp.contacts.manager.task.Task;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/manager/task/DoneCountNotifier.class */
public class DoneCountNotifier implements Task.DoneListener {

    /* renamed from: a  reason: collision with root package name */
    private final int f15268a;

    /* renamed from: b  reason: collision with root package name */
    private int f15269b = 0;

    /* renamed from: c  reason: collision with root package name */
    private final Task.DoneListener f15270c;

    public DoneCountNotifier(int i, Task.DoneListener doneListener) {
        this.f15268a = i;
        this.f15270c = doneListener;
    }

    @Override // com.callapp.contacts.manager.task.Task.DoneListener
    public void onDone() {
        int i = this.f15269b + 1;
        this.f15269b = i;
        Task.DoneListener doneListener = this.f15270c;
        if (doneListener != null && i == this.f15268a) {
            doneListener.onDone();
        }
    }
}
