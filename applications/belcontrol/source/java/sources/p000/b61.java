package p000;

import android.app.Activity;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.TextView;
import com.kedlin.cca.util.UrlImageView;
import java.util.List;
/* renamed from: b61 */
/* loaded from: classes-dex2jar.jar:b61.class */
public class b61 extends BaseAdapter {

    /* renamed from: a */
    public Activity f1812a;

    /* renamed from: b */
    public List<pe1> f1813b;

    public b61(Activity activity, List<pe1> list) {
        this.f1812a = activity;
        this.f1813b = list;
    }

    @Override // android.widget.Adapter
    public int getCount() {
        return this.f1813b.size();
    }

    @Override // android.widget.Adapter
    public Object getItem(int i) {
        return this.f1813b.get(i);
    }

    @Override // android.widget.Adapter
    public long getItemId(int i) {
        return 0L;
    }

    @Override // android.widget.Adapter
    public View getView(int i, View view, ViewGroup viewGroup) {
        View view2 = view;
        if (view == null) {
            view2 = this.f1812a.getLayoutInflater().inflate(2131558800, (ViewGroup) null);
        }
        ((TextView) view2.findViewById(2131363404)).setText(this.f1813b.get(i).m924d());
        ((TextView) view2.findViewById(2131362366)).setText(this.f1813b.get(i).m927a());
        ((UrlImageView) view2.findViewById(2131363397)).setImageDrawable(this.f1813b.get(i).m925c(), 0);
        return view2;
    }
}
