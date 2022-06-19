package com.truecaller.p183ui;

import android.content.Context;
import android.content.Intent;
import com.razorpay.AnalyticsConstants;
import com.truecaller.premium.util.NotificationAccessSource;
import kotlin.Metadata;
import p193e.p194a.p682e.AbstractC13045b1;
import p193e.p194a.p682e.AbstractC13287n0;
import s1.z.c.l;
@Metadata(bv = {1, 0, 3}, d1 = {"��\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0007\u0018��2\u00020\u0001:\u0001\u0006B\u0007¢\u0006\u0004\b\u0005\u0010\u0004J\u000f\u0010\u0003\u001a\u00020\u0002H\u0014¢\u0006\u0004\b\u0003\u0010\u0004¨\u0006\u0007"}, d2 = {"Lcom/truecaller/ui/NotificationAccessActivity;", "Le/a/e/n0;", "Ls1/s;", "onResume", "()V", "<init>", "a", "truecaller_googlePlayRelease"}, k = 1, mv = {1, 4, 1})
/* renamed from: com.truecaller.ui.NotificationAccessActivity */
/* loaded from: classes15-dex2jar.jar:com/truecaller/ui/NotificationAccessActivity.class */
public final class NotificationAccessActivity extends AbstractC13045b1 {

    /* renamed from: com.truecaller.ui.NotificationAccessActivity$a */
    /* loaded from: classes15-dex2jar.jar:com/truecaller/ui/NotificationAccessActivity$a.class */
    public static final class C4662a {
        /* renamed from: a */
        public static final Intent m34592a(Context context, NotificationAccessSource notificationAccessSource, int i, Intent intent) {
            l.e(context, AnalyticsConstants.CONTEXT);
            l.e(notificationAccessSource, "source");
            l.e(intent, "callbackIntent");
            Intent flags = AbstractC13287n0.m21951ra(new Intent(context, NotificationAccessActivity.class), notificationAccessSource, i, intent).setFlags(335609856);
            l.d(flags, "Intent(context, Notifica…EW_TASK\n                )");
            return flags;
        }
    }

    /* renamed from: sa */
    public static final Intent m34593sa(Context context, NotificationAccessSource notificationAccessSource, int i, Intent intent) {
        l.e(context, AnalyticsConstants.CONTEXT);
        l.e(notificationAccessSource, "source");
        l.e(intent, "callbackIntent");
        Intent intent2 = new Intent(context, NotificationAccessActivity.class);
        l.e(intent2, "$this$putParams");
        l.e(notificationAccessSource, "source");
        l.e(intent, "callbackIntent");
        Intent putExtra = intent2.putExtra("toastMessage", i).putExtra("source", notificationAccessSource).putExtra("goBackIntent", intent);
        l.d(putExtra, "this\n                .pu…K_INTENT, callbackIntent)");
        Intent flags = putExtra.setFlags(335609856);
        l.d(flags, "Intent(context, Notifica…EW_TASK\n                )");
        return flags;
    }

    @Override // p193e.p194a.p682e.AbstractC13287n0
    public void onResume() {
        super.onResume();
        if (!this.f38627e) {
            this.f38627e = true;
            m21952qa();
        }
    }
}
