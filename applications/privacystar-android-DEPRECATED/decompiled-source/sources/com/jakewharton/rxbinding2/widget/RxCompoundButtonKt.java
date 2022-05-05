package com.jakewharton.rxbinding2.widget;

import android.widget.CompoundButton;
import com.jakewharton.rxbinding2.InitialValueObservable;
import com.privacystar.core.data.sqlite.p008db.blocking_options.BlockingOptionsContract;
import io.reactivex.functions.Consumer;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
@Metadata(m256bv = {1, 0, 0}, m255d1 = {"��\u001c\n��\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010��\n��\u001a\u0015\u0010��\u001a\n\u0012\u0006\b��\u0012\u00020\u00020\u0001*\u00020\u0003H\u0086\b\u001a\u0013\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00020\u0005*\u00020\u0003H\u0086\b\u001a\u0015\u0010\u0006\u001a\n\u0012\u0006\b��\u0012\u00020\u00070\u0001*\u00020\u0003H\u0086\b¨\u0006\b"}, m254d2 = {BlockingOptionsContract.BlockingOptionsEntry.COLUMN_CHECKED, "Lio/reactivex/functions/Consumer;", "", "Landroid/widget/CompoundButton;", "checkedChanges", "Lcom/jakewharton/rxbinding2/InitialValueObservable;", "toggle", "", "rxbinding2-kotlin"}, m253k = 2, m252mv = {1, 1, 1})
/* loaded from: classes-dex2jar.jar:com/jakewharton/rxbinding2/widget/RxCompoundButtonKt.class */
public final class RxCompoundButtonKt {
    @NotNull
    public static final Consumer<? super Boolean> checked(@NotNull CompoundButton receiver) {
        Intrinsics.checkParameterIsNotNull(receiver, "$receiver");
        Consumer<? super Boolean> checked = RxCompoundButton.checked(receiver);
        Intrinsics.checkExpressionValueIsNotNull(checked, "RxCompoundButton.checked(this)");
        return checked;
    }

    @NotNull
    public static final InitialValueObservable<Boolean> checkedChanges(@NotNull CompoundButton receiver) {
        Intrinsics.checkParameterIsNotNull(receiver, "$receiver");
        InitialValueObservable<Boolean> checkedChanges = RxCompoundButton.checkedChanges(receiver);
        Intrinsics.checkExpressionValueIsNotNull(checkedChanges, "RxCompoundButton.checkedChanges(this)");
        return checkedChanges;
    }

    @NotNull
    public static final Consumer<? super Object> toggle(@NotNull CompoundButton receiver) {
        Intrinsics.checkParameterIsNotNull(receiver, "$receiver");
        Consumer<? super Object> consumer = RxCompoundButton.toggle(receiver);
        Intrinsics.checkExpressionValueIsNotNull(consumer, "RxCompoundButton.toggle(this)");
        return consumer;
    }
}
