package com.jakewharton.rxbinding2.widget;

import android.widget.SeekBar;
import com.jakewharton.rxbinding2.InitialValueObservable;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
@Metadata(m256bv = {1, 0, 0}, m255d1 = {"��\u0018\n��\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010\b\n\u0002\b\u0003\u001a\u0013\u0010��\u001a\b\u0012\u0004\u0012\u00020\u00020\u0001*\u00020\u0003H\u0086\b\u001a\u0013\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00050\u0001*\u00020\u0003H\u0086\b\u001a\u0013\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00050\u0001*\u00020\u0003H\u0086\b\u001a\u0013\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\u00050\u0001*\u00020\u0003H\u0086\b¨\u0006\b"}, m254d2 = {"changeEvents", "Lcom/jakewharton/rxbinding2/InitialValueObservable;", "Lcom/jakewharton/rxbinding2/widget/SeekBarChangeEvent;", "Landroid/widget/SeekBar;", "changes", "", "systemChanges", "userChanges", "rxbinding2-kotlin"}, m253k = 2, m252mv = {1, 1, 1})
/* loaded from: classes-dex2jar.jar:com/jakewharton/rxbinding2/widget/RxSeekBarKt.class */
public final class RxSeekBarKt {
    @NotNull
    public static final InitialValueObservable<SeekBarChangeEvent> changeEvents(@NotNull SeekBar receiver) {
        Intrinsics.checkParameterIsNotNull(receiver, "$receiver");
        InitialValueObservable<SeekBarChangeEvent> changeEvents = RxSeekBar.changeEvents(receiver);
        Intrinsics.checkExpressionValueIsNotNull(changeEvents, "RxSeekBar.changeEvents(this)");
        return changeEvents;
    }

    @NotNull
    public static final InitialValueObservable<Integer> changes(@NotNull SeekBar receiver) {
        Intrinsics.checkParameterIsNotNull(receiver, "$receiver");
        InitialValueObservable<Integer> changes = RxSeekBar.changes(receiver);
        Intrinsics.checkExpressionValueIsNotNull(changes, "RxSeekBar.changes(this)");
        return changes;
    }

    @NotNull
    public static final InitialValueObservable<Integer> systemChanges(@NotNull SeekBar receiver) {
        Intrinsics.checkParameterIsNotNull(receiver, "$receiver");
        InitialValueObservable<Integer> systemChanges = RxSeekBar.systemChanges(receiver);
        Intrinsics.checkExpressionValueIsNotNull(systemChanges, "RxSeekBar.systemChanges(this)");
        return systemChanges;
    }

    @NotNull
    public static final InitialValueObservable<Integer> userChanges(@NotNull SeekBar receiver) {
        Intrinsics.checkParameterIsNotNull(receiver, "$receiver");
        InitialValueObservable<Integer> userChanges = RxSeekBar.userChanges(receiver);
        Intrinsics.checkExpressionValueIsNotNull(userChanges, "RxSeekBar.userChanges(this)");
        return userChanges;
    }
}
