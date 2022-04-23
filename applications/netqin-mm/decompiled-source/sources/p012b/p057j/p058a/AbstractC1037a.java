package p012b.p057j.p058a;

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
import p012b.p057j.p058a.C1040b;
/* renamed from: b.j.a.a */
/* loaded from: classes-dex2jar.jar:b/j/a/a.class */
public abstract class AbstractC1037a extends BaseAdapter implements Filterable, C1040b.AbstractC1041a {

    /* renamed from: a */
    public boolean f4326a;

    /* renamed from: b */
    public boolean f4327b;

    /* renamed from: c */
    public Cursor f4328c;

    /* renamed from: d */
    public Context f4329d;

    /* renamed from: e */
    public int f4330e;

    /* renamed from: f */
    public C1038a f4331f;

    /* renamed from: g */
    public DataSetObserver f4332g;

    /* renamed from: h */
    public C1040b f4333h;

    /* renamed from: b.j.a.a$a */
    /* loaded from: classes-dex2jar.jar:b/j/a/a$a.class */
    public class C1038a extends ContentObserver {
        public C1038a() {
            super(new Handler());
        }

        @Override // android.database.ContentObserver
        public boolean deliverSelfNotifications() {
            return true;
        }

        @Override // android.database.ContentObserver
        public void onChange(boolean z) {
            AbstractC1037a.this.m35081b();
        }
    }

    /* renamed from: b.j.a.a$b */
    /* loaded from: classes-dex2jar.jar:b/j/a/a$b.class */
    public class C1039b extends DataSetObserver {
        public C1039b() {
        }

        @Override // android.database.DataSetObserver
        public void onChanged() {
            AbstractC1037a aVar = AbstractC1037a.this;
            aVar.f4326a = true;
            aVar.notifyDataSetChanged();
        }

        @Override // android.database.DataSetObserver
        public void onInvalidated() {
            AbstractC1037a aVar = AbstractC1037a.this;
            aVar.f4326a = false;
            aVar.notifyDataSetInvalidated();
        }
    }

    public AbstractC1037a(Context context, Cursor cursor, boolean z) {
        m35083a(context, cursor, z ? 1 : 2);
    }

    @Override // p012b.p057j.p058a.C1040b.AbstractC1041a
    /* renamed from: a */
    public Cursor mo35079a() {
        return this.f4328c;
    }

    /* renamed from: a */
    public abstract View mo35075a(Context context, Cursor cursor, ViewGroup viewGroup);

    /* renamed from: a */
    public void m35083a(Context context, Cursor cursor, int i) {
        boolean z = false;
        if ((i & 1) == 1) {
            i |= 2;
            this.f4327b = true;
        } else {
            this.f4327b = false;
        }
        if (cursor != null) {
            z = true;
        }
        this.f4328c = cursor;
        this.f4326a = z;
        this.f4329d = context;
        this.f4330e = z ? cursor.getColumnIndexOrThrow("_id") : -1;
        if ((i & 2) == 2) {
            this.f4331f = new C1038a();
            this.f4332g = new C1039b();
        } else {
            this.f4331f = null;
            this.f4332g = null;
        }
        if (z) {
            C1038a aVar = this.f4331f;
            if (aVar != null) {
                cursor.registerContentObserver(aVar);
            }
            DataSetObserver dataSetObserver = this.f4332g;
            if (dataSetObserver != null) {
                cursor.registerDataSetObserver(dataSetObserver);
            }
        }
    }

    /* renamed from: a */
    public void mo35078a(Cursor cursor) {
        Cursor c = m35080c(cursor);
        if (c != null) {
            c.close();
        }
    }

    /* renamed from: a */
    public abstract void mo35082a(View view, Context context, Cursor cursor);

    /* renamed from: b */
    public abstract View mo35074b(Context context, Cursor cursor, ViewGroup viewGroup);

    /* renamed from: b */
    public abstract CharSequence mo35076b(Cursor cursor);

    /* renamed from: b */
    public void m35081b() {
        Cursor cursor;
        if (this.f4327b && (cursor = this.f4328c) != null && !cursor.isClosed()) {
            this.f4326a = this.f4328c.requery();
        }
    }

    /* renamed from: c */
    public Cursor m35080c(Cursor cursor) {
        Cursor cursor2 = this.f4328c;
        if (cursor == cursor2) {
            return null;
        }
        if (cursor2 != null) {
            C1038a aVar = this.f4331f;
            if (aVar != null) {
                cursor2.unregisterContentObserver(aVar);
            }
            DataSetObserver dataSetObserver = this.f4332g;
            if (dataSetObserver != null) {
                cursor2.unregisterDataSetObserver(dataSetObserver);
            }
        }
        this.f4328c = cursor;
        if (cursor != null) {
            C1038a aVar2 = this.f4331f;
            if (aVar2 != null) {
                cursor.registerContentObserver(aVar2);
            }
            DataSetObserver dataSetObserver2 = this.f4332g;
            if (dataSetObserver2 != null) {
                cursor.registerDataSetObserver(dataSetObserver2);
            }
            this.f4330e = cursor.getColumnIndexOrThrow("_id");
            this.f4326a = true;
            notifyDataSetChanged();
        } else {
            this.f4330e = -1;
            this.f4326a = false;
            notifyDataSetInvalidated();
        }
        return cursor2;
    }

    @Override // android.widget.Adapter
    public int getCount() {
        Cursor cursor;
        if (!this.f4326a || (cursor = this.f4328c) == null) {
            return 0;
        }
        return cursor.getCount();
    }

    @Override // android.widget.BaseAdapter, android.widget.SpinnerAdapter
    public View getDropDownView(int i, View view, ViewGroup viewGroup) {
        if (!this.f4326a) {
            return null;
        }
        this.f4328c.moveToPosition(i);
        View view2 = view;
        if (view == null) {
            view2 = mo35075a(this.f4329d, this.f4328c, viewGroup);
        }
        mo35082a(view2, this.f4329d, this.f4328c);
        return view2;
    }

    @Override // android.widget.Filterable
    public Filter getFilter() {
        if (this.f4333h == null) {
            this.f4333h = new C1040b(this);
        }
        return this.f4333h;
    }

    @Override // android.widget.Adapter
    public Object getItem(int i) {
        Cursor cursor;
        if (!this.f4326a || (cursor = this.f4328c) == null) {
            return null;
        }
        cursor.moveToPosition(i);
        return this.f4328c;
    }

    @Override // android.widget.Adapter
    public long getItemId(int i) {
        Cursor cursor;
        if (!this.f4326a || (cursor = this.f4328c) == null || !cursor.moveToPosition(i)) {
            return 0L;
        }
        return this.f4328c.getLong(this.f4330e);
    }

    @Override // android.widget.Adapter
    public View getView(int i, View view, ViewGroup viewGroup) {
        if (!this.f4326a) {
            throw new IllegalStateException("this should only be called when the cursor is valid");
        } else if (this.f4328c.moveToPosition(i)) {
            View view2 = view;
            if (view == null) {
                view2 = mo35074b(this.f4329d, this.f4328c, viewGroup);
            }
            mo35082a(view2, this.f4329d, this.f4328c);
            return view2;
        } else {
            throw new IllegalStateException("couldn't move cursor to position " + i);
        }
    }
}
