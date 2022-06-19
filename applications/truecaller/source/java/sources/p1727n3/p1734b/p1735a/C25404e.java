package p1727n3.p1734b.p1735a;

import android.view.View;
import android.widget.AdapterView;
import androidx.appcompat.app.AlertController;
/* renamed from: n3.b.a.e */
/* loaded from: classes-dex2jar.jar:n3/b/a/e.class */
public class C25404e implements AdapterView.OnItemClickListener {

    /* renamed from: a */
    public final /* synthetic */ AlertController f70849a;

    /* renamed from: b */
    public final /* synthetic */ AlertController.C0037b f70850b;

    public C25404e(AlertController.C0037b c0037b, AlertController alertController) {
        this.f70850b = c0037b;
        this.f70849a = alertController;
    }

    @Override // android.widget.AdapterView.OnItemClickListener
    public void onItemClick(AdapterView<?> adapterView, View view, int i, long j) {
        this.f70850b.f169s.onClick(this.f70849a.f123b, i);
        if (!this.f70850b.f174x) {
            this.f70849a.f123b.dismiss();
        }
    }
}
