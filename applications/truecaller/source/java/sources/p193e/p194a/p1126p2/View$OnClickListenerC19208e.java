package p193e.p194a.p1126p2;

import android.app.NotificationManager;
import android.content.Intent;
import android.view.View;
import com.huawei.hms.push.constant.RemoteMessageConst;
import com.truecaller.C2752R;
import com.truecaller.aftercall.AfterCallPromotionActivity;
import com.truecaller.aftercall.PromotionType;
import com.truecaller.p183ui.TruecallerInit;
import com.truecaller.p183ui.WizardActivity;
import com.truecaller.wizard.framework.WizardStartContext;
import e.a.r.t.c;
import java.util.Objects;
import p193e.p194a.p1129p5.p1132s0.C19291g;
import p193e.p194a.p372b0.p411g.AbstractApplicationC8442a;
/* renamed from: e.a.p2.e */
/* loaded from: classes3-dex2jar.jar:e/a/p2/e.class */
public final /* synthetic */ class View$OnClickListenerC19208e implements View.OnClickListener {

    /* renamed from: a */
    public final /* synthetic */ AfterCallPromotionActivity f53583a;

    /* renamed from: b */
    public final /* synthetic */ PromotionType f53584b;

    public /* synthetic */ View$OnClickListenerC19208e(AfterCallPromotionActivity afterCallPromotionActivity, PromotionType promotionType) {
        this.f53583a = afterCallPromotionActivity;
        this.f53584b = promotionType;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        AfterCallPromotionActivity afterCallPromotionActivity = this.f53583a;
        PromotionType promotionType = this.f53584b;
        afterCallPromotionActivity.ua();
        ((NotificationManager) afterCallPromotionActivity.getApplicationContext().getSystemService(RemoteMessageConst.NOTIFICATION)).cancel(C2752R.C2754id.dialer_reminder_notification_id);
        int ordinal = promotionType.ordinal();
        if (ordinal == 0) {
            Objects.requireNonNull((AbstractApplicationC8442a) afterCallPromotionActivity.getApplication());
            c.Ca(afterCallPromotionActivity, WizardActivity.class, (String) null, WizardStartContext.AC_PROMOTION);
            afterCallPromotionActivity.ua();
        } else if (ordinal == 1) {
            C19291g.m13561c1(afterCallPromotionActivity, "android.permission.READ_PHONE_STATE", 1);
        } else if (ordinal == 2) {
            C19291g.m13561c1(afterCallPromotionActivity, "android.permission.READ_CONTACTS", 1);
        } else if (ordinal != 3) {
        } else {
            Intent m34553xa = TruecallerInit.m34553xa(afterCallPromotionActivity, "calls", "afterCall");
            m34553xa.putExtra("promotion_setting_key", promotionType.settingKey);
            afterCallPromotionActivity.startActivity(m34553xa);
        }
    }
}
