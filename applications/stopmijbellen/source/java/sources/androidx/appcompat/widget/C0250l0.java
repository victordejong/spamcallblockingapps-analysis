package androidx.appcompat.widget;

import android.view.View;
import android.widget.AdapterView;
/* renamed from: androidx.appcompat.widget.l0 */
/* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/l0.class */
public class C0250l0 implements AdapterView.OnItemSelectedListener {

    /* renamed from: a */
    public final /* synthetic */ C0252m0 f1013a;

    public C0250l0(C0252m0 c0252m0) {
        this.f1013a = c0252m0;
    }

    @Override // android.widget.AdapterView.OnItemSelectedListener
    public void onItemSelected(AdapterView<?> adapterView, View view, int i, long j) {
        C0238i0 c0238i0;
        if (i == -1 || (c0238i0 = this.f1013a.f1021c) == null) {
            return;
        }
        c0238i0.setListSelectionHidden(false);
    }

    @Override // android.widget.AdapterView.OnItemSelectedListener
    public void onNothingSelected(AdapterView<?> adapterView) {
    }
}
