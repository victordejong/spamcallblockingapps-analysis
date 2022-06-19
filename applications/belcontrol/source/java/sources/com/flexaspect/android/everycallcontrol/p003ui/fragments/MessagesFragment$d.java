package com.flexaspect.android.everycallcontrol.p003ui.fragments;

import android.content.DialogInterface;
import p000.fa1;
/* renamed from: com.flexaspect.android.everycallcontrol.ui.fragments.MessagesFragment$d */
/* loaded from: classes-dex2jar.jar:com/flexaspect/android/everycallcontrol/ui/fragments/MessagesFragment$d.class */
public class MessagesFragment$d implements DialogInterface.OnClickListener {

    /* renamed from: a */
    public final /* synthetic */ MessagesFragment f3056a;

    public MessagesFragment$d(MessagesFragment messagesFragment) {
        this.f3056a = messagesFragment;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public void onClick(DialogInterface dialogInterface, int i) {
        int i2 = MessagesFragment$e.f3057a[MessagesFragment.r0(this.f3056a).ordinal()];
        if (i2 != 1) {
            if (i2 != 2) {
                return;
            }
            new l81().m1359H();
            return;
        }
        MessagesFragment.s0(this.f3056a).getContentResolver().delete(fa1.C1422f.f6598e, null, null);
        MessagesFragment.t0(this.f3056a).getContentResolver().delete(fa1.C1419d.f6586a, null, null);
        new l81().m1355J();
    }
}
