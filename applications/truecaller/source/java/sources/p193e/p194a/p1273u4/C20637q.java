package p193e.p194a.p1273u4;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.TextView;
import com.truecaller.C2752R;
import java.util.List;
/* renamed from: e.a.u4.q */
/* loaded from: classes12-dex2jar.jar:e/a/u4/q.class */
public class C20637q extends BaseAdapter {

    /* renamed from: a */
    public final LayoutInflater f58154a;

    /* renamed from: b */
    public final List<String> f58155b;

    /* renamed from: e.a.u4.q$a */
    /* loaded from: classes12-dex2jar.jar:e/a/u4/q$a.class */
    public class C20638a {

        /* renamed from: a */
        public final TextView f58156a;

        public C20638a(C20637q c20637q, View view) {
            this.f58156a = (TextView) view.findViewById(2131366265);
        }
    }

    public C20637q(Context context, List<String> list) {
        this.f58154a = LayoutInflater.from(context);
        this.f58155b = list;
    }

    @Override // android.widget.Adapter
    public int getCount() {
        List<String> list = this.f58155b;
        return list != null ? list.size() : 0;
    }

    @Override // android.widget.Adapter
    public Object getItem(int i) {
        return this.f58155b.get(i);
    }

    @Override // android.widget.Adapter
    public long getItemId(int i) {
        return this.f58155b.get(i).hashCode();
    }

    @Override // android.widget.Adapter
    public View getView(int i, View view, ViewGroup viewGroup) {
        C20638a c20638a;
        if (view == null) {
            view = this.f58154a.inflate(C2752R.layout.listitem_number, viewGroup, false);
            c20638a = new C20638a(this, view);
            view.setTag(c20638a);
        } else {
            c20638a = (C20638a) view.getTag();
        }
        c20638a.f58156a.setText(this.f58155b.get(i));
        return view;
    }
}
