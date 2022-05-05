package com.jakewharton.rxbinding2.widget;

import android.widget.RadioGroup;
import com.jakewharton.rxbinding2.InitialValueObservable;
import com.privacystar.core.data.sqlite.p008db.blocking_options.BlockingOptionsContract;
import io.reactivex.functions.Consumer;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
@Metadata(m256bv = {1, 0, 0}, m255d1 = {"��\u0016\n��\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\u001a\u0015\u0010��\u001a\n\u0012\u0006\b��\u0012\u00020\u00020\u0001*\u00020\u0003H\u0086\b\u001a\u0013\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00020\u0005*\u00020\u0003H\u0086\b¨\u0006\u0006"}, m254d2 = {BlockingOptionsContract.BlockingOptionsEntry.COLUMN_CHECKED, "Lio/reactivex/functions/Consumer;", "", "Landroid/widget/RadioGroup;", "checkedChanges", "Lcom/jakewharton/rxbinding2/InitialValueObservable;", "rxbinding2-kotlin"}, m253k = 2, m252mv = {1, 1, 1})
/* loaded from: classes-dex2jar.jar:com/jakewharton/rxbinding2/widget/RxRadioGroupKt.class */
public final class RxRadioGroupKt {
    @NotNull
    public static final Consumer<? super Integer> checked(@NotNull RadioGroup receiver) {
        Intrinsics.checkParameterIsNotNull(receiver, "$receiver");
        Consumer<? super Integer> checked = RxRadioGroup.checked(receiver);
        Intrinsics.checkExpressionValueIsNotNull(checked, "RxRadioGroup.checked(this)");
        return checked;
    }

    @NotNull
    public static final InitialValueObservable<Integer> checkedChanges(@NotNull RadioGroup receiver) {
        Intrinsics.checkParameterIsNotNull(receiver, "$receiver");
        InitialValueObservable<Integer> checkedChanges = RxRadioGroup.checkedChanges(receiver);
        Intrinsics.checkExpressionValueIsNotNull(checkedChanges, "RxRadioGroup.checkedChanges(this)");
        return checkedChanges;
    }
}
