package p1727n3.p1874y.p1908e;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.media2.widget.C0285R;
import java.util.List;
import p1727n3.p1807k.p1809b.C26467a;
/* renamed from: n3.y.e.k$u */
/* loaded from: classes-dex2jar.jar:n3/y/e/k$u.class */
public class k$u extends BaseAdapter {

    /* renamed from: a */
    public List<Integer> f77555a;

    /* renamed from: b */
    public List<String> f77556b;

    /* renamed from: c */
    public List<String> f77557c;

    /* renamed from: d */
    public final /* synthetic */ k f77558d;

    public k$u(k kVar, List<String> list, List<String> list2, List<Integer> list3) {
        this.f77558d = kVar;
        this.f77556b = list;
        this.f77557c = list2;
        this.f77555a = list3;
    }

    @Override // android.widget.Adapter
    public int getCount() {
        List<String> list = this.f77556b;
        return list == null ? 0 : list.size();
    }

    @Override // android.widget.Adapter
    public Object getItem(int i) {
        return null;
    }

    @Override // android.widget.Adapter
    public long getItemId(int i) {
        return 0L;
    }

    @Override // android.widget.Adapter
    public View getView(int i, View view, ViewGroup viewGroup) {
        View i2 = k.i(this.f77558d.getContext(), C0285R.layout.media2_widget_settings_list_item);
        TextView textView = (TextView) i2.findViewById(C0285R.C0287id.main_text);
        TextView textView2 = (TextView) i2.findViewById(C0285R.C0287id.sub_text);
        ImageView imageView = (ImageView) i2.findViewById(C0285R.C0287id.icon);
        textView.setText(this.f77556b.get(i));
        List<String> list = this.f77557c;
        if (list == null || "".equals(list.get(i))) {
            textView2.setVisibility(8);
        } else {
            textView2.setText(this.f77557c.get(i));
        }
        List<Integer> list2 = this.f77555a;
        if (list2 == null || list2.get(i).intValue() == -1) {
            imageView.setVisibility(8);
        } else {
            Context context = this.f77558d.getContext();
            int intValue = this.f77555a.get(i).intValue();
            Object obj = C26467a.f74235a;
            imageView.setImageDrawable(C26467a.C26470c.m1789b(context, intValue));
        }
        return i2;
    }
}
