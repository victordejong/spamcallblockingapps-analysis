package androidx.p040d.p041a;

import android.database.Cursor;
import android.widget.Filter;
/* renamed from: androidx.d.a.b */
/* loaded from: classes-dex2jar.jar:androidx/d/a/b.class */
final class C0981b extends Filter {

    /* renamed from: a */
    AbstractC0982a f3931a;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: androidx.d.a.b$a */
    /* loaded from: classes-dex2jar.jar:androidx/d/a/b$a.class */
    public interface AbstractC0982a {
        /* renamed from: a */
        Cursor mo43876a();

        /* renamed from: a */
        Cursor mo43874a(CharSequence charSequence);

        /* renamed from: a */
        void mo43875a(Cursor cursor);

        /* renamed from: b */
        CharSequence mo43873b(Cursor cursor);
    }

    public C0981b(AbstractC0982a abstractC0982a) {
        this.f3931a = abstractC0982a;
    }

    @Override // android.widget.Filter
    public final CharSequence convertResultToString(Object obj) {
        return this.f3931a.mo43873b((Cursor) obj);
    }

    @Override // android.widget.Filter
    protected final Filter.FilterResults performFiltering(CharSequence charSequence) {
        Cursor mo43874a = this.f3931a.mo43874a(charSequence);
        Filter.FilterResults filterResults = new Filter.FilterResults();
        if (mo43874a != null) {
            filterResults.count = mo43874a.getCount();
            filterResults.values = mo43874a;
        } else {
            filterResults.count = 0;
            filterResults.values = null;
        }
        return filterResults;
    }

    @Override // android.widget.Filter
    protected final void publishResults(CharSequence charSequence, Filter.FilterResults filterResults) {
        Cursor mo43876a = this.f3931a.mo43876a();
        if (filterResults.values == null || filterResults.values == mo43876a) {
            return;
        }
        this.f3931a.mo43875a((Cursor) filterResults.values);
    }
}
