package p459j.p460a.p474c0.p491g;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseExpandableListAdapter;
import gogolook.callgogolook2.R$layout;
import gogolook.callgogolook2.messaging.p078ui.PersonItemView;
import java.util.List;
import p459j.p460a.p474c0.p475c.p479z.C11651f0;
/* renamed from: j.a.c0.g.y */
/* loaded from: classes2-dex2jar.jar:j/a/c0/g/y.class */
public class C12128y extends BaseExpandableListAdapter {

    /* renamed from: a */
    public final List<C11651f0> f27244a;

    /* renamed from: b */
    public final LayoutInflater f27245b;

    public C12128y(Context context, List<C11651f0> list) {
        this.f27244a = list;
        this.f27245b = (LayoutInflater) context.getSystemService("layout_inflater");
    }

    /* renamed from: a */
    public final PersonItemView m7064a(ViewGroup viewGroup) {
        PersonItemView personItemView = (PersonItemView) this.f27245b.inflate(R$layout.people_list_item_view, viewGroup, false);
        personItemView.m27331b(true);
        personItemView.setClickable(false);
        return personItemView;
    }

    @Override // android.widget.ExpandableListAdapter
    public Object getChild(int i, int i2) {
        return this.f27244a.get(i).m8709c().get(i2);
    }

    @Override // android.widget.ExpandableListAdapter
    public long getChildId(int i, int i2) {
        return i2;
    }

    @Override // android.widget.ExpandableListAdapter
    public View getChildView(int i, int i2, boolean z, View view, ViewGroup viewGroup) {
        PersonItemView a = view == null ? m7064a(viewGroup) : (PersonItemView) view;
        a.m27332b(((C11651f0.C11654c) getChild(i, i2)).m8706a());
        return a;
    }

    @Override // android.widget.ExpandableListAdapter
    public int getChildrenCount(int i) {
        return this.f27244a.get(i).m8709c().size();
    }

    @Override // android.widget.ExpandableListAdapter
    public Object getGroup(int i) {
        return this.f27244a.get(i);
    }

    @Override // android.widget.ExpandableListAdapter
    public int getGroupCount() {
        return this.f27244a.size();
    }

    @Override // android.widget.ExpandableListAdapter
    public long getGroupId(int i) {
        return i;
    }

    @Override // android.widget.ExpandableListAdapter
    public View getGroupView(int i, boolean z, View view, ViewGroup viewGroup) {
        PersonItemView a = view == null ? m7064a(viewGroup) : (PersonItemView) view;
        a.m27332b(((C11651f0) getGroup(i)).m8708d());
        return a;
    }

    @Override // android.widget.ExpandableListAdapter
    public boolean hasStableIds() {
        return true;
    }

    @Override // android.widget.ExpandableListAdapter
    public boolean isChildSelectable(int i, int i2) {
        return true;
    }
}
