package com.google.firebase.components;

import com.google.firebase.events.Event;
import com.google.firebase.events.EventHandler;
import java.util.Map;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2-dex2jar.jar:com/google/firebase/components/EventBus$$Lambda$1.class */
public final /* synthetic */ class EventBus$$Lambda$1 implements Runnable {
    private final Map.Entry arg$1;
    private final Event arg$2;

    private EventBus$$Lambda$1(Map.Entry entry, Event event) {
        this.arg$1 = entry;
        this.arg$2 = event;
    }

    public static Runnable lambdaFactory$(Map.Entry entry, Event event) {
        return new EventBus$$Lambda$1(entry, event);
    }

    @Override // java.lang.Runnable
    public void run() {
        ((EventHandler) this.arg$1.getKey()).handle(this.arg$2);
    }
}
