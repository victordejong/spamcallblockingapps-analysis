package p000;

import android.content.DialogInterface;
import com.flexaspect.android.everycallcontrol.ui.fragments.settings.callerid.CallerIdFragment;
/* renamed from: c21 */
/* loaded from: classes-dex2jar.jar:c21.class */
public final /* synthetic */ class c21 implements DialogInterface.OnCancelListener {

    /* renamed from: a */
    public final /* synthetic */ CallerIdFragment f2132a;

    /* renamed from: b */
    public final /* synthetic */ kq0 f2133b;

    public /* synthetic */ c21(CallerIdFragment callerIdFragment, kq0 kq0Var) {
        this.f2132a = callerIdFragment;
        this.f2133b = kq0Var;
    }

    @Override // android.content.DialogInterface.OnCancelListener
    public final void onCancel(DialogInterface dialogInterface) {
        this.f2132a.S(this.f2133b, dialogInterface);
    }
}
