package p000;

import android.view.View;
import com.flexaspect.android.everycallcontrol.ui.fragments.purchase.mycredits.CreditsFragment;
import java.util.ArrayList;
/* renamed from: dz0 */
/* loaded from: classes-dex2jar.jar:dz0.class */
public final /* synthetic */ class dz0 implements View.OnClickListener {

    /* renamed from: a */
    public final /* synthetic */ CreditsFragment f6207a;

    /* renamed from: b */
    public final /* synthetic */ ArrayList f6208b;

    public /* synthetic */ dz0(CreditsFragment creditsFragment, ArrayList arrayList) {
        this.f6207a = creditsFragment;
        this.f6208b = arrayList;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        this.f6207a.N(this.f6208b, view);
    }
}
