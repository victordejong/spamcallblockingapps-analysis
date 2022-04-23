package p012b.p042i.p056q;

import android.widget.ListView;
/* renamed from: b.i.q.f */
/* loaded from: classes-dex2jar.jar:b/i/q/f.class */
public class C1029f extends AbstractView$OnTouchListenerC1022a {

    /* renamed from: s */
    public final ListView f4315s;

    public C1029f(ListView listView) {
        super(listView);
        this.f4315s = listView;
    }

    @Override // p012b.p042i.p056q.AbstractView$OnTouchListenerC1022a
    /* renamed from: a */
    public void mo35110a(int i, int i2) {
        C1030g.m35107b(this.f4315s, i2);
    }

    @Override // p012b.p042i.p056q.AbstractView$OnTouchListenerC1022a
    /* renamed from: a */
    public boolean mo35111a(int i) {
        return false;
    }

    @Override // p012b.p042i.p056q.AbstractView$OnTouchListenerC1022a
    /* renamed from: b */
    public boolean mo35109b(int i) {
        ListView listView = this.f4315s;
        int count = listView.getCount();
        if (count == 0) {
            return false;
        }
        int childCount = listView.getChildCount();
        int firstVisiblePosition = listView.getFirstVisiblePosition();
        if (i > 0) {
            return firstVisiblePosition + childCount < count || listView.getChildAt(childCount - 1).getBottom() > listView.getHeight();
        }
        if (i < 0) {
            return firstVisiblePosition > 0 || listView.getChildAt(0).getTop() < 0;
        }
        return false;
    }
}
