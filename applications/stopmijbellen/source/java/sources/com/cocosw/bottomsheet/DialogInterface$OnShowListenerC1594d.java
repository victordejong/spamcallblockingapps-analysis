package com.cocosw.bottomsheet;

import android.content.DialogInterface;
import android.widget.ListAdapter;
/* renamed from: com.cocosw.bottomsheet.d */
/* loaded from: classes-dex2jar.jar:com/cocosw/bottomsheet/d.class */
public class DialogInterface$OnShowListenerC1594d implements DialogInterface.OnShowListener {

    /* renamed from: a */
    public final /* synthetic */ DialogC1599h f5913a;

    public DialogInterface$OnShowListenerC1594d(DialogC1599h dialogC1599h) {
        this.f5913a = dialogC1599h;
    }

    @Override // android.content.DialogInterface.OnShowListener
    public void onShow(DialogInterface dialogInterface) {
        DialogInterface.OnShowListener onShowListener = this.f5913a.f5940u;
        if (onShowListener != null) {
            onShowListener.onShow(dialogInterface);
        }
        DialogC1599h dialogC1599h = this.f5913a;
        dialogC1599h.f5929j.setAdapter((ListAdapter) dialogC1599h.f5930k);
        this.f5913a.f5929j.startLayoutAnimation();
        DialogC1599h dialogC1599h2 = this.f5913a;
        if (dialogC1599h2.f5931l.f5948f == null) {
            dialogC1599h2.f5932m.setVisibility(8);
            return;
        }
        dialogC1599h2.f5932m.setVisibility(0);
        DialogC1599h dialogC1599h3 = this.f5913a;
        dialogC1599h3.f5932m.setImageDrawable(dialogC1599h3.f5931l.f5948f);
    }
}
