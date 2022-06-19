package p000;

import android.content.DialogInterface;
import com.flexaspect.android.everycallcontrol.ui.fragments.settings.callblocking.CallBlockingFragment;
import java.util.List;
/* renamed from: a11 */
/* loaded from: classes-dex2jar.jar:a11.class */
public final /* synthetic */ class a11 implements DialogInterface.OnClickListener {

    /* renamed from: a */
    public final /* synthetic */ CallBlockingFragment f17a;

    /* renamed from: b */
    public final /* synthetic */ int f18b;

    /* renamed from: c */
    public final /* synthetic */ List f19c;

    public /* synthetic */ a11(CallBlockingFragment callBlockingFragment, int i, List list) {
        this.f17a = callBlockingFragment;
        this.f18b = i;
        this.f19c = list;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public final void onClick(DialogInterface dialogInterface, int i) {
        this.f17a.j0(this.f18b, this.f19c, dialogInterface, i);
    }
}
