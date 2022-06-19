package p193o8;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ArrayAdapter;
import com.google.android.gms.internal.ads.C1676a;
import java.util.List;
import java.util.Objects;
/* renamed from: o8.j */
/* loaded from: classes2-dex2jar.jar:o8/j.class */
public class C3957j extends ArrayAdapter<AbstractC3956i> {

    /* renamed from: a */
    public final LayoutInflater f12451a;

    public C3957j(Context context, List<AbstractC3956i> list) {
        super(context, 0, list);
        this.f12451a = LayoutInflater.from(context);
    }

    @Override // android.widget.BaseAdapter, android.widget.Adapter
    public int getItemViewType(int i) {
        AbstractC3956i item = getItem(i);
        Objects.requireNonNull(item);
        return item.mo1589a();
    }

    @Override // android.widget.ArrayAdapter, android.widget.Adapter
    public View getView(int i, View view, ViewGroup viewGroup) {
        AbstractC3956i item = getItem(i);
        Objects.requireNonNull(item);
        return item.mo1588b(this.f12451a, view);
    }

    @Override // android.widget.BaseAdapter, android.widget.Adapter
    public int getViewTypeCount() {
        return C1676a.m4795a().length;
    }

    @Override // android.widget.BaseAdapter, android.widget.ListAdapter
    public boolean isEnabled(int i) {
        boolean z = false;
        try {
            AbstractC3956i item = getItem(i);
            Objects.requireNonNull(item);
            if (item.mo1589a() == 0) {
                z = true;
            }
            return z;
        } catch (Exception e) {
            e.printStackTrace();
            return false;
        }
    }
}
