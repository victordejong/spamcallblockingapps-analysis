package io.reactivex.internal.util;

import java.util.concurrent.atomic.AtomicReference;
/* loaded from: classes2-dex2jar.jar:io/reactivex/internal/util/AtomicThrowable.class */
public final class AtomicThrowable extends AtomicReference<Throwable> {
    private static final long serialVersionUID = 3949248817947090603L;

    /* renamed from: a */
    public boolean m3456a(Throwable th) {
        return ExceptionHelper.m3438a(this, th);
    }

    /* renamed from: b */
    public Throwable m3455b() {
        return ExceptionHelper.m3437b(this);
    }
}
