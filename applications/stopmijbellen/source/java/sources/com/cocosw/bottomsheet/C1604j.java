package com.cocosw.bottomsheet;

import android.content.Context;
import android.database.DataSetObserver;
import android.text.TextUtils;
import android.util.SparseArray;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.GridView;
import android.widget.ListAdapter;
import android.widget.TextView;
import com.google.android.gms.common.api.Api;
/* renamed from: com.cocosw.bottomsheet.j */
/* loaded from: classes-dex2jar.jar:com/cocosw/bottomsheet/j.class */
public class C1604j extends BaseAdapter {

    /* renamed from: b */
    public int f5951b;

    /* renamed from: c */
    public LayoutInflater f5952c;

    /* renamed from: d */
    public ListAdapter f5953d;

    /* renamed from: g */
    public Context f5956g;

    /* renamed from: h */
    public View f5957h;

    /* renamed from: i */
    public int f5958i;

    /* renamed from: j */
    public int f5959j;

    /* renamed from: k */
    public int f5960k;

    /* renamed from: l */
    public int f5961l;

    /* renamed from: m */
    public int f5962m;

    /* renamed from: n */
    public int f5963n;

    /* renamed from: o */
    public int f5964o;

    /* renamed from: p */
    public int f5965p;

    /* renamed from: q */
    public GridView f5966q;

    /* renamed from: r */
    public int f5967r;

    /* renamed from: s */
    public int f5968s;

    /* renamed from: a */
    public boolean f5950a = true;

    /* renamed from: e */
    public SparseArray<C1606b> f5954e = new SparseArray<>();

    /* renamed from: f */
    public C1606b[] f5955f = new C1606b[0];

    /* renamed from: com.cocosw.bottomsheet.j$a */
    /* loaded from: classes-dex2jar.jar:com/cocosw/bottomsheet/j$a.class */
    public class C1605a extends DataSetObserver {
        public C1605a() {
            C1604j.this = r4;
        }

        @Override // android.database.DataSetObserver
        public void onChanged() {
            C1604j c1604j = C1604j.this;
            c1604j.f5950a = !c1604j.f5953d.isEmpty();
            C1604j.this.notifyDataSetChanged();
        }

        @Override // android.database.DataSetObserver
        public void onInvalidated() {
            C1604j c1604j = C1604j.this;
            c1604j.f5950a = false;
            c1604j.notifyDataSetInvalidated();
        }
    }

    /* renamed from: com.cocosw.bottomsheet.j$b */
    /* loaded from: classes-dex2jar.jar:com/cocosw/bottomsheet/j$b.class */
    public static class C1606b {

        /* renamed from: a */
        public int f5970a;

        /* renamed from: b */
        public int f5971b;

        /* renamed from: c */
        public CharSequence f5972c;

        /* renamed from: d */
        public int f5973d = 0;

        public C1606b(int i, CharSequence charSequence) {
            this.f5970a = i;
            this.f5972c = charSequence;
        }
    }

    public C1604j(Context context, BaseAdapter baseAdapter, int i, int i2, int i3) {
        this.f5952c = (LayoutInflater) context.getSystemService("layout_inflater");
        this.f5951b = i;
        this.f5967r = i2;
        this.f5968s = i3;
        this.f5953d = baseAdapter;
        this.f5956g = context;
        baseAdapter.registerDataSetObserver(new C1605a());
    }

    /* renamed from: a */
    public final int m4853a() {
        int i = this.f5958i;
        if (i > 0) {
            return i;
        }
        if (this.f5960k != this.f5966q.getWidth()) {
            this.f5963n = this.f5966q.getStretchMode();
            this.f5960k = ((PinnedSectionGridView) this.f5966q).getWidth() - (this.f5966q.getPaddingRight() + this.f5966q.getPaddingLeft());
            this.f5959j = ((PinnedSectionGridView) this.f5966q).getNumColumns();
            this.f5964o = ((PinnedSectionGridView) this.f5966q).getColumnWidth();
            this.f5965p = ((PinnedSectionGridView) this.f5966q).getHorizontalSpacing();
        }
        int i2 = this.f5960k;
        int i3 = this.f5959j;
        int i4 = this.f5964o;
        int i5 = this.f5965p;
        int i6 = (i2 - (i3 * i4)) - ((i3 - 1) * i5);
        int i7 = this.f5963n;
        if (i7 == 0) {
            this.f5960k = i2 - i6;
            this.f5961l = i4;
            this.f5962m = i5;
        } else if (i7 == 1) {
            this.f5961l = i4;
            if (i3 > 1) {
                this.f5962m = (i6 / (i3 - 1)) + i5;
            } else {
                this.f5962m = i5 + i6;
            }
        } else if (i7 == 2) {
            this.f5961l = (i6 / i3) + i4;
            this.f5962m = i5;
        } else if (i7 == 3) {
            this.f5961l = i4;
            this.f5962m = i5;
            this.f5960k = (i5 * 2) + (i2 - i6);
        }
        int i8 = ((this.f5961l + this.f5962m) * (i3 - 1)) + this.f5960k;
        this.f5958i = i8;
        return i8;
    }

    @Override // android.widget.BaseAdapter, android.widget.ListAdapter
    public boolean areAllItemsEnabled() {
        return this.f5953d.areAllItemsEnabled();
    }

    /* renamed from: b */
    public boolean m4852b(int i) {
        return this.f5954e.get(i) != null;
    }

    /* renamed from: c */
    public int m4851c(int i) {
        if (m4852b(i)) {
            return -1;
        }
        int i2 = 0;
        for (int i3 = 0; i3 < this.f5954e.size() && this.f5954e.valueAt(i3).f5971b <= i; i3++) {
            i2--;
        }
        return i + i2;
    }

    @Override // android.widget.Adapter
    public int getCount() {
        int i;
        if (this.f5950a) {
            i = this.f5954e.size() + this.f5953d.getCount();
        } else {
            i = 0;
        }
        return i;
    }

    @Override // android.widget.Adapter
    public Object getItem(int i) {
        return m4852b(i) ? this.f5954e.get(i) : this.f5953d.getItem(m4851c(i));
    }

    /* JADX WARN: Type inference failed for: r0v5, types: [long] */
    /* JADX WARN: Type inference failed for: r0v8, types: [long] */
    @Override // android.widget.Adapter
    public long getItemId(int i) {
        return m4852b(i) ? Api.BaseClientBuilder.API_PRIORITY_OTHER - this.f5954e.indexOfKey(i) : this.f5953d.getItemId(m4851c(i));
    }

    @Override // android.widget.BaseAdapter, android.widget.Adapter
    public int getItemViewType(int i) {
        return m4852b(i) ? getViewTypeCount() - 1 : this.f5953d.getItemViewType(m4851c(i));
    }

    @Override // android.widget.Adapter
    public View getView(int i, View view, ViewGroup viewGroup) {
        C1603i c1603i;
        View view2;
        if (m4852b(i)) {
            if (view == null) {
                view2 = this.f5952c.inflate(this.f5951b, viewGroup, false);
            } else {
                view2 = view;
                if (view.findViewById(this.f5967r) == null) {
                    view2 = this.f5952c.inflate(this.f5951b, viewGroup, false);
                }
            }
            int i2 = this.f5954e.get(i).f5973d;
            if (i2 == 1) {
                HeaderLayout headerLayout = (HeaderLayout) view2.findViewById(this.f5967r);
                if (!TextUtils.isEmpty(this.f5954e.get(i).f5972c)) {
                    ((TextView) view2.findViewById(this.f5968s)).setText(this.f5954e.get(i).f5972c);
                }
                headerLayout.f5892a = m4853a();
                c1603i = view2;
            } else if (i2 != 2) {
                View view3 = this.f5957h;
                C1603i c1603i2 = new C1603i(this.f5956g);
                c1603i2.f5949a = view3;
                c1603i = c1603i2;
            } else {
                HeaderLayout headerLayout2 = (HeaderLayout) view2.findViewById(this.f5967r);
                if (!TextUtils.isEmpty(this.f5954e.get(i).f5972c)) {
                    ((TextView) view2.findViewById(this.f5968s)).setText(this.f5954e.get(i).f5972c);
                }
                headerLayout2.f5892a = 0;
                c1603i = view2;
            }
        } else {
            View view4 = this.f5953d.getView(m4851c(i), view, viewGroup);
            this.f5957h = view4;
            c1603i = view4;
        }
        return c1603i;
    }

    @Override // android.widget.BaseAdapter, android.widget.Adapter
    public int getViewTypeCount() {
        return this.f5953d.getViewTypeCount() + 1;
    }

    @Override // android.widget.BaseAdapter, android.widget.Adapter
    public boolean hasStableIds() {
        return this.f5953d.hasStableIds();
    }

    @Override // android.widget.BaseAdapter, android.widget.Adapter
    public boolean isEmpty() {
        return this.f5953d.isEmpty();
    }

    @Override // android.widget.BaseAdapter, android.widget.ListAdapter
    public boolean isEnabled(int i) {
        return m4852b(i) ? false : this.f5953d.isEnabled(m4851c(i));
    }
}
