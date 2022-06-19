package p020b.p053i.p054a;

import android.database.Cursor;
import android.widget.Filter;
/* renamed from: b.i.a.b */
/* loaded from: classes-dex2jar.jar:b/i/a/b.class */
class C1699b extends Filter {

    /* renamed from: a */
    AbstractC1700a f6375a;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: b.i.a.b$a */
    /* loaded from: classes-dex2jar.jar:b/i/a/b$a.class */
    public interface AbstractC1700a {
        /* renamed from: a */
        void mo29200a(Cursor cursor);

        /* renamed from: b */
        Cursor mo29199b();

        /* renamed from: c */
        CharSequence mo29198c(Cursor cursor);

        /* renamed from: d */
        Cursor mo29197d(CharSequence charSequence);
    }

    public C1699b(AbstractC1700a abstractC1700a) {
        this.f6375a = abstractC1700a;
    }

    @Override // android.widget.Filter
    public CharSequence convertResultToString(Object obj) {
        return this.f6375a.mo29198c((Cursor) obj);
    }

    @Override // android.widget.Filter
    protected Filter.FilterResults performFiltering(CharSequence charSequence) {
        Cursor mo29197d = this.f6375a.mo29197d(charSequence);
        Filter.FilterResults filterResults = new Filter.FilterResults();
        if (mo29197d != null) {
            filterResults.count = mo29197d.getCount();
            filterResults.values = mo29197d;
        } else {
            filterResults.count = 0;
            filterResults.values = null;
        }
        return filterResults;
    }

    @Override // android.widget.Filter
    protected void publishResults(CharSequence charSequence, Filter.FilterResults filterResults) {
        Cursor mo29199b = this.f6375a.mo29199b();
        Object obj = filterResults.values;
        if (obj == null || obj == mo29199b) {
            return;
        }
        this.f6375a.mo29200a((Cursor) obj);
    }
}
