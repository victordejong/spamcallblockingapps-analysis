package androidx.media2.widget;

import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.ImageView;
import android.widget.TextView;
import java.util.List;
/* loaded from: classes-dex2jar.jar:androidx/media2/widget/MediaControlView$h0.class */
public class MediaControlView$h0 extends BaseAdapter {

    /* renamed from: a */
    public List<Integer> f1225a;

    /* renamed from: b */
    public List<String> f1226b;

    /* renamed from: c */
    public List<String> f1227c;

    /* renamed from: d */
    public final /* synthetic */ MediaControlView f1228d;

    public MediaControlView$h0(MediaControlView mediaControlView, List<String> list, List<String> list2, List<Integer> list3) {
        this.f1228d = mediaControlView;
        this.f1226b = list;
        this.f1227c = list2;
        this.f1225a = list3;
    }

    /* renamed from: a */
    public void m6321a(List<String> list) {
        this.f1227c = list;
    }

    @Override // android.widget.Adapter
    public int getCount() {
        List<String> list = this.f1226b;
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
        View k = MediaControlView.k(this.f1228d.getContext(), C0224ax.settings_list_item);
        TextView textView = (TextView) k.findViewById(zw.main_text);
        TextView textView2 = (TextView) k.findViewById(zw.sub_text);
        ImageView imageView = (ImageView) k.findViewById(zw.icon);
        textView.setText(this.f1226b.get(i));
        List<String> list = this.f1227c;
        if (list == null || "".equals(list.get(i))) {
            textView2.setVisibility(8);
        } else {
            textView2.setText(this.f1227c.get(i));
        }
        List<Integer> list2 = this.f1225a;
        if (list2 == null || list2.get(i).intValue() == -1) {
            imageView.setVisibility(8);
        } else {
            imageView.setImageDrawable(this.f1228d.c.getDrawable(this.f1225a.get(i).intValue()));
        }
        return k;
    }
}
