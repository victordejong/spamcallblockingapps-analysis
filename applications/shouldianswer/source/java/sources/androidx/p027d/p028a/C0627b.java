package androidx.p027d.p028a;

import android.database.Cursor;
import android.widget.Filter;
/* renamed from: androidx.d.a.b */
/* loaded from: classes-dex2jar.jar:androidx/d/a/b.class */
class C0627b extends Filter {

    /* renamed from: a */
    AbstractC0628a f2085a;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: androidx.d.a.b$a */
    /* loaded from: classes-dex2jar.jar:androidx/d/a/b$a.class */
    public interface AbstractC0628a {
        /* renamed from: a */
        Cursor mo5883a();

        /* renamed from: a */
        Cursor mo5881a(CharSequence charSequence);

        /* renamed from: a */
        void mo5882a(Cursor cursor);

        /* renamed from: b */
        CharSequence mo5880b(Cursor cursor);
    }

    public C0627b(AbstractC0628a abstractC0628a) {
        this.f2085a = abstractC0628a;
    }

    @Override // android.widget.Filter
    public CharSequence convertResultToString(Object obj) {
        return this.f2085a.mo5880b((Cursor) obj);
    }

    @Override // android.widget.Filter
    protected Filter.FilterResults performFiltering(CharSequence charSequence) {
        Cursor mo5881a = this.f2085a.mo5881a(charSequence);
        Filter.FilterResults filterResults = new Filter.FilterResults();
        if (mo5881a != null) {
            filterResults.count = mo5881a.getCount();
            filterResults.values = mo5881a;
        } else {
            filterResults.count = 0;
            filterResults.values = null;
        }
        return filterResults;
    }

    @Override // android.widget.Filter
    protected void publishResults(CharSequence charSequence, Filter.FilterResults filterResults) {
        Cursor mo5883a = this.f2085a.mo5883a();
        if (filterResults.values == null || filterResults.values == mo5883a) {
            return;
        }
        this.f2085a.mo5882a((Cursor) filterResults.values);
    }
}
