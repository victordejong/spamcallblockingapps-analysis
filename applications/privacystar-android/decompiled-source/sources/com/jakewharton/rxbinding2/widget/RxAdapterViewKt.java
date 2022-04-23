package com.jakewharton.rxbinding2.widget;

import android.widget.Adapter;
import android.widget.AdapterView;
import com.jakewharton.rxbinding2.InitialValueObservable;
import io.reactivex.Observable;
import io.reactivex.functions.Consumer;
import io.reactivex.functions.Predicate;
import java.util.concurrent.Callable;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
@Metadata(m256bv = {1, 0, 0}, m255d1 = {"��D\n��\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010\b\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\u001a#\u0010��\u001a\b\u0012\u0004\u0012\u00020\u00020\u0001\"\b\b��\u0010\u0003*\u00020\u0004*\b\u0012\u0004\u0012\u0002H\u00030\u0005H\u0086\b\u001a#\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00070\u0001\"\b\b��\u0010\u0003*\u00020\u0004*\b\u0012\u0004\u0012\u0002H\u00030\u0005H\u0086\b\u001a#\u0010\b\u001a\b\u0012\u0004\u0012\u00020\t0\u0001\"\b\b��\u0010\u0003*\u00020\u0004*\b\u0012\u0004\u0012\u0002H\u00030\u0005H\u0086\b\u001a3\u0010\b\u001a\b\u0012\u0004\u0012\u00020\t0\u0001\"\b\b��\u0010\u0003*\u00020\u0004*\b\u0012\u0004\u0012\u0002H\u00030\u00052\u000e\u0010\n\u001a\n\u0012\u0006\b��\u0012\u00020\t0\u000bH\u0086\b\u001a#\u0010\f\u001a\b\u0012\u0004\u0012\u00020\u00070\u0001\"\b\b��\u0010\u0003*\u00020\u0004*\b\u0012\u0004\u0012\u0002H\u00030\u0005H\u0086\b\u001a1\u0010\f\u001a\b\u0012\u0004\u0012\u00020\u00070\u0001\"\b\b��\u0010\u0003*\u00020\u0004*\b\u0012\u0004\u0012\u0002H\u00030\u00052\f\u0010\n\u001a\b\u0012\u0004\u0012\u00020\u000e0\rH\u0086\b\u001a#\u0010\u000f\u001a\b\u0012\u0004\u0012\u00020\u00070\u0010\"\b\b��\u0010\u0003*\u00020\u0004*\b\u0012\u0004\u0012\u0002H\u00030\u0005H\u0086\b\u001a%\u0010\u0011\u001a\n\u0012\u0006\b��\u0012\u00020\u00070\u0012\"\b\b��\u0010\u0003*\u00020\u0004*\b\u0012\u0004\u0012\u0002H\u00030\u0005H\u0086\b\u001a#\u0010\u0013\u001a\b\u0012\u0004\u0012\u00020\u00140\u0010\"\b\b��\u0010\u0003*\u00020\u0004*\b\u0012\u0004\u0012\u0002H\u00030\u0005H\u0086\b¨\u0006\u0015"}, m254d2 = {"itemClickEvents", "Lio/reactivex/Observable;", "Lcom/jakewharton/rxbinding2/widget/AdapterViewItemClickEvent;", "T", "Landroid/widget/Adapter;", "Landroid/widget/AdapterView;", "itemClicks", "", "itemLongClickEvents", "Lcom/jakewharton/rxbinding2/widget/AdapterViewItemLongClickEvent;", "handled", "Lio/reactivex/functions/Predicate;", "itemLongClicks", "Ljava/util/concurrent/Callable;", "", "itemSelections", "Lcom/jakewharton/rxbinding2/InitialValueObservable;", "selection", "Lio/reactivex/functions/Consumer;", "selectionEvents", "Lcom/jakewharton/rxbinding2/widget/AdapterViewSelectionEvent;", "rxbinding2-kotlin"}, m253k = 2, m252mv = {1, 1, 1})
/* loaded from: classes-dex2jar.jar:com/jakewharton/rxbinding2/widget/RxAdapterViewKt.class */
public final class RxAdapterViewKt {
    @NotNull
    public static final <T extends Adapter> Observable<AdapterViewItemClickEvent> itemClickEvents(@NotNull AdapterView<T> receiver) {
        Intrinsics.checkParameterIsNotNull(receiver, "$receiver");
        Observable<AdapterViewItemClickEvent> itemClickEvents = RxAdapterView.itemClickEvents(receiver);
        Intrinsics.checkExpressionValueIsNotNull(itemClickEvents, "RxAdapterView.itemClickEvents(this)");
        return itemClickEvents;
    }

    @NotNull
    public static final <T extends Adapter> Observable<Integer> itemClicks(@NotNull AdapterView<T> receiver) {
        Intrinsics.checkParameterIsNotNull(receiver, "$receiver");
        Observable<Integer> itemClicks = RxAdapterView.itemClicks(receiver);
        Intrinsics.checkExpressionValueIsNotNull(itemClicks, "RxAdapterView.itemClicks(this)");
        return itemClicks;
    }

    @NotNull
    public static final <T extends Adapter> Observable<AdapterViewItemLongClickEvent> itemLongClickEvents(@NotNull AdapterView<T> receiver) {
        Intrinsics.checkParameterIsNotNull(receiver, "$receiver");
        Observable<AdapterViewItemLongClickEvent> itemLongClickEvents = RxAdapterView.itemLongClickEvents(receiver);
        Intrinsics.checkExpressionValueIsNotNull(itemLongClickEvents, "RxAdapterView.itemLongClickEvents(this)");
        return itemLongClickEvents;
    }

    @NotNull
    public static final <T extends Adapter> Observable<AdapterViewItemLongClickEvent> itemLongClickEvents(@NotNull AdapterView<T> receiver, @NotNull Predicate<? super AdapterViewItemLongClickEvent> handled) {
        Intrinsics.checkParameterIsNotNull(receiver, "$receiver");
        Intrinsics.checkParameterIsNotNull(handled, "handled");
        Observable<AdapterViewItemLongClickEvent> itemLongClickEvents = RxAdapterView.itemLongClickEvents(receiver, handled);
        Intrinsics.checkExpressionValueIsNotNull(itemLongClickEvents, "RxAdapterView.itemLongClickEvents(this, handled)");
        return itemLongClickEvents;
    }

    @NotNull
    public static final <T extends Adapter> Observable<Integer> itemLongClicks(@NotNull AdapterView<T> receiver) {
        Intrinsics.checkParameterIsNotNull(receiver, "$receiver");
        Observable<Integer> itemLongClicks = RxAdapterView.itemLongClicks(receiver);
        Intrinsics.checkExpressionValueIsNotNull(itemLongClicks, "RxAdapterView.itemLongClicks(this)");
        return itemLongClicks;
    }

    @NotNull
    public static final <T extends Adapter> Observable<Integer> itemLongClicks(@NotNull AdapterView<T> receiver, @NotNull Callable<Boolean> handled) {
        Intrinsics.checkParameterIsNotNull(receiver, "$receiver");
        Intrinsics.checkParameterIsNotNull(handled, "handled");
        Observable<Integer> itemLongClicks = RxAdapterView.itemLongClicks(receiver, handled);
        Intrinsics.checkExpressionValueIsNotNull(itemLongClicks, "RxAdapterView.itemLongClicks(this, handled)");
        return itemLongClicks;
    }

    @NotNull
    public static final <T extends Adapter> InitialValueObservable<Integer> itemSelections(@NotNull AdapterView<T> receiver) {
        Intrinsics.checkParameterIsNotNull(receiver, "$receiver");
        InitialValueObservable<Integer> itemSelections = RxAdapterView.itemSelections(receiver);
        Intrinsics.checkExpressionValueIsNotNull(itemSelections, "RxAdapterView.itemSelections(this)");
        return itemSelections;
    }

    @NotNull
    public static final <T extends Adapter> Consumer<? super Integer> selection(@NotNull AdapterView<T> receiver) {
        Intrinsics.checkParameterIsNotNull(receiver, "$receiver");
        Consumer<? super Integer> selection = RxAdapterView.selection(receiver);
        Intrinsics.checkExpressionValueIsNotNull(selection, "RxAdapterView.selection(this)");
        return selection;
    }

    @NotNull
    public static final <T extends Adapter> InitialValueObservable<AdapterViewSelectionEvent> selectionEvents(@NotNull AdapterView<T> receiver) {
        Intrinsics.checkParameterIsNotNull(receiver, "$receiver");
        InitialValueObservable<AdapterViewSelectionEvent> selectionEvents = RxAdapterView.selectionEvents(receiver);
        Intrinsics.checkExpressionValueIsNotNull(selectionEvents, "RxAdapterView.selectionEvents(this)");
        return selectionEvents;
    }
}
