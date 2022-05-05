package p660rx.functions;

import p660rx.exceptions.OnErrorNotImplementedException;
/* renamed from: rx.functions.Actions */
/* loaded from: classes3-dex2jar.jar:rx/functions/Actions.class */
public final class Actions {
    public static final EmptyAction EMPTY_ACTION = new EmptyAction();

    /* renamed from: rx.functions.Actions$EmptyAction */
    /* loaded from: classes3-dex2jar.jar:rx/functions/Actions$EmptyAction.class */
    public static final class EmptyAction<T0, T1, T2, T3, T4, T5, T6, T7, T8> implements Action0, Action1<T0>, Action2<T0, T1>, Action3<T0, T1, T2>, Action4<T0, T1, T2, T3>, Action5<T0, T1, T2, T3, T4>, Action6<T0, T1, T2, T3, T4, T5>, Action7<T0, T1, T2, T3, T4, T5, T6>, Action8<T0, T1, T2, T3, T4, T5, T6, T7>, Action9<T0, T1, T2, T3, T4, T5, T6, T7, T8>, ActionN {
        @Override // p660rx.functions.Action0
        public void call() {
        }

        @Override // p660rx.functions.Action1
        public void call(T0 t0) {
        }
    }

    /* renamed from: rx.functions.Actions$NotImplemented */
    /* loaded from: classes3-dex2jar.jar:rx/functions/Actions$NotImplemented.class */
    public enum NotImplemented implements Action1<Throwable> {
        INSTANCE;

        @Override // p660rx.functions.Action1
        public /* bridge */ /* synthetic */ void call(Throwable th) {
            call2(th);
            throw null;
        }

        /* renamed from: call  reason: avoid collision after fix types in other method */
        public void call2(Throwable th) {
            throw new OnErrorNotImplementedException(th);
        }
    }

    public static <T0, T1, T2, T3, T4, T5, T6, T7, T8> EmptyAction<T0, T1, T2, T3, T4, T5, T6, T7, T8> empty() {
        return EMPTY_ACTION;
    }

    public static Action1<Throwable> errorNotImplemented() {
        return NotImplemented.INSTANCE;
    }
}
