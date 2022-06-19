package p000;

import android.content.Context;
import android.content.DialogInterface;
import com.flexaspect.android.everycallcontrol.ui.base.BaseFragment;
/* renamed from: dv0 */
/* loaded from: classes-dex2jar.jar:dv0.class */
public final /* synthetic */ class dv0 implements DialogInterface.OnDismissListener {

    /* renamed from: a */
    public final /* synthetic */ BaseFragment f6143a;

    /* renamed from: b */
    public final /* synthetic */ Context f6144b;

    public /* synthetic */ dv0(BaseFragment baseFragment, Context context) {
        this.f6143a = baseFragment;
        this.f6144b = context;
    }

    @Override // android.content.DialogInterface.OnDismissListener
    public final void onDismiss(DialogInterface dialogInterface) {
        this.f6143a.D(this.f6144b, dialogInterface);
    }
}
