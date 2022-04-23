package androidx.d.a;

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
import androidx.d.a.b;
/* loaded from: classes-dex2jar.jar:androidx/d/a/a.class */
public abstract class a extends BaseAdapter implements Filterable, b.a {

    /* renamed from: b  reason: collision with root package name */
    protected boolean f2087b;

    /* renamed from: c  reason: collision with root package name */
    protected boolean f2088c;

    /* renamed from: d  reason: collision with root package name */
    protected Cursor f2089d;
    protected Context e;
    protected int f;
    protected C0058a g;
    protected DataSetObserver h;
    protected androidx.d.a.b i;
    protected FilterQueryProvider j;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: androidx.d.a.a$a  reason: collision with other inner class name */
    /* loaded from: classes-dex2jar.jar:androidx/d/a/a$a.class */
    public final class C0058a extends ContentObserver {
        C0058a() {
            super(new Handler());
        }

        @Override // android.database.ContentObserver
        public final boolean deliverSelfNotifications() {
            return true;
        }

        @Override // android.database.ContentObserver
        public final void onChange(boolean z) {
            a.this.b();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:androidx/d/a/a$b.class */
    public final class b extends DataSetObserver {
        b() {
        }

        @Override // android.database.DataSetObserver
        public final void onChanged() {
            a.this.f2087b = true;
            a.this.notifyDataSetChanged();
        }

        @Override // android.database.DataSetObserver
        public final void onInvalidated() {
            a.this.f2087b = false;
            a.this.notifyDataSetInvalidated();
        }
    }

    @Deprecated
    public a(Context context, Cursor cursor) {
        a(context, cursor, 1);
    }

    public a(Context context, Cursor cursor, int i) {
        a(context, cursor, i);
    }

    public a(Context context, Cursor cursor, boolean z) {
        a(context, cursor, z ? 1 : 2);
    }

    private void a(Context context, Cursor cursor, int i) {
        boolean z = false;
        if ((i & 1) == 1) {
            i |= 2;
            this.f2088c = true;
        } else {
            this.f2088c = false;
        }
        if (cursor != null) {
            z = true;
        }
        this.f2089d = cursor;
        this.f2087b = z;
        this.e = context;
        this.f = z ? cursor.getColumnIndexOrThrow("_id") : -1;
        if ((i & 2) == 2) {
            this.g = new C0058a();
            this.h = new b();
        } else {
            this.g = null;
            this.h = null;
        }
        if (z) {
            C0058a aVar = this.g;
            if (aVar != null) {
                cursor.registerContentObserver(aVar);
            }
            DataSetObserver dataSetObserver = this.h;
            if (dataSetObserver != null) {
                cursor.registerDataSetObserver(dataSetObserver);
            }
        }
    }

    @Override // androidx.d.a.b.a
    public final Cursor a() {
        return this.f2089d;
    }

    public Cursor a(CharSequence charSequence) {
        FilterQueryProvider filterQueryProvider = this.j;
        return filterQueryProvider != null ? filterQueryProvider.runQuery(charSequence) : this.f2089d;
    }

    public abstract View a(Context context, Cursor cursor, ViewGroup viewGroup);

    public void a(Cursor cursor) {
        Cursor cursor2;
        Cursor cursor3 = this.f2089d;
        if (cursor == cursor3) {
            cursor2 = null;
        } else {
            if (cursor3 != null) {
                C0058a aVar = this.g;
                if (aVar != null) {
                    cursor3.unregisterContentObserver(aVar);
                }
                DataSetObserver dataSetObserver = this.h;
                if (dataSetObserver != null) {
                    cursor3.unregisterDataSetObserver(dataSetObserver);
                }
            }
            this.f2089d = cursor;
            if (cursor != null) {
                C0058a aVar2 = this.g;
                if (aVar2 != null) {
                    cursor.registerContentObserver(aVar2);
                }
                DataSetObserver dataSetObserver2 = this.h;
                if (dataSetObserver2 != null) {
                    cursor.registerDataSetObserver(dataSetObserver2);
                }
                this.f = cursor.getColumnIndexOrThrow("_id");
                this.f2087b = true;
                notifyDataSetChanged();
                cursor2 = cursor3;
            } else {
                this.f = -1;
                this.f2087b = false;
                notifyDataSetInvalidated();
                cursor2 = cursor3;
            }
        }
        if (cursor2 != null) {
            cursor2.close();
        }
    }

    public abstract void a(View view, Cursor cursor);

    public View b(Context context, Cursor cursor, ViewGroup viewGroup) {
        return a(context, cursor, viewGroup);
    }

    public CharSequence b(Cursor cursor) {
        return cursor == null ? "" : cursor.toString();
    }

    protected final void b() {
        Cursor cursor;
        if (this.f2088c && (cursor = this.f2089d) != null && !cursor.isClosed()) {
            this.f2087b = this.f2089d.requery();
        }
    }

    @Override // android.widget.Adapter
    public int getCount() {
        Cursor cursor;
        if (!this.f2087b || (cursor = this.f2089d) == null) {
            return 0;
        }
        return cursor.getCount();
    }

    @Override // android.widget.BaseAdapter, android.widget.SpinnerAdapter
    public View getDropDownView(int i, View view, ViewGroup viewGroup) {
        if (!this.f2087b) {
            return null;
        }
        this.f2089d.moveToPosition(i);
        View view2 = view;
        if (view == null) {
            view2 = b(this.e, this.f2089d, viewGroup);
        }
        a(view2, this.f2089d);
        return view2;
    }

    @Override // android.widget.Filterable
    public Filter getFilter() {
        if (this.i == null) {
            this.i = new androidx.d.a.b(this);
        }
        return this.i;
    }

    @Override // android.widget.Adapter
    public Object getItem(int i) {
        Cursor cursor;
        if (!this.f2087b || (cursor = this.f2089d) == null) {
            return null;
        }
        cursor.moveToPosition(i);
        return this.f2089d;
    }

    @Override // android.widget.Adapter
    public long getItemId(int i) {
        Cursor cursor;
        if (!this.f2087b || (cursor = this.f2089d) == null || !cursor.moveToPosition(i)) {
            return 0L;
        }
        return this.f2089d.getLong(this.f);
    }

    @Override // android.widget.Adapter
    public View getView(int i, View view, ViewGroup viewGroup) {
        if (!this.f2087b) {
            throw new IllegalStateException("this should only be called when the cursor is valid");
        } else if (this.f2089d.moveToPosition(i)) {
            View view2 = view;
            if (view == null) {
                view2 = a(this.e, this.f2089d, viewGroup);
            }
            a(view2, this.f2089d);
            return view2;
        } else {
            throw new IllegalStateException("couldn't move cursor to position ".concat(String.valueOf(i)));
        }
    }

    @Override // android.widget.BaseAdapter, android.widget.Adapter
    public boolean hasStableIds() {
        return true;
    }
}
