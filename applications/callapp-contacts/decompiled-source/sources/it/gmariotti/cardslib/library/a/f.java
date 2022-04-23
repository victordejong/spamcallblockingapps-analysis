package it.gmariotti.cardslib.library.a;

import android.content.Context;
import android.util.SparseArray;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseExpandableListAdapter;
import android.widget.TextView;
import android.widget.Toast;
import it.gmariotti.cardslib.library.a;
import it.gmariotti.cardslib.library.view.CardExpandableListView;
/* loaded from: classes5-dex2jar.jar:it/gmariotti/cardslib/library/a/f.class */
public final class f<T> extends BaseExpandableListAdapter {

    /* renamed from: a  reason: collision with root package name */
    protected final SparseArray<a<T>> f36360a;

    /* renamed from: b  reason: collision with root package name */
    public LayoutInflater f36361b;

    /* renamed from: c  reason: collision with root package name */
    protected Context f36362c;

    /* renamed from: d  reason: collision with root package name */
    protected int f36363d = a.e.list_card_layout;
    protected int e = a.e.base_list_expandable_children_layout;
    protected CardExpandableListView f;

    public f(Context context, SparseArray<a<T>> sparseArray) {
        this.f36360a = sparseArray;
        this.f36361b = (LayoutInflater) context.getSystemService("layout_inflater");
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: b */
    public b getGroup(int i) {
        return this.f36360a.get(i);
    }

    public final void a(int i) {
        this.f36363d = i;
    }

    public final void a(CardExpandableListView cardExpandableListView) {
        this.f = cardExpandableListView;
    }

    @Override // android.widget.ExpandableListAdapter
    public final T getChild(int i, int i2) {
        return this.f36360a.get(i).f36347a.get(i2);
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
                    view3 = this.f36361b.inflate(this.e, (ViewGroup) null);
                }
                ((TextView) view3.findViewById(a.c.card_children_simple_title)).setText(str);
                view2 = view3;
                if (isChildSelectable(i, i2)) {
                    view3.setOnClickListener(new View.OnClickListener() { // from class: it.gmariotti.cardslib.library.a.f.1
                        @Override // android.view.View.OnClickListener
                        public final void onClick(View view4) {
                            Toast.makeText(f.this.f36362c, child.toString(), 0).show();
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
        return this.f36360a.get(i).f36347a.size();
    }

    @Override // android.widget.ExpandableListAdapter
    public final int getGroupCount() {
        return this.f36360a.size();
    }

    @Override // android.widget.ExpandableListAdapter
    public final long getGroupId(int i) {
        return getGroup(i).getId() != null ? getGroup(i).getId().hashCode() : i;
    }

    @Override // android.widget.ExpandableListAdapter
    public final View getGroupView(int i, boolean z, View view, ViewGroup viewGroup) {
        boolean z2;
        b b2 = getGroup(i);
        View view2 = view;
        if (b2 != null) {
            int i2 = this.f36363d;
            if (view == null) {
                view = this.f36361b.inflate(i2, viewGroup, false);
                z2 = false;
            } else {
                z2 = true;
            }
            it.gmariotti.cardslib.library.view.a.a aVar = (it.gmariotti.cardslib.library.view.a.a) view.findViewById(a.c.list_cardId);
            view2 = view;
            if (aVar != null) {
                aVar.setForceReplaceInnerLayout(b.equalsInnerLayout(aVar.getCard(), b2));
                aVar.setRecycle(z2);
                b2.setSwipeable(false);
                aVar.setCard(b2);
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
