package p1727n3.p1874y.p1908e;

import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.media2.widget.C0285R;
import java.util.List;
/* renamed from: n3.y.e.k$v */
/* loaded from: classes-dex2jar.jar:n3/y/e/k$v.class */
public class k$v extends BaseAdapter {

    /* renamed from: a */
    public List<String> f77559a = null;

    /* renamed from: b */
    public int f77560b;

    /* renamed from: c */
    public final /* synthetic */ k f77561c;

    public k$v(k kVar, List<String> list, int i) {
        this.f77561c = kVar;
        this.f77560b = i;
    }

    @Override // android.widget.Adapter
    public int getCount() {
        List<String> list = this.f77559a;
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
        View i2 = k.i(this.f77561c.getContext(), C0285R.layout.media2_widget_sub_settings_list_item);
        TextView textView = (TextView) i2.findViewById(C0285R.C0287id.text);
        ImageView imageView = (ImageView) i2.findViewById(C0285R.C0287id.check);
        textView.setText(this.f77559a.get(i));
        if (i != this.f77560b) {
            imageView.setVisibility(4);
        }
        return i2;
    }
}
