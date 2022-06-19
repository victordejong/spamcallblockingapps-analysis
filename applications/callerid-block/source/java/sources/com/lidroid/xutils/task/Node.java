package com.lidroid.xutils.task;
/* loaded from: classes2-dex2jar.jar:com/lidroid/xutils/task/Node.class */
class Node<T> {
    Node<T> next;
    private PriorityObject<?> value;
    private boolean valueAsT = false;

    public Node(T t) {
        setValue(t);
    }

    public Priority getPriority() {
        return this.value.priority;
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [com.lidroid.xutils.task.PriorityObject<?>, T, com.lidroid.xutils.task.PriorityObject] */
    public T getValue() {
        ?? r0 = (T) this.value;
        if (r0 == 0) {
            return null;
        }
        return this.valueAsT ? r0 : (T) r0.obj;
    }

    public void setValue(T t) {
        if (t == null) {
            this.value = null;
        } else if (!(t instanceof PriorityObject)) {
            this.value = new PriorityObject<>(Priority.DEFAULT, t);
        } else {
            this.value = (PriorityObject) t;
            this.valueAsT = true;
        }
    }
}
