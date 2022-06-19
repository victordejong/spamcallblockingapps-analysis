package androidx.media2.widget;

import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.ImageView;
import android.widget.TextView;
import java.util.List;
/* loaded from: classes-dex2jar.jar:androidx/media2/widget/MediaControlView$i0.class */
public class MediaControlView$i0 extends BaseAdapter {

    /* renamed from: a */
    public List<String> f1230a;

    /* renamed from: b */
    public int f1231b;

    /* renamed from: c */
    public final /* synthetic */ MediaControlView f1232c;

    public MediaControlView$i0(MediaControlView mediaControlView, List<String> list, int i) {
        this.f1232c = mediaControlView;
        this.f1230a = list;
        this.f1231b = i;
    }

    /* renamed from: a */
    public String m6320a(int i) {
        List<String> list = this.f1230a;
        return (list == null || i >= list.size()) ? "" : this.f1230a.get(i);
    }

    /* renamed from: b */
    public void m6319b(int i) {
        this.f1231b = i;
    }

    /* renamed from: c */
    public void m6318c(List<String> list) {
        this.f1230a = list;
    }

    @Override // android.widget.Adapter
    public int getCount() {
        List<String> list = this.f1230a;
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
        View k = MediaControlView.k(this.f1232c.getContext(), C0224ax.sub_settings_list_item);
        TextView textView = (TextView) k.findViewById(zw.text);
        ImageView imageView = (ImageView) k.findViewById(zw.check);
        textView.setText(this.f1230a.get(i));
        if (i != this.f1231b) {
            imageView.setVisibility(4);
        }
        return k;
    }
}
