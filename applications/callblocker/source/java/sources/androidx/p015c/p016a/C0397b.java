package androidx.p015c.p016a;

import android.database.Cursor;
import android.widget.Filter;
/* renamed from: androidx.c.a.b */
/* loaded from: classes-dex2jar.jar:androidx/c/a/b.class */
class C0397b extends Filter {

    /* renamed from: a */
    AbstractC0398a f1628a;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: androidx.c.a.b$a */
    /* loaded from: classes-dex2jar.jar:androidx/c/a/b$a.class */
    public interface AbstractC0398a {
        /* renamed from: a */
        Cursor mo21059a();

        /* renamed from: a */
        Cursor mo21057a(CharSequence charSequence);

        /* renamed from: a */
        void mo21058a(Cursor cursor);

        /* renamed from: b */
        CharSequence mo21056b(Cursor cursor);
    }

    public C0397b(AbstractC0398a abstractC0398a) {
        this.f1628a = abstractC0398a;
    }

    @Override // android.widget.Filter
    public CharSequence convertResultToString(Object obj) {
        return this.f1628a.mo21056b((Cursor) obj);
    }

    @Override // android.widget.Filter
    protected Filter.FilterResults performFiltering(CharSequence charSequence) {
        Cursor mo21057a = this.f1628a.mo21057a(charSequence);
        Filter.FilterResults filterResults = new Filter.FilterResults();
        if (mo21057a != null) {
            filterResults.count = mo21057a.getCount();
            filterResults.values = mo21057a;
        } else {
            filterResults.count = 0;
            filterResults.values = null;
        }
        return filterResults;
    }

    @Override // android.widget.Filter
    protected void publishResults(CharSequence charSequence, Filter.FilterResults filterResults) {
        Cursor mo21059a = this.f1628a.mo21059a();
        if (filterResults.values == null || filterResults.values == mo21059a) {
            return;
        }
        this.f1628a.mo21058a((Cursor) filterResults.values);
    }
}
