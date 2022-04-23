package androidx.d.a;

import android.database.Cursor;
import android.widget.Filter;
/* loaded from: classes-dex2jar.jar:androidx/d/a/b.class */
final class b extends Filter {

    /* renamed from: a  reason: collision with root package name */
    a f2092a;

    /* loaded from: classes-dex2jar.jar:androidx/d/a/b$a.class */
    interface a {
        Cursor a();

        Cursor a(CharSequence charSequence);

        void a(Cursor cursor);

        CharSequence b(Cursor cursor);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public b(a aVar) {
        this.f2092a = aVar;
    }

    @Override // android.widget.Filter
    public final CharSequence convertResultToString(Object obj) {
        return this.f2092a.b((Cursor) obj);
    }

    @Override // android.widget.Filter
    protected final Filter.FilterResults performFiltering(CharSequence charSequence) {
        Cursor a2 = this.f2092a.a(charSequence);
        Filter.FilterResults filterResults = new Filter.FilterResults();
        if (a2 != null) {
            filterResults.count = a2.getCount();
            filterResults.values = a2;
        } else {
            filterResults.count = 0;
            filterResults.values = null;
        }
        return filterResults;
    }

    @Override // android.widget.Filter
    protected final void publishResults(CharSequence charSequence, Filter.FilterResults filterResults) {
        Cursor a2 = this.f2092a.a();
        if (filterResults.values != null && filterResults.values != a2) {
            this.f2092a.a((Cursor) filterResults.values);
        }
    }
}
