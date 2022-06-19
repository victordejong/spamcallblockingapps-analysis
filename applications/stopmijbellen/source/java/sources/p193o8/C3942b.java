package p193o8;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ArrayAdapter;
import java.util.List;
import java.util.Objects;
import p007a6.C0033h;
/* renamed from: o8.b */
/* loaded from: classes2-dex2jar.jar:o8/b.class */
public class C3942b extends ArrayAdapter<AbstractC3940a> {

    /* renamed from: a */
    public LayoutInflater f12426a;

    public C3942b(Context context, List<AbstractC3940a> list) {
        super(context, 0, list);
        this.f12426a = LayoutInflater.from(context);
    }

    @Override // android.widget.ArrayAdapter, android.widget.Adapter
    public Object getItem(int i) {
        return (AbstractC3940a) super.getItem(i);
    }

    @Override // android.widget.ArrayAdapter, android.widget.Adapter
    public long getItemId(int i) {
        return super.getItemId(i);
    }

    @Override // android.widget.BaseAdapter, android.widget.Adapter
    public int getItemViewType(int i) {
        AbstractC3940a abstractC3940a = (AbstractC3940a) super.getItem(i);
        Objects.requireNonNull(abstractC3940a);
        return abstractC3940a.mo1595a();
    }

    @Override // android.widget.ArrayAdapter, android.widget.Adapter
    public View getView(int i, View view, ViewGroup viewGroup) {
        AbstractC3940a abstractC3940a = (AbstractC3940a) super.getItem(i);
        Objects.requireNonNull(abstractC3940a);
        return abstractC3940a.mo1594b(this.f12426a, view);
    }

    @Override // android.widget.BaseAdapter, android.widget.Adapter
    public int getViewTypeCount() {
        return C0033h.m8894c().length;
    }

    @Override // android.widget.BaseAdapter, android.widget.ListAdapter
    public boolean isEnabled(int i) {
        AbstractC3940a abstractC3940a = (AbstractC3940a) super.getItem(i);
        Objects.requireNonNull(abstractC3940a);
        return abstractC3940a.mo1595a() == 0;
    }
}
