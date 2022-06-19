package androidx.p027d.p028a;

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
import androidx.p027d.p028a.C0627b;
/* renamed from: androidx.d.a.a */
/* loaded from: classes-dex2jar.jar:androidx/d/a/a.class */
public abstract class AbstractC0624a extends BaseAdapter implements Filterable, C0627b.AbstractC0628a {

    /* renamed from: a */
    protected boolean f2074a;

    /* renamed from: b */
    protected boolean f2075b;

    /* renamed from: c */
    protected Cursor f2076c;

    /* renamed from: d */
    protected Context f2077d;

    /* renamed from: e */
    protected int f2078e;

    /* renamed from: f */
    protected C0625a f2079f;

    /* renamed from: g */
    protected DataSetObserver f2080g;

    /* renamed from: h */
    protected C0627b f2081h;

    /* renamed from: i */
    protected FilterQueryProvider f2082i;

    /* renamed from: androidx.d.a.a$a */
    /* loaded from: classes-dex2jar.jar:androidx/d/a/a$a.class */
    public class C0625a extends ContentObserver {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C0625a() {
            super(new Handler());
            AbstractC0624a.this = r5;
        }

        @Override // android.database.ContentObserver
        public boolean deliverSelfNotifications() {
            return true;
        }

        @Override // android.database.ContentObserver
        public void onChange(boolean z) {
            AbstractC0624a.this.m5885b();
        }
    }

    /* renamed from: androidx.d.a.a$b */
    /* loaded from: classes-dex2jar.jar:androidx/d/a/a$b.class */
    public class C0626b extends DataSetObserver {
        C0626b() {
            AbstractC0624a.this = r4;
        }

        @Override // android.database.DataSetObserver
        public void onChanged() {
            AbstractC0624a abstractC0624a = AbstractC0624a.this;
            abstractC0624a.f2074a = true;
            abstractC0624a.notifyDataSetChanged();
        }

        @Override // android.database.DataSetObserver
        public void onInvalidated() {
            AbstractC0624a abstractC0624a = AbstractC0624a.this;
            abstractC0624a.f2074a = false;
            abstractC0624a.notifyDataSetInvalidated();
        }
    }

    public AbstractC0624a(Context context, Cursor cursor, boolean z) {
        m5887a(context, cursor, z ? 1 : 2);
    }

    @Override // androidx.p027d.p028a.C0627b.AbstractC0628a
    /* renamed from: a */
    public Cursor mo5883a() {
        return this.f2076c;
    }

    /* renamed from: a */
    public Cursor mo5881a(CharSequence charSequence) {
        FilterQueryProvider filterQueryProvider = this.f2082i;
        return filterQueryProvider != null ? filterQueryProvider.runQuery(charSequence) : this.f2076c;
    }

    /* renamed from: a */
    public abstract View mo5879a(Context context, Cursor cursor, ViewGroup viewGroup);

    /* renamed from: a */
    void m5887a(Context context, Cursor cursor, int i) {
        boolean z = false;
        if ((i & 1) == 1) {
            i |= 2;
            this.f2075b = true;
        } else {
            this.f2075b = false;
        }
        if (cursor != null) {
            z = true;
        }
        this.f2076c = cursor;
        this.f2074a = z;
        this.f2077d = context;
        this.f2078e = z ? cursor.getColumnIndexOrThrow("_id") : -1;
        if ((i & 2) == 2) {
            this.f2079f = new C0625a();
            this.f2080g = new C0626b();
        } else {
            this.f2079f = null;
            this.f2080g = null;
        }
        if (z) {
            C0625a c0625a = this.f2079f;
            if (c0625a != null) {
                cursor.registerContentObserver(c0625a);
            }
            DataSetObserver dataSetObserver = this.f2080g;
            if (dataSetObserver == null) {
                return;
            }
            cursor.registerDataSetObserver(dataSetObserver);
        }
    }

    /* renamed from: a */
    public void mo5882a(Cursor cursor) {
        Cursor m5884c = m5884c(cursor);
        if (m5884c != null) {
            m5884c.close();
        }
    }

    /* renamed from: a */
    public abstract void mo5886a(View view, Context context, Cursor cursor);

    /* renamed from: b */
    public View mo5878b(Context context, Cursor cursor, ViewGroup viewGroup) {
        return mo5879a(context, cursor, viewGroup);
    }

    /* renamed from: b */
    public CharSequence mo5880b(Cursor cursor) {
        return cursor == null ? "" : cursor.toString();
    }

    /* renamed from: b */
    protected void m5885b() {
        Cursor cursor;
        if (!this.f2075b || (cursor = this.f2076c) == null || cursor.isClosed()) {
            return;
        }
        this.f2074a = this.f2076c.requery();
    }

    /* renamed from: c */
    public Cursor m5884c(Cursor cursor) {
        Cursor cursor2 = this.f2076c;
        if (cursor == cursor2) {
            return null;
        }
        if (cursor2 != null) {
            C0625a c0625a = this.f2079f;
            if (c0625a != null) {
                cursor2.unregisterContentObserver(c0625a);
            }
            DataSetObserver dataSetObserver = this.f2080g;
            if (dataSetObserver != null) {
                cursor2.unregisterDataSetObserver(dataSetObserver);
            }
        }
        this.f2076c = cursor;
        if (cursor != null) {
            C0625a c0625a2 = this.f2079f;
            if (c0625a2 != null) {
                cursor.registerContentObserver(c0625a2);
            }
            DataSetObserver dataSetObserver2 = this.f2080g;
            if (dataSetObserver2 != null) {
                cursor.registerDataSetObserver(dataSetObserver2);
            }
            this.f2078e = cursor.getColumnIndexOrThrow("_id");
            this.f2074a = true;
            notifyDataSetChanged();
        } else {
            this.f2078e = -1;
            this.f2074a = false;
            notifyDataSetInvalidated();
        }
        return cursor2;
    }

    @Override // android.widget.Adapter
    public int getCount() {
        Cursor cursor;
        if (!this.f2074a || (cursor = this.f2076c) == null) {
            return 0;
        }
        return cursor.getCount();
    }

    @Override // android.widget.BaseAdapter, android.widget.SpinnerAdapter
    public View getDropDownView(int i, View view, ViewGroup viewGroup) {
        if (this.f2074a) {
            this.f2076c.moveToPosition(i);
            View view2 = view;
            if (view == null) {
                view2 = mo5878b(this.f2077d, this.f2076c, viewGroup);
            }
            mo5886a(view2, this.f2077d, this.f2076c);
            return view2;
        }
        return null;
    }

    @Override // android.widget.Filterable
    public Filter getFilter() {
        if (this.f2081h == null) {
            this.f2081h = new C0627b(this);
        }
        return this.f2081h;
    }

    @Override // android.widget.Adapter
    public Object getItem(int i) {
        Cursor cursor;
        if (!this.f2074a || (cursor = this.f2076c) == null) {
            return null;
        }
        cursor.moveToPosition(i);
        return this.f2076c;
    }

    @Override // android.widget.Adapter
    public long getItemId(int i) {
        Cursor cursor;
        if (!this.f2074a || (cursor = this.f2076c) == null || !cursor.moveToPosition(i)) {
            return 0L;
        }
        return this.f2076c.getLong(this.f2078e);
    }

    @Override // android.widget.Adapter
    public View getView(int i, View view, ViewGroup viewGroup) {
        if (this.f2074a) {
            if (!this.f2076c.moveToPosition(i)) {
                throw new IllegalStateException("couldn't move cursor to position " + i);
            }
            View view2 = view;
            if (view == null) {
                view2 = mo5879a(this.f2077d, this.f2076c, viewGroup);
            }
            mo5886a(view2, this.f2077d, this.f2076c);
            return view2;
        }
        throw new IllegalStateException("this should only be called when the cursor is valid");
    }

    @Override // android.widget.BaseAdapter, android.widget.Adapter
    public boolean hasStableIds() {
        return true;
    }
}
