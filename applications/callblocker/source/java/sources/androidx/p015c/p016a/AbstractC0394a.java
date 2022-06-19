package androidx.p015c.p016a;

import android.content.Context;
import android.database.ContentObserver;
import android.database.Cursor;
import android.database.DataSetObserver;
import android.os.Handler;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.Filter;
import android.widget.FilterQueryProvider;
import android.widget.Filterable;
import androidx.p015c.p016a.C0397b;
/* renamed from: androidx.c.a.a */
/* loaded from: classes-dex2jar.jar:androidx/c/a/a.class */
public abstract class AbstractC0394a extends BaseAdapter implements Filterable, C0397b.AbstractC0398a {

    /* renamed from: a */
    protected boolean f1617a;

    /* renamed from: b */
    protected boolean f1618b;

    /* renamed from: c */
    protected Cursor f1619c;

    /* renamed from: d */
    protected Context f1620d;

    /* renamed from: e */
    protected int f1621e;

    /* renamed from: f */
    protected C0395a f1622f;

    /* renamed from: g */
    protected DataSetObserver f1623g;

    /* renamed from: h */
    protected C0397b f1624h;

    /* renamed from: i */
    protected FilterQueryProvider f1625i;

    /* renamed from: androidx.c.a.a$a */
    /* loaded from: classes-dex2jar.jar:androidx/c/a/a$a.class */
    public class C0395a extends ContentObserver {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C0395a() {
            super(new Handler());
            AbstractC0394a.this = r5;
        }

        @Override // android.database.ContentObserver
        public boolean deliverSelfNotifications() {
            return true;
        }

        @Override // android.database.ContentObserver
        public void onChange(boolean z) {
            AbstractC0394a.this.m21061b();
        }
    }

    /* renamed from: androidx.c.a.a$b */
    /* loaded from: classes-dex2jar.jar:androidx/c/a/a$b.class */
    public class C0396b extends DataSetObserver {
        C0396b() {
            AbstractC0394a.this = r4;
        }

        @Override // android.database.DataSetObserver
        public void onChanged() {
            AbstractC0394a.this.f1617a = true;
            AbstractC0394a.this.notifyDataSetChanged();
        }

        @Override // android.database.DataSetObserver
        public void onInvalidated() {
            AbstractC0394a.this.f1617a = false;
            AbstractC0394a.this.notifyDataSetInvalidated();
        }
    }

    public AbstractC0394a(Context context, Cursor cursor, boolean z) {
        m21063a(context, cursor, z ? 1 : 2);
    }

    @Override // androidx.p015c.p016a.C0397b.AbstractC0398a
    /* renamed from: a */
    public Cursor mo21059a() {
        return this.f1619c;
    }

    /* renamed from: a */
    public Cursor mo21057a(CharSequence charSequence) {
        return this.f1625i != null ? this.f1625i.runQuery(charSequence) : this.f1619c;
    }

    /* renamed from: a */
    public abstract View mo21055a(Context context, Cursor cursor, ViewGroup viewGroup);

    /* renamed from: a */
    void m21063a(Context context, Cursor cursor, int i) {
        boolean z = true;
        if ((i & 1) == 1) {
            i |= 2;
            this.f1618b = true;
        } else {
            this.f1618b = false;
        }
        if (cursor == null) {
            z = false;
        }
        this.f1619c = cursor;
        this.f1617a = z;
        this.f1620d = context;
        this.f1621e = z ? cursor.getColumnIndexOrThrow("_id") : -1;
        if ((i & 2) == 2) {
            this.f1622f = new C0395a();
            this.f1623g = new C0396b();
        } else {
            this.f1622f = null;
            this.f1623g = null;
        }
        if (z) {
            if (this.f1622f != null) {
                cursor.registerContentObserver(this.f1622f);
            }
            if (this.f1623g == null) {
                return;
            }
            cursor.registerDataSetObserver(this.f1623g);
        }
    }

    /* renamed from: a */
    public void mo21058a(Cursor cursor) {
        Cursor m21060c = m21060c(cursor);
        if (m21060c != null) {
            m21060c.close();
        }
    }

    /* renamed from: a */
    public abstract void mo21062a(View view, Context context, Cursor cursor);

    /* renamed from: b */
    public View mo21054b(Context context, Cursor cursor, ViewGroup viewGroup) {
        return mo21055a(context, cursor, viewGroup);
    }

    /* renamed from: b */
    public CharSequence mo21056b(Cursor cursor) {
        return cursor == null ? "" : cursor.toString();
    }

    /* renamed from: b */
    protected void m21061b() {
        if (!this.f1618b || this.f1619c == null || this.f1619c.isClosed()) {
            return;
        }
        this.f1617a = this.f1619c.requery();
    }

    /* renamed from: c */
    public Cursor m21060c(Cursor cursor) {
        Cursor cursor2;
        if (cursor == this.f1619c) {
            cursor2 = null;
        } else {
            Cursor cursor3 = this.f1619c;
            if (cursor3 != null) {
                if (this.f1622f != null) {
                    cursor3.unregisterContentObserver(this.f1622f);
                }
                if (this.f1623g != null) {
                    cursor3.unregisterDataSetObserver(this.f1623g);
                }
            }
            this.f1619c = cursor;
            if (cursor != null) {
                if (this.f1622f != null) {
                    cursor.registerContentObserver(this.f1622f);
                }
                if (this.f1623g != null) {
                    cursor.registerDataSetObserver(this.f1623g);
                }
                this.f1621e = cursor.getColumnIndexOrThrow("_id");
                this.f1617a = true;
                notifyDataSetChanged();
                cursor2 = cursor3;
            } else {
                this.f1621e = -1;
                this.f1617a = false;
                notifyDataSetInvalidated();
                cursor2 = cursor3;
            }
        }
        return cursor2;
    }

    @Override // android.widget.Adapter
    public int getCount() {
        return (!this.f1617a || this.f1619c == null) ? 0 : this.f1619c.getCount();
    }

    @Override // android.widget.BaseAdapter, android.widget.SpinnerAdapter
    public View getDropDownView(int i, View view, ViewGroup viewGroup) {
        View view2;
        if (this.f1617a) {
            this.f1619c.moveToPosition(i);
            view2 = view;
            if (view == null) {
                view2 = mo21054b(this.f1620d, this.f1619c, viewGroup);
            }
            mo21062a(view2, this.f1620d, this.f1619c);
        } else {
            view2 = null;
        }
        return view2;
    }

    @Override // android.widget.Filterable
    public Filter getFilter() {
        if (this.f1624h == null) {
            this.f1624h = new C0397b(this);
        }
        return this.f1624h;
    }

    @Override // android.widget.Adapter
    public Object getItem(int i) {
        Cursor cursor;
        if (!this.f1617a || this.f1619c == null) {
            cursor = null;
        } else {
            this.f1619c.moveToPosition(i);
            cursor = this.f1619c;
        }
        return cursor;
    }

    /* JADX WARN: Type inference failed for: r0v14, types: [long] */
    @Override // android.widget.Adapter
    public long getItemId(int i) {
        char c = 0;
        if (this.f1617a) {
            c = 0;
            if (this.f1619c != null) {
                c = 0;
                if (this.f1619c.moveToPosition(i)) {
                    c = this.f1619c.getLong(this.f1621e);
                }
            }
        }
        return c;
    }

    @Override // android.widget.Adapter
    public View getView(int i, View view, ViewGroup viewGroup) {
        if (!this.f1617a) {
            throw new IllegalStateException("this should only be called when the cursor is valid");
        }
        if (!this.f1619c.moveToPosition(i)) {
            throw new IllegalStateException("couldn't move cursor to position " + i);
        }
        View view2 = view;
        if (view == null) {
            view2 = mo21055a(this.f1620d, this.f1619c, viewGroup);
        }
        mo21062a(view2, this.f1620d, this.f1619c);
        return view2;
    }

    @Override // android.widget.BaseAdapter, android.widget.Adapter
    public boolean hasStableIds() {
        return true;
    }
}
