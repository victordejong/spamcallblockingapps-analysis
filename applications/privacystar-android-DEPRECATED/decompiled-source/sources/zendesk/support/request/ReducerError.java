package zendesk.support.request;

import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import zendesk.suas.Action;
import zendesk.suas.Reducer;
/* loaded from: classes3-dex2jar.jar:zendesk/support/request/ReducerError.class */
class ReducerError extends Reducer<StateError> {
    @Override // zendesk.suas.Reducer
    @NonNull
    public StateError getInitialState() {
        return new StateError();
    }

    @Override // zendesk.suas.Reducer
    @Nullable
    public /* bridge */ /* synthetic */ StateError reduce(@NonNull StateError stateError, @NonNull Action action) {
        return reduce2(stateError, (Action<?>) action);
    }

    /* JADX WARN: Removed duplicated region for block: B:38:0x0136  */
    /* JADX WARN: Removed duplicated region for block: B:42:0x0142  */
    /* JADX WARN: Removed duplicated region for block: B:46:0x0165  */
    /* JADX WARN: Removed duplicated region for block: B:48:0x016d A[ORIG_RETURN, RETURN] */
    @android.support.annotation.Nullable
    /* renamed from: reduce  reason: avoid collision after fix types in other method */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public zendesk.support.request.StateError reduce2(@android.support.annotation.NonNull zendesk.support.request.StateError r6, @android.support.annotation.NonNull zendesk.suas.Action<?> r7) {
        /*
            Method dump skipped, instructions count: 367
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: zendesk.support.request.ReducerError.reduce2(zendesk.support.request.StateError, zendesk.suas.Action):zendesk.support.request.StateError");
    }
}
