package com.jakewharton.rxbinding2.widget;

import android.support.annotation.CheckResult;
import android.support.annotation.NonNull;
import android.widget.SearchView;
import com.jakewharton.rxbinding2.InitialValueObservable;
import com.jakewharton.rxbinding2.internal.Preconditions;
import io.reactivex.functions.Consumer;
/* loaded from: classes-dex2jar.jar:com/jakewharton/rxbinding2/widget/RxSearchView.class */
public final class RxSearchView {
    private RxSearchView() {
        throw new AssertionError("No instances.");
    }

    @CheckResult
    @NonNull
    public static Consumer<? super CharSequence> query(@NonNull final SearchView searchView, final boolean z) {
        Preconditions.checkNotNull(searchView, "view == null");
        return new Consumer<CharSequence>() { // from class: com.jakewharton.rxbinding2.widget.RxSearchView.1
            public void accept(CharSequence charSequence) {
                searchView.setQuery(charSequence, z);
            }
        };
    }

    @CheckResult
    @NonNull
    public static InitialValueObservable<SearchViewQueryTextEvent> queryTextChangeEvents(@NonNull SearchView searchView) {
        Preconditions.checkNotNull(searchView, "view == null");
        return new SearchViewQueryTextChangeEventsObservable(searchView);
    }

    @CheckResult
    @NonNull
    public static InitialValueObservable<CharSequence> queryTextChanges(@NonNull SearchView searchView) {
        Preconditions.checkNotNull(searchView, "view == null");
        return new SearchViewQueryTextChangesObservable(searchView);
    }
}
