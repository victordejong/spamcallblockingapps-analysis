package com.jakewharton.rxbinding2.widget;

import android.widget.Adapter;
import com.jakewharton.rxbinding2.InitialValueObservable;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
@Metadata(m256bv = {1, 0, 0}, m255d1 = {"��\u0010\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\u001a\"\u0010��\u001a\b\u0012\u0004\u0012\u0002H\u00020\u0001\"\b\b��\u0010\u0002*\u00020\u0003*\u0002H\u0002H\u0086\b¢\u0006\u0002\u0010\u0004¨\u0006\u0005"}, m254d2 = {"dataChanges", "Lcom/jakewharton/rxbinding2/InitialValueObservable;", "T", "Landroid/widget/Adapter;", "(Landroid/widget/Adapter;)Lcom/jakewharton/rxbinding2/InitialValueObservable;", "rxbinding2-kotlin"}, m253k = 2, m252mv = {1, 1, 1})
/* loaded from: classes-dex2jar.jar:com/jakewharton/rxbinding2/widget/RxAdapterKt.class */
public final class RxAdapterKt {
    @NotNull
    public static final <T extends Adapter> InitialValueObservable<T> dataChanges(@NotNull T receiver) {
        Intrinsics.checkParameterIsNotNull(receiver, "$receiver");
        InitialValueObservable<T> dataChanges = RxAdapter.dataChanges(receiver);
        Intrinsics.checkExpressionValueIsNotNull(dataChanges, "RxAdapter.dataChanges(this)");
        return dataChanges;
    }
}
