package com.fasterxml.jackson.databind.util;
/* loaded from: classes3-dex2jar.jar:com/fasterxml/jackson/databind/util/LinkedNode.class */
public final class LinkedNode<T> {
    private LinkedNode<T> next;
    private final T value;

    public LinkedNode(T t, LinkedNode<T> linkedNode) {
        this.value = t;
        this.next = linkedNode;
    }

    public static <ST> boolean contains(LinkedNode<ST> linkedNode, ST st) {
        while (linkedNode != null) {
            if (linkedNode.value() == st) {
                return true;
            }
            linkedNode = linkedNode.next();
        }
        return false;
    }

    public final void linkNext(LinkedNode<T> linkedNode) {
        if (this.next == null) {
            this.next = linkedNode;
            return;
        }
        throw new IllegalStateException();
    }

    public final LinkedNode<T> next() {
        return this.next;
    }

    public final T value() {
        return this.value;
    }
}
