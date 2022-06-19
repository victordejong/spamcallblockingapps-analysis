package p205q0;

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
import p007a6.C0033h;
import p205q0.C4141b;
/* renamed from: q0.a */
/* loaded from: classes-dex2jar.jar:q0/a.class */
public abstract class AbstractC4138a extends BaseAdapter implements Filterable, C4141b.AbstractC4142a {

    /* renamed from: a */
    public boolean f13056a;

    /* renamed from: b */
    public boolean f13057b;

    /* renamed from: c */
    public Cursor f13058c;

    /* renamed from: d */
    public Context f13059d;

    /* renamed from: e */
    public int f13060e;

    /* renamed from: f */
    public C4139a f13061f;

    /* renamed from: g */
    public DataSetObserver f13062g;

    /* renamed from: h */
    public C4141b f13063h;

    /* renamed from: q0.a$a */
    /* loaded from: classes-dex2jar.jar:q0/a$a.class */
    public class C4139a extends ContentObserver {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C4139a() {
            super(new Handler());
            AbstractC4138a.this = r5;
        }

        @Override // android.database.ContentObserver
        public boolean deliverSelfNotifications() {
            return true;
        }

        @Override // android.database.ContentObserver
        public void onChange(boolean z) {
            Cursor cursor;
            AbstractC4138a abstractC4138a = AbstractC4138a.this;
            if (!abstractC4138a.f13057b || (cursor = abstractC4138a.f13058c) == null || cursor.isClosed()) {
                return;
            }
            abstractC4138a.f13056a = abstractC4138a.f13058c.requery();
        }
    }

    /* renamed from: q0.a$b */
    /* loaded from: classes-dex2jar.jar:q0/a$b.class */
    public class C4140b extends DataSetObserver {
        public C4140b() {
            AbstractC4138a.this = r4;
        }

        @Override // android.database.DataSetObserver
        public void onChanged() {
            AbstractC4138a abstractC4138a = AbstractC4138a.this;
            abstractC4138a.f13056a = true;
            abstractC4138a.notifyDataSetChanged();
        }

        @Override // android.database.DataSetObserver
        public void onInvalidated() {
            AbstractC4138a abstractC4138a = AbstractC4138a.this;
            abstractC4138a.f13056a = false;
            abstractC4138a.notifyDataSetInvalidated();
        }
    }

    public AbstractC4138a(Context context, Cursor cursor, boolean z) {
        boolean z2 = z ? true : true;
        if (z2 && true) {
            z2 |= true;
            this.f13057b = true;
        } else {
            this.f13057b = false;
        }
        boolean z3 = cursor != null;
        this.f13058c = cursor;
        this.f13056a = z3;
        this.f13059d = context;
        this.f13060e = z3 ? cursor.getColumnIndexOrThrow("_id") : -1;
        if (z2 & true) {
            this.f13061f = new C4139a();
            this.f13062g = new C4140b();
        } else {
            this.f13061f = null;
            this.f13062g = null;
        }
        if (z3) {
            C4139a c4139a = this.f13061f;
            if (c4139a != null) {
                cursor.registerContentObserver(c4139a);
            }
            DataSetObserver dataSetObserver = this.f13062g;
            if (dataSetObserver == null) {
                return;
            }
            cursor.registerDataSetObserver(dataSetObserver);
        }
    }

    /* renamed from: a */
    public abstract void mo1356a(View view, Context context, Cursor cursor);

    /* renamed from: b */
    public void mo1355b(Cursor cursor) {
        Cursor cursor2;
        Cursor cursor3 = this.f13058c;
        if (cursor == cursor3) {
            cursor2 = null;
        } else {
            if (cursor3 != null) {
                C4139a c4139a = this.f13061f;
                if (c4139a != null) {
                    cursor3.unregisterContentObserver(c4139a);
                }
                DataSetObserver dataSetObserver = this.f13062g;
                if (dataSetObserver != null) {
                    cursor3.unregisterDataSetObserver(dataSetObserver);
                }
            }
            this.f13058c = cursor;
            if (cursor != null) {
                C4139a c4139a2 = this.f13061f;
                if (c4139a2 != null) {
                    cursor.registerContentObserver(c4139a2);
                }
                DataSetObserver dataSetObserver2 = this.f13062g;
                if (dataSetObserver2 != null) {
                    cursor.registerDataSetObserver(dataSetObserver2);
                }
                this.f13060e = cursor.getColumnIndexOrThrow("_id");
                this.f13056a = true;
                notifyDataSetChanged();
                cursor2 = cursor3;
            } else {
                this.f13060e = -1;
                this.f13056a = false;
                notifyDataSetInvalidated();
                cursor2 = cursor3;
            }
        }
        if (cursor2 != null) {
            cursor2.close();
        }
    }

    /* renamed from: c */
    public abstract CharSequence mo1354c(Cursor cursor);

    /* renamed from: d */
    public abstract View mo1353d(Context context, Cursor cursor, ViewGroup viewGroup);

    @Override // android.widget.Adapter
    public int getCount() {
        Cursor cursor;
        if (!this.f13056a || (cursor = this.f13058c) == null) {
            return 0;
        }
        return cursor.getCount();
    }

    @Override // android.widget.BaseAdapter, android.widget.SpinnerAdapter
    public View getDropDownView(int i, View view, ViewGroup viewGroup) {
        if (this.f13056a) {
            this.f13058c.moveToPosition(i);
            View view2 = view;
            if (view == null) {
                AbstractC4143c abstractC4143c = (AbstractC4143c) this;
                view2 = abstractC4143c.f13069k.inflate(abstractC4143c.f13068j, viewGroup, false);
            }
            mo1356a(view2, this.f13059d, this.f13058c);
            return view2;
        }
        return null;
    }

    @Override // android.widget.Filterable
    public Filter getFilter() {
        if (this.f13063h == null) {
            this.f13063h = new C4141b(this);
        }
        return this.f13063h;
    }

    @Override // android.widget.Adapter
    public Object getItem(int i) {
        Cursor cursor;
        if (!this.f13056a || (cursor = this.f13058c) == null) {
            return null;
        }
        cursor.moveToPosition(i);
        return this.f13058c;
    }

    @Override // android.widget.Adapter
    public long getItemId(int i) {
        Cursor cursor;
        if (!this.f13056a || (cursor = this.f13058c) == null || !cursor.moveToPosition(i)) {
            return 0L;
        }
        return this.f13058c.getLong(this.f13060e);
    }

    @Override // android.widget.Adapter
    public View getView(int i, View view, ViewGroup viewGroup) {
        if (this.f13056a) {
            if (!this.f13058c.moveToPosition(i)) {
                throw new IllegalStateException(C0033h.m8886k("couldn't move cursor to position ", i));
            }
            View view2 = view;
            if (view == null) {
                view2 = mo1353d(this.f13059d, this.f13058c, viewGroup);
            }
            mo1356a(view2, this.f13059d, this.f13058c);
            return view2;
        }
        throw new IllegalStateException("this should only be called when the cursor is valid");
    }
}
