package androidx.appcompat.widget;

import android.view.View;
import android.widget.AdapterView;
import androidx.appcompat.widget.AppCompatSpinner;
/* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/AppCompatSpinner$e$a.class */
public class AppCompatSpinner$e$a implements AdapterView.OnItemClickListener {

    /* renamed from: a */
    public final /* synthetic */ AppCompatSpinner.e f542a;

    public AppCompatSpinner$e$a(AppCompatSpinner.e eVar, AppCompatSpinner appCompatSpinner) {
        this.f542a = eVar;
    }

    @Override // android.widget.AdapterView.OnItemClickListener
    public void onItemClick(AdapterView<?> adapterView, View view, int i, long j) {
        this.f542a.O.setSelection(i);
        if (this.f542a.O.getOnItemClickListener() != null) {
            AppCompatSpinner.e eVar = this.f542a;
            eVar.O.performItemClick(view, i, eVar.L.getItemId(i));
        }
        this.f542a.dismiss();
    }
}
