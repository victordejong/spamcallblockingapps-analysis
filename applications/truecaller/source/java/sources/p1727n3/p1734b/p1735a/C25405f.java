package p1727n3.p1734b.p1735a;

import android.view.View;
import android.widget.AdapterView;
import androidx.appcompat.app.AlertController;
/* renamed from: n3.b.a.f */
/* loaded from: classes-dex2jar.jar:n3/b/a/f.class */
public class C25405f implements AdapterView.OnItemClickListener {

    /* renamed from: a */
    public final /* synthetic */ AlertController.RecycleListView f70851a;

    /* renamed from: b */
    public final /* synthetic */ AlertController f70852b;

    /* renamed from: c */
    public final /* synthetic */ AlertController.C0037b f70853c;

    public C25405f(AlertController.C0037b c0037b, AlertController.RecycleListView recycleListView, AlertController alertController) {
        this.f70853c = c0037b;
        this.f70851a = recycleListView;
        this.f70852b = alertController;
    }

    @Override // android.widget.AdapterView.OnItemClickListener
    public void onItemClick(AdapterView<?> adapterView, View view, int i, long j) {
        boolean[] zArr = this.f70853c.f172v;
        if (zArr != null) {
            zArr[i] = this.f70851a.isItemChecked(i);
        }
        this.f70853c.f176z.onClick(this.f70852b.f123b, i, this.f70851a.isItemChecked(i));
    }
}
