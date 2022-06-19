package androidx.appcompat.app;

import android.view.View;
import android.widget.AdapterView;
import androidx.appcompat.app.AlertController;
/* renamed from: androidx.appcompat.app.a */
/* loaded from: classes-dex2jar.jar:androidx/appcompat/app/a.class */
public class C0121a implements AdapterView.OnItemClickListener {

    /* renamed from: a */
    public final /* synthetic */ AlertController f331a;

    /* renamed from: b */
    public final /* synthetic */ AlertController.C0118b f332b;

    public C0121a(AlertController.C0118b c0118b, AlertController alertController) {
        this.f332b = c0118b;
        this.f331a = alertController;
    }

    @Override // android.widget.AdapterView.OnItemClickListener
    public void onItemClick(AdapterView<?> adapterView, View view, int i, long j) {
        this.f332b.f326j.onClick(this.f331a.f289b, i);
        if (!this.f332b.f328l) {
            this.f331a.f289b.dismiss();
        }
    }
}
