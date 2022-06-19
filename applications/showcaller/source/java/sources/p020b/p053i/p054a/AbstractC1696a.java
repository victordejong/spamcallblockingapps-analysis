package p020b.p053i.p054a;

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
import p020b.p053i.p054a.C1699b;
/* renamed from: b.i.a.a */
/* loaded from: classes-dex2jar.jar:b/i/a/a.class */
public abstract class AbstractC1696a extends BaseAdapter implements Filterable, C1699b.AbstractC1700a {

    /* renamed from: d */
    protected boolean f6365d;

    /* renamed from: e */
    protected boolean f6366e;

    /* renamed from: f */
    protected Cursor f6367f;

    /* renamed from: g */
    protected Context f6368g;

    /* renamed from: h */
    protected int f6369h;

    /* renamed from: i */
    protected C1697a f6370i;

    /* renamed from: j */
    protected DataSetObserver f6371j;

    /* renamed from: k */
    protected C1699b f6372k;

    /* renamed from: b.i.a.a$a */
    /* loaded from: classes-dex2jar.jar:b/i/a/a$a.class */
    public class C1697a extends ContentObserver {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C1697a() {
            super(new Handler());
            AbstractC1696a.this = r5;
        }

        @Override // android.database.ContentObserver
        public boolean deliverSelfNotifications() {
            return true;
        }

        @Override // android.database.ContentObserver
        public void onChange(boolean z) {
            AbstractC1696a.this.m29202q();
        }
    }

    /* renamed from: b.i.a.a$b */
    /* loaded from: classes-dex2jar.jar:b/i/a/a$b.class */
    public class C1698b extends DataSetObserver {
        C1698b() {
            AbstractC1696a.this = r4;
        }

        @Override // android.database.DataSetObserver
        public void onChanged() {
            AbstractC1696a abstractC1696a = AbstractC1696a.this;
            abstractC1696a.f6365d = true;
            abstractC1696a.notifyDataSetChanged();
        }

        @Override // android.database.DataSetObserver
        public void onInvalidated() {
            AbstractC1696a abstractC1696a = AbstractC1696a.this;
            abstractC1696a.f6365d = false;
            abstractC1696a.notifyDataSetInvalidated();
        }
    }

    public AbstractC1696a(Context context, Cursor cursor, boolean z) {
        m29203j(context, cursor, z ? 1 : 2);
    }

    /* renamed from: a */
    public void mo29200a(Cursor cursor) {
        Cursor m29201r = m29201r(cursor);
        if (m29201r != null) {
            m29201r.close();
        }
    }

    @Override // p020b.p053i.p054a.C1699b.AbstractC1700a
    /* renamed from: b */
    public Cursor mo29199b() {
        return this.f6367f;
    }

    /* renamed from: c */
    public abstract CharSequence mo29198c(Cursor cursor);

    /* renamed from: e */
    public abstract void mo29204e(View view, Context context, Cursor cursor);

    @Override // android.widget.Adapter
    public int getCount() {
        Cursor cursor;
        if (!this.f6365d || (cursor = this.f6367f) == null) {
            return 0;
        }
        return cursor.getCount();
    }

    @Override // android.widget.BaseAdapter, android.widget.SpinnerAdapter
    public View getDropDownView(int i, View view, ViewGroup viewGroup) {
        if (this.f6365d) {
            this.f6367f.moveToPosition(i);
            View view2 = view;
            if (view == null) {
                view2 = mo29196o(this.f6368g, this.f6367f, viewGroup);
            }
            mo29204e(view2, this.f6368g, this.f6367f);
            return view2;
        }
        return null;
    }

    @Override // android.widget.Filterable
    public Filter getFilter() {
        if (this.f6372k == null) {
            this.f6372k = new C1699b(this);
        }
        return this.f6372k;
    }

    @Override // android.widget.Adapter
    public Object getItem(int i) {
        Cursor cursor;
        if (!this.f6365d || (cursor = this.f6367f) == null) {
            return null;
        }
        cursor.moveToPosition(i);
        return this.f6367f;
    }

    @Override // android.widget.Adapter
    public long getItemId(int i) {
        Cursor cursor;
        if (!this.f6365d || (cursor = this.f6367f) == null || !cursor.moveToPosition(i)) {
            return 0L;
        }
        return this.f6367f.getLong(this.f6369h);
    }

    @Override // android.widget.Adapter
    public View getView(int i, View view, ViewGroup viewGroup) {
        if (this.f6365d) {
            if (!this.f6367f.moveToPosition(i)) {
                throw new IllegalStateException("couldn't move cursor to position " + i);
            }
            View view2 = view;
            if (view == null) {
                view2 = mo29195p(this.f6368g, this.f6367f, viewGroup);
            }
            mo29204e(view2, this.f6368g, this.f6367f);
            return view2;
        }
        throw new IllegalStateException("this should only be called when the cursor is valid");
    }

    /* renamed from: j */
    void m29203j(Context context, Cursor cursor, int i) {
        boolean z = false;
        if ((i & 1) == 1) {
            i |= 2;
            this.f6366e = true;
        } else {
            this.f6366e = false;
        }
        if (cursor != null) {
            z = true;
        }
        this.f6367f = cursor;
        this.f6365d = z;
        this.f6368g = context;
        this.f6369h = z ? cursor.getColumnIndexOrThrow("_id") : -1;
        if ((i & 2) == 2) {
            this.f6370i = new C1697a();
            this.f6371j = new C1698b();
        } else {
            this.f6370i = null;
            this.f6371j = null;
        }
        if (z) {
            C1697a c1697a = this.f6370i;
            if (c1697a != null) {
                cursor.registerContentObserver(c1697a);
            }
            DataSetObserver dataSetObserver = this.f6371j;
            if (dataSetObserver == null) {
                return;
            }
            cursor.registerDataSetObserver(dataSetObserver);
        }
    }

    /* renamed from: o */
    public abstract View mo29196o(Context context, Cursor cursor, ViewGroup viewGroup);

    /* renamed from: p */
    public abstract View mo29195p(Context context, Cursor cursor, ViewGroup viewGroup);

    /* renamed from: q */
    protected void m29202q() {
        Cursor cursor;
        if (!this.f6366e || (cursor = this.f6367f) == null || cursor.isClosed()) {
            return;
        }
        this.f6365d = this.f6367f.requery();
    }

    /* renamed from: r */
    public Cursor m29201r(Cursor cursor) {
        Cursor cursor2 = this.f6367f;
        if (cursor == cursor2) {
            return null;
        }
        if (cursor2 != null) {
            C1697a c1697a = this.f6370i;
            if (c1697a != null) {
                cursor2.unregisterContentObserver(c1697a);
            }
            DataSetObserver dataSetObserver = this.f6371j;
            if (dataSetObserver != null) {
                cursor2.unregisterDataSetObserver(dataSetObserver);
            }
        }
        this.f6367f = cursor;
        if (cursor != null) {
            C1697a c1697a2 = this.f6370i;
            if (c1697a2 != null) {
                cursor.registerContentObserver(c1697a2);
            }
            DataSetObserver dataSetObserver2 = this.f6371j;
            if (dataSetObserver2 != null) {
                cursor.registerDataSetObserver(dataSetObserver2);
            }
            this.f6369h = cursor.getColumnIndexOrThrow("_id");
            this.f6365d = true;
            notifyDataSetChanged();
        } else {
            this.f6369h = -1;
            this.f6365d = false;
            notifyDataSetInvalidated();
        }
        return cursor2;
    }
}
