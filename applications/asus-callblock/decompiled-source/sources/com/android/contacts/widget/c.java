package com.android.contacts.widget;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import android.widget.SectionIndexer;
/* loaded from: classes-dex2jar.jar:com/android/contacts/widget/c.class */
public abstract class c extends d implements SectionIndexer {
    protected Context U;
    protected SectionIndexer V;
    public boolean X;
    private View d;
    protected int W = 0;
    private a e = new a();

    /* loaded from: classes-dex2jar.jar:com/android/contacts/widget/c$a.class */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        int f2209a = -1;

        /* renamed from: b  reason: collision with root package name */
        public boolean f2210b;
        public boolean c;
        public String d;
    }

    public c(Context context) {
        super(context);
        this.U = context;
    }

    @Override // com.android.contacts.widget.d, com.android.contacts.widget.PinnedHeaderListView.b
    public final View a(int i, View view, ViewGroup viewGroup) {
        View a2;
        if (!this.X || i != c_() - 1) {
            a2 = super.a(i, view, viewGroup);
        } else {
            if (this.d == null) {
                this.d = a(this.U);
            }
            a2 = this.d;
        }
        return a2;
    }

    public abstract View a(Context context);

    public abstract void a(View view);

    public abstract void a(View view, String str);

    public final void a(SectionIndexer sectionIndexer) {
        this.V = sectionIndexer;
        this.e.f2209a = -1;
    }

    @Override // com.android.contacts.widget.d, com.android.contacts.widget.PinnedHeaderListView.b
    public final void a(PinnedHeaderListView pinnedHeaderListView) {
        int h;
        super.a(pinnedHeaderListView);
        if (this.X) {
            int c_ = c_() - 1;
            if (this.V == null || getCount() == 0) {
                pinnedHeaderListView.setHeaderInvisible(c_, false);
                return;
            }
            int b2 = pinnedHeaderListView.b(pinnedHeaderListView.a());
            int headerViewsCount = b2 - pinnedHeaderListView.getHeaderViewsCount();
            int sectionForPosition = (g(headerViewsCount) != this.W || (h = h(headerViewsCount)) == -1) ? -1 : getSectionForPosition(h);
            if (sectionForPosition == -1) {
                pinnedHeaderListView.setHeaderInvisible(c_, false);
                return;
            }
            a(this.d, (String) this.V.getSections()[sectionForPosition]);
            if (sectionForPosition == 0) {
                a(this.d);
            } else {
                b(this.d);
            }
            int i = i(this.W);
            int i2 = i;
            if (d(this.W)) {
                i2 = i + 1;
            }
            pinnedHeaderListView.setFadingHeader(c_, b2, headerViewsCount == (i2 + getPositionForSection(sectionForPosition + 1)) - 1);
        }
    }

    public abstract void b(View view);

    @Override // com.android.contacts.widget.d, com.android.contacts.widget.PinnedHeaderListView.b
    public final int c_() {
        return this.X ? super.c_() + 1 : super.c_();
    }

    @Override // android.widget.SectionIndexer
    public int getPositionForSection(int i) {
        return this.V == null ? -1 : this.V.getPositionForSection(i);
    }

    @Override // android.widget.SectionIndexer
    public int getSectionForPosition(int i) {
        return this.V == null ? -1 : this.V.getSectionForPosition(i);
    }

    @Override // android.widget.SectionIndexer
    public Object[] getSections() {
        return this.V == null ? new String[]{" "} : this.V.getSections();
    }

    public final a o(int i) {
        a aVar;
        if (this.e.f2209a == i) {
            aVar = this.e;
        } else {
            this.e.f2209a = i;
            if (this.X) {
                int sectionForPosition = getSectionForPosition(i);
                if (sectionForPosition == -1 || getPositionForSection(sectionForPosition) != i) {
                    this.e.f2210b = false;
                    this.e.d = null;
                } else {
                    this.e.f2210b = true;
                    this.e.d = (String) getSections()[sectionForPosition];
                }
                this.e.c = getPositionForSection(sectionForPosition + 1) - 1 == i;
            } else {
                this.e.f2210b = false;
                this.e.c = false;
                this.e.d = null;
            }
            aVar = this.e;
        }
        return aVar;
    }
}
