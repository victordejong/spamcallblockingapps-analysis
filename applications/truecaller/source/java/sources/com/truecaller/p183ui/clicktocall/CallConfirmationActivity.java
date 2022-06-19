package com.truecaller.p183ui.clicktocall;

import android.widget.TextView;
import javax.inject.Inject;
import n3.b.a.h;
import p193e.p194a.p682e.p697b2.AbstractC13048c;
import p193e.p194a.p682e.p697b2.AbstractC13051f;
/* renamed from: com.truecaller.ui.clicktocall.CallConfirmationActivity */
/* loaded from: classes15-dex2jar.jar:com/truecaller/ui/clicktocall/CallConfirmationActivity.class */
public class CallConfirmationActivity extends h implements AbstractC13051f {
    @Inject

    /* renamed from: a */
    public AbstractC13048c f15681a;

    /* renamed from: b */
    public TextView f15682b;

    /* renamed from: c */
    public TextView f15683c;

    @Override // p193e.p194a.p682e.p697b2.AbstractC13051f
    /* renamed from: W */
    public void mo22102W(String str, String str2) {
        this.f15683c.setText(str);
        this.f15682b.setText(str2);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:15:0x004a  */
    /* JADX WARN: Removed duplicated region for block: B:17:0x004f  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void onCreate(android.os.Bundle r10) {
        /*
            Method dump skipped, instructions count: 286
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.truecaller.p183ui.clicktocall.CallConfirmationActivity.onCreate(android.os.Bundle):void");
    }

    public void onDestroy() {
        AbstractC13048c abstractC13048c = this.f15681a;
        if (abstractC13048c != null) {
            abstractC13048c.mo9806c();
        }
        CallConfirmationActivity.super.onDestroy();
    }
}
