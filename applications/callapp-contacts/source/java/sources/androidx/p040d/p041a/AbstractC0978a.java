package androidx.p040d.p041a;

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
import androidx.p040d.p041a.C0981b;
/* renamed from: androidx.d.a.a */
/* loaded from: classes-dex2jar.jar:androidx/d/a/a.class */
public abstract class AbstractC0978a extends BaseAdapter implements Filterable, C0981b.AbstractC0982a {

    /* renamed from: b */
    protected boolean f3920b;

    /* renamed from: c */
    protected boolean f3921c;

    /* renamed from: d */
    protected Cursor f3922d;

    /* renamed from: e */
    protected Context f3923e;

    /* renamed from: f */
    protected int f3924f;

    /* renamed from: g */
    protected C0979a f3925g;

    /* renamed from: h */
    protected DataSetObserver f3926h;

    /* renamed from: i */
    protected C0981b f3927i;

    /* renamed from: j */
    protected FilterQueryProvider f3928j;

    /* renamed from: androidx.d.a.a$a */
    /* loaded from: classes-dex2jar.jar:androidx/d/a/a$a.class */
    public final class C0979a extends ContentObserver {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C0979a() {
            super(new Handler());
            AbstractC0978a.this = r5;
        }

        @Override // android.database.ContentObserver
        public final boolean deliverSelfNotifications() {
            return true;
        }

        @Override // android.database.ContentObserver
        public final void onChange(boolean z) {
            AbstractC0978a.this.m43877b();
        }
    }

    /* renamed from: androidx.d.a.a$b */
    /* loaded from: classes-dex2jar.jar:androidx/d/a/a$b.class */
    public final class C0980b extends DataSetObserver {
        C0980b() {
            AbstractC0978a.this = r4;
        }

        @Override // android.database.DataSetObserver
        public final void onChanged() {
            AbstractC0978a.this.f3920b = true;
            AbstractC0978a.this.notifyDataSetChanged();
        }

        @Override // android.database.DataSetObserver
        public final void onInvalidated() {
            AbstractC0978a.this.f3920b = false;
            AbstractC0978a.this.notifyDataSetInvalidated();
        }
    }

    @Deprecated
    public AbstractC0978a(Context context, Cursor cursor) {
        m43879a(context, cursor, 1);
    }

    public AbstractC0978a(Context context, Cursor cursor, int i) {
        m43879a(context, cursor, i);
    }

    public AbstractC0978a(Context context, Cursor cursor, boolean z) {
        m43879a(context, cursor, z ? 1 : 2);
    }

    /* renamed from: a */
    private void m43879a(Context context, Cursor cursor, int i) {
        boolean z = false;
        if ((i & 1) == 1) {
            i |= 2;
            this.f3921c = true;
        } else {
            this.f3921c = false;
        }
        if (cursor != null) {
            z = true;
        }
        this.f3922d = cursor;
        this.f3920b = z;
        this.f3923e = context;
        this.f3924f = z ? cursor.getColumnIndexOrThrow("_id") : -1;
        if ((i & 2) == 2) {
            this.f3925g = new C0979a();
            this.f3926h = new C0980b();
        } else {
            this.f3925g = null;
            this.f3926h = null;
        }
        if (z) {
            C0979a c0979a = this.f3925g;
            if (c0979a != null) {
                cursor.registerContentObserver(c0979a);
            }
            DataSetObserver dataSetObserver = this.f3926h;
            if (dataSetObserver == null) {
                return;
            }
            cursor.registerDataSetObserver(dataSetObserver);
        }
    }

    @Override // androidx.p040d.p041a.C0981b.AbstractC0982a
    /* renamed from: a */
    public final Cursor mo43876a() {
        return this.f3922d;
    }

    /* renamed from: a */
    public Cursor mo43874a(CharSequence charSequence) {
        FilterQueryProvider filterQueryProvider = this.f3928j;
        return filterQueryProvider != null ? filterQueryProvider.runQuery(charSequence) : this.f3922d;
    }

    /* renamed from: a */
    public abstract View mo43872a(Context context, Cursor cursor, ViewGroup viewGroup);

    /* renamed from: a */
    public void mo43875a(Cursor cursor) {
        Cursor cursor2;
        Cursor cursor3 = this.f3922d;
        if (cursor == cursor3) {
            cursor2 = null;
        } else {
            if (cursor3 != null) {
                C0979a c0979a = this.f3925g;
                if (c0979a != null) {
                    cursor3.unregisterContentObserver(c0979a);
                }
                DataSetObserver dataSetObserver = this.f3926h;
                if (dataSetObserver != null) {
                    cursor3.unregisterDataSetObserver(dataSetObserver);
                }
            }
            this.f3922d = cursor;
            if (cursor != null) {
                C0979a c0979a2 = this.f3925g;
                if (c0979a2 != null) {
                    cursor.registerContentObserver(c0979a2);
                }
                DataSetObserver dataSetObserver2 = this.f3926h;
                if (dataSetObserver2 != null) {
                    cursor.registerDataSetObserver(dataSetObserver2);
                }
                this.f3924f = cursor.getColumnIndexOrThrow("_id");
                this.f3920b = true;
                notifyDataSetChanged();
                cursor2 = cursor3;
            } else {
                this.f3924f = -1;
                this.f3920b = false;
                notifyDataSetInvalidated();
                cursor2 = cursor3;
            }
        }
        if (cursor2 != null) {
            cursor2.close();
        }
    }

    /* renamed from: a */
    public abstract void mo43878a(View view, Cursor cursor);

    /* renamed from: b */
    public View mo43871b(Context context, Cursor cursor, ViewGroup viewGroup) {
        return mo43872a(context, cursor, viewGroup);
    }

    /* renamed from: b */
    public CharSequence mo43873b(Cursor cursor) {
        return cursor == null ? "" : cursor.toString();
    }

    /* renamed from: b */
    protected final void m43877b() {
        Cursor cursor;
        if (!this.f3921c || (cursor = this.f3922d) == null || cursor.isClosed()) {
            return;
        }
        this.f3920b = this.f3922d.requery();
    }

    @Override // android.widget.Adapter
    public int getCount() {
        Cursor cursor;
        if (!this.f3920b || (cursor = this.f3922d) == null) {
            return 0;
        }
        return cursor.getCount();
    }

    @Override // android.widget.BaseAdapter, android.widget.SpinnerAdapter
    public View getDropDownView(int i, View view, ViewGroup viewGroup) {
        if (this.f3920b) {
            this.f3922d.moveToPosition(i);
            View view2 = view;
            if (view == null) {
                view2 = mo43871b(this.f3923e, this.f3922d, viewGroup);
            }
            mo43878a(view2, this.f3922d);
            return view2;
        }
        return null;
    }

    @Override // android.widget.Filterable
    public Filter getFilter() {
        if (this.f3927i == null) {
            this.f3927i = new C0981b(this);
        }
        return this.f3927i;
    }

    @Override // android.widget.Adapter
    public Object getItem(int i) {
        Cursor cursor;
        if (!this.f3920b || (cursor = this.f3922d) == null) {
            return null;
        }
        cursor.moveToPosition(i);
        return this.f3922d;
    }

    @Override // android.widget.Adapter
    public long getItemId(int i) {
        Cursor cursor;
        if (!this.f3920b || (cursor = this.f3922d) == null || !cursor.moveToPosition(i)) {
            return 0L;
        }
        return this.f3922d.getLong(this.f3924f);
    }

    @Override // android.widget.Adapter
    public View getView(int i, View view, ViewGroup viewGroup) {
        if (this.f3920b) {
            if (!this.f3922d.moveToPosition(i)) {
                throw new IllegalStateException("couldn't move cursor to position ".concat(String.valueOf(i)));
            }
            View view2 = view;
            if (view == null) {
                view2 = mo43872a(this.f3923e, this.f3922d, viewGroup);
            }
            mo43878a(view2, this.f3922d);
            return view2;
        }
        throw new IllegalStateException("this should only be called when the cursor is valid");
    }

    @Override // android.widget.BaseAdapter, android.widget.Adapter
    public boolean hasStableIds() {
        return true;
    }
}
