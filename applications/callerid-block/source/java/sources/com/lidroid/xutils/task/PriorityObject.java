package com.lidroid.xutils.task;
/* loaded from: classes2-dex2jar.jar:com/lidroid/xutils/task/PriorityObject.class */
public class PriorityObject<E> {
    public final E obj;
    public final Priority priority;

    public PriorityObject(Priority priority, E e) {
        this.priority = priority == null ? Priority.DEFAULT : priority;
        this.obj = e;
    }
}
