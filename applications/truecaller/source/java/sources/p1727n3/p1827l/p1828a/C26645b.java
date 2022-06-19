package p1727n3.p1827l.p1828a;

import android.database.Cursor;
import android.widget.Filter;
/* renamed from: n3.l.a.b */
/* loaded from: classes-dex2jar.jar:n3/l/a/b.class */
public class C26645b extends Filter {

    /* renamed from: a */
    public AbstractC26646a f74584a;

    /* renamed from: n3.l.a.b$a */
    /* loaded from: classes-dex2jar.jar:n3/l/a/b$a.class */
    public interface AbstractC26646a {
        /* renamed from: a */
        void mo1527a(Cursor cursor);

        /* renamed from: b */
        CharSequence mo1526b(Cursor cursor);

        /* renamed from: c */
        Cursor mo1525c(CharSequence charSequence);
    }

    public C26645b(AbstractC26646a abstractC26646a) {
        this.f74584a = abstractC26646a;
    }

    @Override // android.widget.Filter
    public CharSequence convertResultToString(Object obj) {
        return this.f74584a.mo1526b((Cursor) obj);
    }

    @Override // android.widget.Filter
    public Filter.FilterResults performFiltering(CharSequence charSequence) {
        Cursor mo1525c = this.f74584a.mo1525c(charSequence);
        Filter.FilterResults filterResults = new Filter.FilterResults();
        if (mo1525c != null) {
            filterResults.count = mo1525c.getCount();
            filterResults.values = mo1525c;
        } else {
            filterResults.count = 0;
            filterResults.values = null;
        }
        return filterResults;
    }

    @Override // android.widget.Filter
    public void publishResults(CharSequence charSequence, Filter.FilterResults filterResults) {
        AbstractC26646a abstractC26646a = this.f74584a;
        Cursor cursor = ((AbstractC26642a) abstractC26646a).f74576c;
        Object obj = filterResults.values;
        if (obj == null || obj == cursor) {
            return;
        }
        abstractC26646a.mo1527a((Cursor) obj);
    }
}
