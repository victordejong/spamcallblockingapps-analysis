package com.jakewharton.rxbinding2.widget;

import android.widget.TextSwitcher;
import io.reactivex.functions.Consumer;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
@Metadata(m256bv = {1, 0, 0}, m255d1 = {"��\u0012\n��\n\u0002\u0018\u0002\n\u0002\u0010\r\n\u0002\u0018\u0002\n\u0002\b\u0002\u001a\u0015\u0010��\u001a\n\u0012\u0006\b��\u0012\u00020\u00020\u0001*\u00020\u0003H\u0086\b\u001a\u0015\u0010\u0004\u001a\n\u0012\u0006\b��\u0012\u00020\u00020\u0001*\u00020\u0003H\u0086\b¨\u0006\u0005"}, m254d2 = {"currentText", "Lio/reactivex/functions/Consumer;", "", "Landroid/widget/TextSwitcher;", "text", "rxbinding2-kotlin"}, m253k = 2, m252mv = {1, 1, 1})
/* loaded from: classes-dex2jar.jar:com/jakewharton/rxbinding2/widget/RxTextSwitcherKt.class */
public final class RxTextSwitcherKt {
    @NotNull
    public static final Consumer<? super CharSequence> currentText(@NotNull TextSwitcher receiver) {
        Intrinsics.checkParameterIsNotNull(receiver, "$receiver");
        Consumer<? super CharSequence> currentText = RxTextSwitcher.currentText(receiver);
        Intrinsics.checkExpressionValueIsNotNull(currentText, "RxTextSwitcher.currentText(this)");
        return currentText;
    }

    @NotNull
    public static final Consumer<? super CharSequence> text(@NotNull TextSwitcher receiver) {
        Intrinsics.checkParameterIsNotNull(receiver, "$receiver");
        Consumer<? super CharSequence> text = RxTextSwitcher.text(receiver);
        Intrinsics.checkExpressionValueIsNotNull(text, "RxTextSwitcher.text(this)");
        return text;
    }
}
