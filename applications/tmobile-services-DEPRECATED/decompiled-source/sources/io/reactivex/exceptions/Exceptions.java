package io.reactivex.exceptions;

import io.reactivex.annotations.NonNull;
import io.reactivex.internal.util.ExceptionHelper;
/* loaded from: classes-dex2jar.jar:io/reactivex/exceptions/Exceptions.class */
public final class Exceptions {
    private Exceptions() {
        throw new IllegalStateException("No instances!");
    }

    @NonNull
    /* renamed from: a */
    public static RuntimeException m4429a(@NonNull Throwable th) {
        throw ExceptionHelper.m3434e(th);
    }

    /* renamed from: b */
    public static void m4428b(@NonNull Throwable th) {
        if (th instanceof VirtualMachineError) {
            throw ((VirtualMachineError) th);
        } else if (th instanceof ThreadDeath) {
            throw ((ThreadDeath) th);
        } else if (th instanceof LinkageError) {
            throw ((LinkageError) th);
        }
    }
}
