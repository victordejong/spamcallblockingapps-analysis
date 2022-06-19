package com.freshchat.consumer.sdk.p063m;

import android.content.DialogInterface;
import android.view.View;
import android.widget.FrameLayout;
import com.freshchat.consumer.sdk.C1298R;
import com.google.android.material.bottomsheet.BottomSheetBehavior;
import e.m.a.g.e.d;
/* renamed from: com.freshchat.consumer.sdk.m.z */
/* loaded from: classes2-dex2jar.jar:com/freshchat/consumer/sdk/m/z.class */
public class DialogInterface$OnShowListenerC1803z implements DialogInterface.OnShowListener {

    /* renamed from: ln */
    public final /* synthetic */ d f4671ln;

    /* renamed from: pw */
    public final /* synthetic */ AbstractC1802y f4672pw;

    public DialogInterface$OnShowListenerC1803z(AbstractC1802y abstractC1802y, d dVar) {
        this.f4672pw = abstractC1802y;
        this.f4671ln = dVar;
    }

    @Override // android.content.DialogInterface.OnShowListener
    public void onShow(DialogInterface dialogInterface) {
        FrameLayout frameLayout;
        FrameLayout frameLayout2;
        this.f4672pw.f4666pq = (FrameLayout) this.f4671ln.findViewById(C1298R.C1300id.design_bottom_sheet);
        frameLayout = this.f4672pw.f4666pq;
        if (frameLayout != null) {
            View findViewById = this.f4671ln.findViewById(C1298R.C1300id.freshchat_calendar_bottomsheet_title_layout);
            if (findViewById != null) {
                this.f4672pw.f4669pt = findViewById.getHeight();
            }
            frameLayout2 = this.f4672pw.f4666pq;
            BottomSheetBehavior H = BottomSheetBehavior.H(frameLayout2);
            H.D = true;
            H.L(0);
            H.M(3);
        }
    }
}
