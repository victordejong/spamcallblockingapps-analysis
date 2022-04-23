package io.realm.internal;

import java.lang.ref.ReferenceQueue;
/* loaded from: classes2-dex2jar.jar:io/realm/internal/NativeContext.class */
public class NativeContext {

    /* renamed from: a */
    private static final ReferenceQueue<NativeObject> f20095a = new ReferenceQueue<>();

    /* renamed from: b */
    private static final Thread f20096b = new Thread(new FinalizerRunnable(f20095a));

    /* renamed from: c */
    public static final NativeContext f20097c = new NativeContext();

    static {
        f20096b.setName("RealmFinalizingDaemon");
        f20096b.start();
    }

    /* renamed from: a */
    public void m2829a(NativeObject nativeObject) {
        new NativeObjectReference(this, nativeObject, f20095a);
    }
}
