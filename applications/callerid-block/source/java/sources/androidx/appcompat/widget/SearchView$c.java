package androidx.appcompat.widget;

import android.database.Cursor;
import d.i.a.a;
/* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/SearchView$c.class */
class SearchView$c implements Runnable {

    /* renamed from: b */
    final /* synthetic */ SearchView f464b;

    SearchView$c(SearchView searchView) {
        this.f464b = searchView;
    }

    @Override // java.lang.Runnable
    public void run() {
        a aVar = this.f464b.S;
        if (aVar instanceof x) {
            aVar.a((Cursor) null);
        }
    }
}
