package io.reactivex.disposables;

import io.reactivex.annotations.NonNull;
import io.reactivex.functions.Action;
import io.reactivex.internal.util.ExceptionHelper;
/* loaded from: classes-dex2jar.jar:io/reactivex/disposables/ActionDisposable.class */
final class ActionDisposable extends ReferenceDisposable<Action> {
    private static final long serialVersionUID = -8219729196779211169L;

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: b */
    public void mo4437a(@NonNull Action action) {
        try {
            action.run();
        } catch (Throwable th) {
            throw ExceptionHelper.m3434e(th);
        }
    }
}
