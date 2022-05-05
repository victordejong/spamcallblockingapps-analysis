package com.android.contacts.list;

import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.SectionIndexer;
import com.android.contacts.widget.PinnedHeaderListView;
/* loaded from: classes-dex2jar.jar:com/android/contacts/list/b.class */
public final class b extends BaseAdapter implements SectionIndexer, PinnedHeaderListView.b {

    /* renamed from: a  reason: collision with root package name */
    public final o f1793a;

    /* renamed from: b  reason: collision with root package name */
    private final View f1794b;
    private final int c;
    private final int d;

    @Override // com.android.contacts.widget.PinnedHeaderListView.b
    public final int a(int i) {
        return 0;
    }

    @Override // com.android.contacts.widget.PinnedHeaderListView.b
    public final View a(int i, View view, ViewGroup viewGroup) {
        return null;
    }

    @Override // com.android.contacts.widget.PinnedHeaderListView.b
    public final void a(PinnedHeaderListView pinnedHeaderListView) {
    }

    @Override // android.widget.BaseAdapter, android.widget.ListAdapter
    public final boolean areAllItemsEnabled() {
        return this.f1794b.isEnabled() && this.f1793a.areAllItemsEnabled();
    }

    @Override // com.android.contacts.widget.PinnedHeaderListView.b
    public final int c_() {
        return 0;
    }

    @Override // android.widget.Adapter
    public final int getCount() {
        return this.f1793a.e() ? 1 : this.f1793a.getCount() + 1;
    }

    @Override // android.widget.Adapter
    public final Object getItem(int i) {
        return i == 0 ? this.f1794b : this.f1793a;
    }

    @Override // android.widget.Adapter
    public final long getItemId(int i) {
        return i;
    }

    @Override // android.widget.BaseAdapter, android.widget.Adapter
    public final int getItemViewType(int i) {
        return i == 0 ? this.f1793a.getViewTypeCount() : this.f1793a.getItemViewType(i - 1);
    }

    @Override // android.widget.SectionIndexer
    public final int getPositionForSection(int i) {
        return this.f1793a.getPositionForSection(i) + 1;
    }

    @Override // android.widget.SectionIndexer
    public final int getSectionForPosition(int i) {
        return i == 0 ? 0 : this.f1793a.getSectionForPosition(i - 1);
    }

    @Override // android.widget.SectionIndexer
    public final Object[] getSections() {
        return this.f1793a.getSections();
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r8v3, types: [android.view.View] */
    @Override // android.widget.Adapter
    public final View getView(int i, View view, ViewGroup viewGroup) {
        ContactListItemView contactListItemView;
        if (i == 0) {
            this.f1794b.setPadding(this.c, this.f1794b.getPaddingTop(), this.d, this.f1794b.getPaddingBottom());
            contactListItemView = this.f1794b;
        } else {
            ContactListItemView contactListItemView2 = (ContactListItemView) this.f1793a.getView(i - 1, view, null);
            contactListItemView2.setPadding(this.c, contactListItemView2.getPaddingTop(), this.d, contactListItemView2.getPaddingBottom());
            contactListItemView2.setSelectionBoundsHorizontalMargin(this.c, this.d);
            contactListItemView2.setHorizontalDividerColor();
            contactListItemView = contactListItemView2;
        }
        return contactListItemView;
    }

    @Override // android.widget.BaseAdapter, android.widget.Adapter
    public final int getViewTypeCount() {
        return this.f1793a.getViewTypeCount() + 1;
    }

    @Override // android.widget.BaseAdapter, android.widget.ListAdapter
    public final boolean isEnabled(int i) {
        return i == 0 ? false : this.f1793a.isEnabled(i - 1);
    }
}
