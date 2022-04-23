package com.jakewharton.rxbinding2.widget;

import android.widget.CheckedTextView;
import io.reactivex.functions.Consumer;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
@Metadata(m256bv = {1, 0, 0}, m255d1 = {"��\u0010\n��\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\u0018\u0002\n��\u001a\u0015\u0010��\u001a\n\u0012\u0006\b��\u0012\u00020\u00020\u0001*\u00020\u0003H\u0086\b¨\u0006\u0004"}, m254d2 = {"check", "Lio/reactivex/functions/Consumer;", "", "Landroid/widget/CheckedTextView;", "rxbinding2-kotlin"}, m253k = 2, m252mv = {1, 1, 1})
/* loaded from: classes-dex2jar.jar:com/jakewharton/rxbinding2/widget/RxCheckedTextViewKt.class */
public final class RxCheckedTextViewKt {
    @NotNull
    public static final Consumer<? super Boolean> check(@NotNull CheckedTextView receiver) {
        Intrinsics.checkParameterIsNotNull(receiver, "$receiver");
        Consumer<? super Boolean> check = RxCheckedTextView.check(receiver);
        Intrinsics.checkExpressionValueIsNotNull(check, "RxCheckedTextView.check(this)");
        return check;
    }
}
