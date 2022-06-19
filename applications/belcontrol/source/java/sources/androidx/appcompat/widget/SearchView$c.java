package androidx.appcompat.widget;

import android.database.Cursor;
/* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/SearchView$c.class */
public class SearchView$c implements Runnable {

    /* renamed from: a */
    public final /* synthetic */ SearchView f592a;

    public SearchView$c(SearchView searchView) {
        this.f592a = searchView;
    }

    @Override // java.lang.Runnable
    public void run() {
        mc mcVar = this.f592a.E;
        if (mcVar instanceof h2) {
            mcVar.a((Cursor) null);
        }
    }
}
