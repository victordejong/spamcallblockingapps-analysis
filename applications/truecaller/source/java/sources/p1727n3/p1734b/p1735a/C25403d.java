package p1727n3.p1734b.p1735a;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ArrayAdapter;
import androidx.appcompat.app.AlertController;
/* renamed from: n3.b.a.d */
/* loaded from: classes-dex2jar.jar:n3/b/a/d.class */
public class C25403d extends ArrayAdapter<CharSequence> {

    /* renamed from: a */
    public final /* synthetic */ AlertController.RecycleListView f70847a;

    /* renamed from: b */
    public final /* synthetic */ AlertController.C0037b f70848b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C25403d(AlertController.C0037b c0037b, Context context, int i, int i2, CharSequence[] charSequenceArr, AlertController.RecycleListView recycleListView) {
        super(context, i, i2, charSequenceArr);
        this.f70848b = c0037b;
        this.f70847a = recycleListView;
    }

    @Override // android.widget.ArrayAdapter, android.widget.Adapter
    public View getView(int i, View view, ViewGroup viewGroup) {
        View view2 = super.getView(i, view, viewGroup);
        boolean[] zArr = this.f70848b.f172v;
        if (zArr != null && zArr[i]) {
            this.f70847a.setItemChecked(i, true);
        }
        return view2;
    }
}
