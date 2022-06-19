package androidx.appcompat.widget;

import android.view.View;
import android.widget.AdapterView;
import androidx.appcompat.widget.AppCompatSpinner;
/* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/AppCompatSpinner$d$a.class */
public class AppCompatSpinner$d$a implements AdapterView.OnItemClickListener {

    /* renamed from: a */
    public final /* synthetic */ AppCompatSpinner.d f288a;

    public AppCompatSpinner$d$a(AppCompatSpinner.d dVar, AppCompatSpinner appCompatSpinner) {
        this.f288a = dVar;
    }

    @Override // android.widget.AdapterView.OnItemClickListener
    public void onItemClick(AdapterView<?> adapterView, View view, int i, long j) {
        this.f288a.L.setSelection(i);
        if (this.f288a.L.getOnItemClickListener() != null) {
            AppCompatSpinner.d dVar = this.f288a;
            dVar.L.performItemClick(view, i, dVar.E.getItemId(i));
        }
        this.f288a.dismiss();
    }
}
