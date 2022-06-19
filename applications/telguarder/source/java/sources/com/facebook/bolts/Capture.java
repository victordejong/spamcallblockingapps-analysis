package com.facebook.bolts;
/* loaded from: classes-dex2jar.jar:com/facebook/bolts/Capture.class */
public class Capture<T> {
    private T value;

    public Capture() {
    }

    public Capture(T t) {
        this.value = t;
    }

    public T get() {
        return this.value;
    }

    public void set(T t) {
        this.value = t;
    }
}
