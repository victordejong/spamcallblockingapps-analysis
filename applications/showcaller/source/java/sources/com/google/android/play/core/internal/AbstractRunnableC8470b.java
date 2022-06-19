package com.google.android.play.core.internal;

import com.google.android.play.core.tasks.C8581m;
/* renamed from: com.google.android.play.core.internal.b */
/* loaded from: classes2-dex2jar.jar:com/google/android/play/core/internal/b.class */
public abstract class AbstractRunnableC8470b implements Runnable {

    /* renamed from: d */
    private final C8581m<?> f38025d;

    public AbstractRunnableC8470b() {
        this.f38025d = null;
    }

    public AbstractRunnableC8470b(C8581m<?> c8581m) {
        this.f38025d = c8581m;
    }

    /* renamed from: a */
    protected abstract void mo3507a();

    /* renamed from: b */
    public final void m3559b(Exception exc) {
        C8581m<?> c8581m = this.f38025d;
        if (c8581m != null) {
            c8581m.m3312d(exc);
        }
    }

    /* renamed from: c */
    public final C8581m<?> m3558c() {
        return this.f38025d;
    }

    @Override // java.lang.Runnable
    public final void run() {
        try {
            mo3507a();
        } catch (Exception e) {
            m3559b(e);
        }
    }
}
