package p193e.p194a.p1126p2;

import android.app.NotificationManager;
import android.view.View;
import com.huawei.hms.push.constant.RemoteMessageConst;
import com.truecaller.C2752R;
import com.truecaller.aftercall.AfterCallPromotionActivity;
import com.truecaller.aftercall.PromotionType;
/* renamed from: e.a.p2.a */
/* loaded from: classes3-dex2jar.jar:e/a/p2/a.class */
public final /* synthetic */ class View$OnClickListenerC19204a implements View.OnClickListener {

    /* renamed from: a */
    public final /* synthetic */ AfterCallPromotionActivity f53573a;

    /* renamed from: b */
    public final /* synthetic */ PromotionType f53574b;

    public /* synthetic */ View$OnClickListenerC19204a(AfterCallPromotionActivity afterCallPromotionActivity, PromotionType promotionType) {
        this.f53573a = afterCallPromotionActivity;
        this.f53574b = promotionType;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        AfterCallPromotionActivity afterCallPromotionActivity = this.f53573a;
        PromotionType promotionType = this.f53574b;
        afterCallPromotionActivity.ua();
        ((NotificationManager) afterCallPromotionActivity.getApplicationContext().getSystemService(RemoteMessageConst.NOTIFICATION)).cancel(C2752R.C2754id.dialer_reminder_notification_id);
        afterCallPromotionActivity.xa(promotionType);
    }
}
