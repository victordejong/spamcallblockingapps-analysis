package com.appsflyer.internal;

import android.content.Context;
import java.util.HashMap;
import java.util.Map;
import java.util.Observable;
import java.util.Observer;
/* renamed from: com.appsflyer.internal.cl */
/* loaded from: classes-dex2jar.jar:com/appsflyer/internal/cl.class */
public abstract class AbstractC0797cl extends Observable {
    private long AFInAppEventParameterName;
    public final String AFInAppEventType;
    public final Runnable AFKeystoreWrapper;
    public final Map<String, Object> values = new HashMap();
    public EnumC0799a valueOf = EnumC0799a.NOT_STARTED;

    /* renamed from: com.appsflyer.internal.cl$a */
    /* loaded from: classes-dex2jar.jar:com/appsflyer/internal/cl$a.class */
    public enum EnumC0799a {
        NOT_STARTED,
        STARTED,
        FINISHED
    }

    public AbstractC0797cl(String str, Runnable runnable) {
        this.AFKeystoreWrapper = runnable;
        this.AFInAppEventType = str;
    }

    public final void AFInAppEventType() {
        this.AFInAppEventParameterName = System.currentTimeMillis();
        this.valueOf = EnumC0799a.STARTED;
        addObserver(new Observer() { // from class: com.appsflyer.internal.cl.2
            @Override // java.util.Observer
            public final void update(Observable observable, Object obj) {
                AbstractC0797cl.this.AFKeystoreWrapper.run();
            }
        });
    }

    public final void AFKeystoreWrapper() {
        this.values.put("source", this.AFInAppEventType);
        this.values.putAll(new C0794ci());
        this.values.put("latency", Long.valueOf(System.currentTimeMillis() - this.AFInAppEventParameterName));
        this.valueOf = EnumC0799a.FINISHED;
        setChanged();
        notifyObservers();
    }

    public abstract void AFKeystoreWrapper(Context context);
}
