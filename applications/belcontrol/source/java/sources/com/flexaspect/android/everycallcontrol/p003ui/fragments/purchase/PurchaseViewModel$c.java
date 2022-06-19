package com.flexaspect.android.everycallcontrol.p003ui.fragments.purchase;

import android.os.Bundle;
import com.kedlin.cca.core.util.billing.Purchase;
import p000.w91;
/* renamed from: com.flexaspect.android.everycallcontrol.ui.fragments.purchase.PurchaseViewModel$c */
/* loaded from: classes-dex2jar.jar:com/flexaspect/android/everycallcontrol/ui/fragments/purchase/PurchaseViewModel$c.class */
public class PurchaseViewModel$c implements Runnable {

    /* renamed from: a */
    public final /* synthetic */ Purchase f3126a;

    /* renamed from: b */
    public final /* synthetic */ PurchaseViewModel f3127b;

    public PurchaseViewModel$c(PurchaseViewModel purchaseViewModel, Purchase purchase) {
        this.f3127b = purchaseViewModel;
        this.f3126a = purchase;
    }

    @Override // java.lang.Runnable
    public void run() {
        Bundle bundle = new Bundle();
        bundle.putString("Origin", PurchaseViewModel.p(this.f3127b));
        bundle.putString("Personification", this.f3126a.m4348e());
        w91.m275c(this, w91.EnumC1708a.PURCHASE, bundle);
    }
}
