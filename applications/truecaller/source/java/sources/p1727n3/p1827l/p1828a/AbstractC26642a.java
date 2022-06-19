package p1727n3.p1827l.p1828a;

import android.content.Context;
import android.database.ContentObserver;
import android.database.Cursor;
import android.database.DataSetObserver;
import android.os.Handler;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.Filter;
import android.widget.Filterable;
import p1727n3.p1827l.p1828a.C26645b;
import p193e.p1432d.p1439c.p1440a.C22128a;
/* renamed from: n3.l.a.a */
/* loaded from: classes-dex2jar.jar:n3/l/a/a.class */
public abstract class AbstractC26642a extends BaseAdapter implements Filterable, C26645b.AbstractC26646a {

    /* renamed from: a */
    public boolean f74574a;

    /* renamed from: b */
    public boolean f74575b;

    /* renamed from: c */
    public Cursor f74576c;

    /* renamed from: d */
    public Context f74577d;

    /* renamed from: e */
    public int f74578e;

    /* renamed from: f */
    public C26643a f74579f;

    /* renamed from: g */
    public DataSetObserver f74580g;

    /* renamed from: h */
    public C26645b f74581h;

    /* renamed from: n3.l.a.a$a */
    /* loaded from: classes-dex2jar.jar:n3/l/a/a$a.class */
    public class C26643a extends ContentObserver {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C26643a() {
            super(new Handler());
            AbstractC26642a.this = r5;
        }

        @Override // android.database.ContentObserver
        public boolean deliverSelfNotifications() {
            return true;
        }

        @Override // android.database.ContentObserver
        public void onChange(boolean z) {
            Cursor cursor;
            AbstractC26642a abstractC26642a = AbstractC26642a.this;
            if (!abstractC26642a.f74575b || (cursor = abstractC26642a.f74576c) == null || cursor.isClosed()) {
                return;
            }
            abstractC26642a.f74574a = abstractC26642a.f74576c.requery();
        }
    }

    /* renamed from: n3.l.a.a$b */
    /* loaded from: classes-dex2jar.jar:n3/l/a/a$b.class */
    public class C26644b extends DataSetObserver {
        public C26644b() {
            AbstractC26642a.this = r4;
        }

        @Override // android.database.DataSetObserver
        public void onChanged() {
            AbstractC26642a abstractC26642a = AbstractC26642a.this;
            abstractC26642a.f74574a = true;
            abstractC26642a.notifyDataSetChanged();
        }

        @Override // android.database.DataSetObserver
        public void onInvalidated() {
            AbstractC26642a abstractC26642a = AbstractC26642a.this;
            abstractC26642a.f74574a = false;
            abstractC26642a.notifyDataSetInvalidated();
        }
    }

    public AbstractC26642a(Context context, Cursor cursor, boolean z) {
        boolean z2 = z ? true : true;
        if (z2 && true) {
            z2 |= true;
            this.f74575b = true;
        } else {
            this.f74575b = false;
        }
        boolean z3 = cursor != null;
        this.f74576c = cursor;
        this.f74574a = z3;
        this.f74577d = context;
        this.f74578e = z3 ? cursor.getColumnIndexOrThrow("_id") : -1;
        if (z2 & true) {
            this.f74579f = new C26643a();
            this.f74580g = new C26644b();
        } else {
            this.f74579f = null;
            this.f74580g = null;
        }
        if (z3) {
            C26643a c26643a = this.f74579f;
            if (c26643a != null) {
                cursor.registerContentObserver(c26643a);
            }
            DataSetObserver dataSetObserver = this.f74580g;
            if (dataSetObserver == null) {
                return;
            }
            cursor.registerDataSetObserver(dataSetObserver);
        }
    }

    @Override // p1727n3.p1827l.p1828a.C26645b.AbstractC26646a
    /* renamed from: a */
    public void mo1527a(Cursor cursor) {
        Cursor m1528g = m1528g(cursor);
        if (m1528g != null) {
            m1528g.close();
        }
    }

    @Override // p1727n3.p1827l.p1828a.C26645b.AbstractC26646a
    /* renamed from: b */
    public CharSequence mo1526b(Cursor cursor) {
        return cursor == null ? "" : cursor.toString();
    }

    @Override // p1727n3.p1827l.p1828a.C26645b.AbstractC26646a
    /* renamed from: c */
    public Cursor mo1525c(CharSequence charSequence) {
        return this.f74576c;
    }

    /* renamed from: d */
    public abstract void mo1531d(View view, Context context, Cursor cursor);

    /* renamed from: e */
    public View m1530e(Context context, Cursor cursor, ViewGroup viewGroup) {
        return mo1529f(context, cursor, viewGroup);
    }

    /* renamed from: f */
    public abstract View mo1529f(Context context, Cursor cursor, ViewGroup viewGroup);

    /* renamed from: g */
    public Cursor m1528g(Cursor cursor) {
        Cursor cursor2 = this.f74576c;
        if (cursor == cursor2) {
            return null;
        }
        if (cursor2 != null) {
            C26643a c26643a = this.f74579f;
            if (c26643a != null) {
                cursor2.unregisterContentObserver(c26643a);
            }
            DataSetObserver dataSetObserver = this.f74580g;
            if (dataSetObserver != null) {
                cursor2.unregisterDataSetObserver(dataSetObserver);
            }
        }
        this.f74576c = cursor;
        if (cursor != null) {
            C26643a c26643a2 = this.f74579f;
            if (c26643a2 != null) {
                cursor.registerContentObserver(c26643a2);
            }
            DataSetObserver dataSetObserver2 = this.f74580g;
            if (dataSetObserver2 != null) {
                cursor.registerDataSetObserver(dataSetObserver2);
            }
            this.f74578e = cursor.getColumnIndexOrThrow("_id");
            this.f74574a = true;
            notifyDataSetChanged();
        } else {
            this.f74578e = -1;
            this.f74574a = false;
            notifyDataSetInvalidated();
        }
        return cursor2;
    }

    @Override // android.widget.Adapter
    public int getCount() {
        Cursor cursor;
        if (!this.f74574a || (cursor = this.f74576c) == null) {
            return 0;
        }
        return cursor.getCount();
    }

    @Override // android.widget.BaseAdapter, android.widget.SpinnerAdapter
    public View getDropDownView(int i, View view, ViewGroup viewGroup) {
        if (this.f74574a) {
            this.f74576c.moveToPosition(i);
            View view2 = view;
            if (view == null) {
                view2 = m1530e(this.f74577d, this.f74576c, viewGroup);
            }
            mo1531d(view2, this.f74577d, this.f74576c);
            return view2;
        }
        return null;
    }

    @Override // android.widget.Filterable
    public Filter getFilter() {
        if (this.f74581h == null) {
            this.f74581h = new C26645b(this);
        }
        return this.f74581h;
    }

    @Override // android.widget.Adapter
    public Object getItem(int i) {
        Cursor cursor;
        if (!this.f74574a || (cursor = this.f74576c) == null) {
            return null;
        }
        cursor.moveToPosition(i);
        return this.f74576c;
    }

    @Override // android.widget.Adapter
    public long getItemId(int i) {
        Cursor cursor;
        if (!this.f74574a || (cursor = this.f74576c) == null || !cursor.moveToPosition(i)) {
            return 0L;
        }
        return this.f74576c.getLong(this.f74578e);
    }

    @Override // android.widget.Adapter
    public View getView(int i, View view, ViewGroup viewGroup) {
        if (this.f74574a) {
            if (!this.f74576c.moveToPosition(i)) {
                throw new IllegalStateException(C22128a.m8611i2("couldn't move cursor to position ", i));
            }
            View view2 = view;
            if (view == null) {
                view2 = mo1529f(this.f74577d, this.f74576c, viewGroup);
            }
            mo1531d(view2, this.f74577d, this.f74576c);
            return view2;
        }
        throw new IllegalStateException("this should only be called when the cursor is valid");
    }

    @Override // android.widget.BaseAdapter, android.widget.Adapter
    public boolean hasStableIds() {
        return true;
    }
}
