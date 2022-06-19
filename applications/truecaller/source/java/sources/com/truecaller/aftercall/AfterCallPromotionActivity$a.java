package com.truecaller.aftercall;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
/* loaded from: classes3-dex2jar.jar:com/truecaller/aftercall/AfterCallPromotionActivity$a.class */
public class AfterCallPromotionActivity$a extends BroadcastReceiver {

    /* renamed from: a */
    public final /* synthetic */ PromotionType f9914a;

    /* renamed from: b */
    public final /* synthetic */ AfterCallPromotionActivity f9915b;

    public AfterCallPromotionActivity$a(AfterCallPromotionActivity afterCallPromotionActivity, PromotionType promotionType) {
        this.f9915b = afterCallPromotionActivity;
        this.f9914a = promotionType;
    }

    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        AfterCallPromotionActivity afterCallPromotionActivity = this.f9915b;
        PromotionType promotionType = this.f9914a;
        int i = AfterCallPromotionActivity.o;
        afterCallPromotionActivity.xa(promotionType);
        this.f9915b.finish();
    }
}
