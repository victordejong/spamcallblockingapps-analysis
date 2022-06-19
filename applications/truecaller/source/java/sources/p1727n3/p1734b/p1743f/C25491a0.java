package p1727n3.p1734b.p1743f;

import android.view.View;
import android.widget.AdapterView;
/* renamed from: n3.b.f.a0 */
/* loaded from: classes-dex2jar.jar:n3/b/f/a0.class */
public class C25491a0 implements AdapterView.OnItemSelectedListener {

    /* renamed from: a */
    public final /* synthetic */ C25493b0 f71311a;

    public C25491a0(C25493b0 c25493b0) {
        this.f71311a = c25493b0;
    }

    @Override // android.widget.AdapterView.OnItemSelectedListener
    public void onItemSelected(AdapterView<?> adapterView, View view, int i, long j) {
        C25555x c25555x;
        if (i == -1 || (c25555x = this.f71311a.f71318c) == null) {
            return;
        }
        c25555x.setListSelectionHidden(false);
    }

    @Override // android.widget.AdapterView.OnItemSelectedListener
    public void onNothingSelected(AdapterView<?> adapterView) {
    }
}
