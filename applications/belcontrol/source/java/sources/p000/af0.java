package p000;

import android.view.View;
import carbon.widget.DropDown;
/* renamed from: af0 */
/* loaded from: classes-dex2jar.jar:af0.class */
public final /* synthetic */ class af0 implements View.OnClickListener {

    /* renamed from: a */
    public final /* synthetic */ DropDown.d f285a;

    /* renamed from: b */
    public final /* synthetic */ DropDown.e f286b;

    public /* synthetic */ af0(DropDown.d dVar, DropDown.e eVar) {
        this.f285a = dVar;
        this.f286b = eVar;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        this.f285a.i(this.f286b, view);
    }
}
