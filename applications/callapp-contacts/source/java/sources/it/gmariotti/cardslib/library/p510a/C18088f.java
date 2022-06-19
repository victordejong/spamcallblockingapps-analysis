package it.gmariotti.cardslib.library.p510a;

import android.content.Context;
import android.util.SparseArray;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseExpandableListAdapter;
import android.widget.TextView;
import android.widget.Toast;
import it.gmariotti.cardslib.library.C18061a;
import it.gmariotti.cardslib.library.view.CardExpandableListView;
import it.gmariotti.cardslib.library.view.p514a.AbstractC18152a;
/* renamed from: it.gmariotti.cardslib.library.a.f */
/* loaded from: classes5-dex2jar.jar:it/gmariotti/cardslib/library/a/f.class */
public final class C18088f<T> extends BaseExpandableListAdapter {

    /* renamed from: a */
    protected final SparseArray<C18069a<T>> f63008a;

    /* renamed from: b */
    public LayoutInflater f63009b;

    /* renamed from: c */
    protected Context f63010c;

    /* renamed from: d */
    protected int f63011d = C18061a.C18066e.list_card_layout;

    /* renamed from: e */
    protected int f63012e = C18061a.C18066e.base_list_expandable_children_layout;

    /* renamed from: f */
    protected CardExpandableListView f63013f;

    public C18088f(Context context, SparseArray<C18069a<T>> sparseArray) {
        this.f63008a = sparseArray;
        this.f63009b = (LayoutInflater) context.getSystemService("layout_inflater");
    }

    /* renamed from: b */
    public C18073b getGroup(int i) {
        return this.f63008a.get(i);
    }

    /* renamed from: a */
    public final void m4471a(int i) {
        this.f63011d = i;
    }

    /* renamed from: a */
    public final void m4470a(CardExpandableListView cardExpandableListView) {
        this.f63013f = cardExpandableListView;
    }

    @Override // android.widget.ExpandableListAdapter
    public final T getChild(int i, int i2) {
        return this.f63008a.get(i).f62985a.get(i2);
    }

    @Override // android.widget.ExpandableListAdapter
    public final long getChildId(int i, int i2) {
        return i2;
    }

    @Override // android.widget.ExpandableListAdapter
    public final View getChildView(int i, int i2, boolean z, View view, ViewGroup viewGroup) {
        final T child = getChild(i, i2);
        View view2 = view;
        if (child != null) {
            view2 = view;
            if (child instanceof String) {
                String str = (String) child;
                View view3 = view;
                if (view == null) {
                    view3 = this.f63009b.inflate(this.f63012e, (ViewGroup) null);
                }
                ((TextView) view3.findViewById(C18061a.C18064c.card_children_simple_title)).setText(str);
                view2 = view3;
                if (isChildSelectable(i, i2)) {
                    view3.setOnClickListener(new View.OnClickListener() { // from class: it.gmariotti.cardslib.library.a.f.1
                        @Override // android.view.View.OnClickListener
                        public final void onClick(View view4) {
                            Toast.makeText(C18088f.this.f63010c, child.toString(), 0).show();
                        }
                    });
                    view2 = view3;
                }
            }
        }
        return view2;
    }

    @Override // android.widget.ExpandableListAdapter
    public final int getChildrenCount(int i) {
        return this.f63008a.get(i).f62985a.size();
    }

    @Override // android.widget.ExpandableListAdapter
    public final int getGroupCount() {
        return this.f63008a.size();
    }

    @Override // android.widget.ExpandableListAdapter
    public final long getGroupId(int i) {
        return getGroup(i).getId() != null ? getGroup(i).getId().hashCode() : i;
    }

    @Override // android.widget.ExpandableListAdapter
    public final View getGroupView(int i, boolean z, View view, ViewGroup viewGroup) {
        boolean z2;
        C18073b group = getGroup(i);
        View view2 = view;
        if (group != null) {
            int i2 = this.f63011d;
            if (view == null) {
                view = this.f63009b.inflate(i2, viewGroup, false);
                z2 = false;
            } else {
                z2 = true;
            }
            AbstractC18152a abstractC18152a = (AbstractC18152a) view.findViewById(C18061a.C18064c.list_cardId);
            view2 = view;
            if (abstractC18152a != null) {
                abstractC18152a.setForceReplaceInnerLayout(C18073b.equalsInnerLayout(abstractC18152a.getCard(), group));
                abstractC18152a.setRecycle(z2);
                group.setSwipeable(false);
                abstractC18152a.setCard(group);
                view2 = view;
            }
        }
        return view2;
    }

    @Override // android.widget.ExpandableListAdapter
    public final boolean hasStableIds() {
        return false;
    }

    @Override // android.widget.ExpandableListAdapter
    public final boolean isChildSelectable(int i, int i2) {
        return true;
    }
}
