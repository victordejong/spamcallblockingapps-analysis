package androidx.appcompat.widget;

import android.view.View;
import android.widget.AdapterView;
import androidx.appcompat.widget.AppCompatSpinner;
/* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/AppCompatSpinner$e$a.class */
class AppCompatSpinner$e$a implements AdapterView.OnItemClickListener {

    /* renamed from: b */
    final /* synthetic */ AppCompatSpinner.e f399b;

    AppCompatSpinner$e$a(AppCompatSpinner.e eVar, AppCompatSpinner appCompatSpinner) {
        this.f399b = eVar;
    }

    @Override // android.widget.AdapterView.OnItemClickListener
    public void onItemClick(AdapterView<?> adapterView, View view, int i, long j) {
        this.f399b.N.setSelection(i);
        if (this.f399b.N.getOnItemClickListener() != null) {
            AppCompatSpinner.e eVar = this.f399b;
            eVar.N.performItemClick(view, i, eVar.K.getItemId(i));
        }
        this.f399b.dismiss();
    }
}
