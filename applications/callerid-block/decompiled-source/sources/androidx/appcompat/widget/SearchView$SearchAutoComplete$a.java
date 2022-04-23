package androidx.appcompat.widget;

import androidx.appcompat.widget.SearchView;
/* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/SearchView$SearchAutoComplete$a.class */
class SearchView$SearchAutoComplete$a implements Runnable {

    /* renamed from: b */
    final /* synthetic */ SearchView.SearchAutoComplete f461b;

    SearchView$SearchAutoComplete$a(SearchView.SearchAutoComplete searchAutoComplete) {
        this.f461b = searchAutoComplete;
    }

    @Override // java.lang.Runnable
    public void run() {
        this.f461b.c();
    }
}
