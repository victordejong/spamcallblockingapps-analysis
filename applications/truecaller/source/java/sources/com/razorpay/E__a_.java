package com.razorpay;

import android.content.DialogInterface;
import com.razorpay.CheckoutUtils;
/* loaded from: classes3-dex2jar.jar:com/razorpay/E__a_.class */
public final class E__a_ implements DialogInterface.OnClickListener {

    /* renamed from: a */
    private /* synthetic */ CheckoutUtils.BackButtonDialogCallback f9385a;

    public E__a_(CheckoutUtils.BackButtonDialogCallback backButtonDialogCallback) {
        this.f9385a = backButtonDialogCallback;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public final void onClick(DialogInterface dialogInterface, int i) {
        this.f9385a.onPositiveButtonClick();
    }
}
