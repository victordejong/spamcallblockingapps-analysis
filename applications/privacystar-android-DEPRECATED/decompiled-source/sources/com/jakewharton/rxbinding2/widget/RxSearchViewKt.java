package com.jakewharton.rxbinding2.widget;

import android.widget.SearchView;
import com.google.android.gms.actions.SearchIntents;
import com.jakewharton.rxbinding2.InitialValueObservable;
import io.reactivex.functions.Consumer;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
@Metadata(m256bv = {1, 0, 0}, m255d1 = {"��\"\n��\n\u0002\u0018\u0002\n\u0002\u0010\r\n\u0002\u0018\u0002\n��\n\u0002\u0010\u000b\n��\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u001a\u001d\u0010��\u001a\n\u0012\u0006\b��\u0012\u00020\u00020\u0001*\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0086\b\u001a\u0013\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\b0\u0007*\u00020\u0003H\u0086\b\u001a\u0013\u0010\t\u001a\b\u0012\u0004\u0012\u00020\u00020\u0007*\u00020\u0003H\u0086\b¨\u0006\n"}, m254d2 = {SearchIntents.EXTRA_QUERY, "Lio/reactivex/functions/Consumer;", "", "Landroid/widget/SearchView;", "submit", "", "queryTextChangeEvents", "Lcom/jakewharton/rxbinding2/InitialValueObservable;", "Lcom/jakewharton/rxbinding2/widget/SearchViewQueryTextEvent;", "queryTextChanges", "rxbinding2-kotlin"}, m253k = 2, m252mv = {1, 1, 1})
/* loaded from: classes-dex2jar.jar:com/jakewharton/rxbinding2/widget/RxSearchViewKt.class */
public final class RxSearchViewKt {
    @NotNull
    public static final Consumer<? super CharSequence> query(@NotNull SearchView receiver, boolean z) {
        Intrinsics.checkParameterIsNotNull(receiver, "$receiver");
        Consumer<? super CharSequence> query = RxSearchView.query(receiver, z);
        Intrinsics.checkExpressionValueIsNotNull(query, "RxSearchView.query(this, submit)");
        return query;
    }

    @NotNull
    public static final InitialValueObservable<SearchViewQueryTextEvent> queryTextChangeEvents(@NotNull SearchView receiver) {
        Intrinsics.checkParameterIsNotNull(receiver, "$receiver");
        InitialValueObservable<SearchViewQueryTextEvent> queryTextChangeEvents = RxSearchView.queryTextChangeEvents(receiver);
        Intrinsics.checkExpressionValueIsNotNull(queryTextChangeEvents, "RxSearchView.queryTextChangeEvents(this)");
        return queryTextChangeEvents;
    }

    @NotNull
    public static final InitialValueObservable<CharSequence> queryTextChanges(@NotNull SearchView receiver) {
        Intrinsics.checkParameterIsNotNull(receiver, "$receiver");
        InitialValueObservable<CharSequence> queryTextChanges = RxSearchView.queryTextChanges(receiver);
        Intrinsics.checkExpressionValueIsNotNull(queryTextChanges, "RxSearchView.queryTextChanges(this)");
        return queryTextChanges;
    }
}
