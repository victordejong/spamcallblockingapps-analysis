package androidx.appcompat.widget;

import androidx.appcompat.widget.SearchView;
/* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/SearchView$SearchAutoComplete$a.class */
public class SearchView$SearchAutoComplete$a implements Runnable {

    /* renamed from: a */
    public final /* synthetic */ SearchView.SearchAutoComplete f589a;

    public SearchView$SearchAutoComplete$a(SearchView.SearchAutoComplete searchAutoComplete) {
        this.f589a = searchAutoComplete;
    }

    @Override // java.lang.Runnable
    public void run() {
        this.f589a.c();
    }
}
