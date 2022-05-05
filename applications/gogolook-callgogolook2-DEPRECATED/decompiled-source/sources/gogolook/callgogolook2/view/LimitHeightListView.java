package gogolook.callgogolook2.view;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.widget.ListView;
/* loaded from: classes3-dex2jar.jar:gogolook/callgogolook2/view/LimitHeightListView.class */
public class LimitHeightListView extends ListView {

    /* renamed from: a */
    public int f13063a = 0;

    public LimitHeightListView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    /* renamed from: a */
    public int m25915a() {
        return this.f13063a;
    }

    /* renamed from: a */
    public void m25914a(int i) {
        this.f13063a = i;
    }

    @Override // android.widget.ListView, android.widget.AbsListView, android.view.View
    public void onMeasure(int i, int i2) {
        int i3 = this.f13063a;
        if (i3 != 0) {
            i2 = View.MeasureSpec.makeMeasureSpec(i3, Integer.MIN_VALUE);
        }
        super.onMeasure(i, i2);
    }
}
