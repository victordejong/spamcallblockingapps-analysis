package com.lidroid.xutils.task;
/* loaded from: classes2-dex2jar.jar:com/lidroid/xutils/task/Node.class */
class Node<T> {
    Node<T> next;
    private PriorityObject<?> value;
    private boolean valueAsT = false;

    /* JADX INFO: Access modifiers changed from: package-private */
    public Node(T t) {
        setValue(t);
    }

    public Priority getPriority() {
        return this.value.priority;
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [com.lidroid.xutils.task.PriorityObject<?>, T, com.lidroid.xutils.task.PriorityObject] */
    /* JADX WARN: Unknown variable types count: 1 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public T getValue() {
        /*
            r2 = this;
            r0 = r2
            com.lidroid.xutils.task.PriorityObject<?> r0 = r0.value
            r3 = r0
            r0 = r3
            if (r0 != 0) goto L_0x000b
            r0 = 0
            return r0
        L_0x000b:
            r0 = r2
            boolean r0 = r0.valueAsT
            if (r0 == 0) goto L_0x0014
            r0 = r3
            return r0
        L_0x0014:
            r0 = r3
            E r0 = r0.obj
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.lidroid.xutils.task.Node.getValue():java.lang.Object");
    }

    public void setValue(T t) {
        if (t == null) {
            this.value = null;
        } else if (t instanceof PriorityObject) {
            this.value = (PriorityObject) t;
            this.valueAsT = true;
        } else {
            this.value = new PriorityObject<>(Priority.DEFAULT, t);
        }
    }
}
