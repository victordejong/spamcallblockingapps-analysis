package com.jakewharton.rxbinding2.widget;

import android.support.annotation.CheckResult;
import android.support.annotation.NonNull;
import android.widget.SearchView;
/* loaded from: classes-dex2jar.jar:com/jakewharton/rxbinding2/widget/SearchViewQueryTextEvent.class */
public abstract class SearchViewQueryTextEvent {
    @CheckResult
    @NonNull
    public static SearchViewQueryTextEvent create(@NonNull SearchView searchView, @NonNull CharSequence charSequence, boolean z) {
        return new AutoValue_SearchViewQueryTextEvent(searchView, charSequence, z);
    }

    public abstract boolean isSubmitted();

    @NonNull
    public abstract CharSequence queryText();

    @NonNull
    public abstract SearchView view();
}
