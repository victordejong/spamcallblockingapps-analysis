package p193o8;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ArrayAdapter;
import androidx.recyclerview.widget.C0608b;
import java.util.List;
import java.util.Objects;
/* renamed from: o8.e */
/* loaded from: classes2-dex2jar.jar:o8/e.class */
public class C3948e extends ArrayAdapter<AbstractC3946d> {

    /* renamed from: a */
    public LayoutInflater f12437a;

    public C3948e(Context context, List<AbstractC3946d> list) {
        super(context, 0, list);
        this.f12437a = LayoutInflater.from(context);
    }

    @Override // android.widget.BaseAdapter, android.widget.Adapter
    public int getItemViewType(int i) {
        AbstractC3946d item = getItem(i);
        Objects.requireNonNull(item);
        return item.mo1591a();
    }

    @Override // android.widget.ArrayAdapter, android.widget.Adapter
    public View getView(int i, View view, ViewGroup viewGroup) {
        AbstractC3946d item = getItem(i);
        Objects.requireNonNull(item);
        return item.mo1590b(this.f12437a, view);
    }

    @Override // android.widget.BaseAdapter, android.widget.Adapter
    public int getViewTypeCount() {
        return C0608b.m7634a().length;
    }

    @Override // android.widget.BaseAdapter, android.widget.ListAdapter
    public boolean isEnabled(int i) {
        AbstractC3946d item = getItem(i);
        Objects.requireNonNull(item);
        return item.mo1591a() == 0;
    }
}
