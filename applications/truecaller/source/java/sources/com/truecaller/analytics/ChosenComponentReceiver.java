package com.truecaller.analytics;

import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import com.razorpay.AnalyticsConstants;
import kotlin.Metadata;
import p193e.p194a.p1146q2.AbstractC19537q;
import s1.z.c.l;
@Metadata(bv = {1, 0, 3}, d1 = {"��\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\u0018��2\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"Lcom/truecaller/analytics/ChosenComponentReceiver;", "Le/a/q2/q;", "<init>", "()V", "truecaller_googlePlayRelease"}, k = 1, mv = {1, 4, 1})
/* loaded from: classes4-dex2jar.jar:com/truecaller/analytics/ChosenComponentReceiver.class */
public final class ChosenComponentReceiver extends AbstractC19537q {
    /* renamed from: a */
    public static final PendingIntent m35946a(Context context, String str) {
        l.e(context, AnalyticsConstants.CONTEXT);
        l.e(str, "source");
        Intent intent = new Intent(context, ChosenComponentReceiver.class);
        intent.putExtra("EXTRA_SOURCE", str);
        PendingIntent broadcast = PendingIntent.getBroadcast(context, 0, intent, 201326592);
        l.d(broadcast, "PendingIntent.getBroadca…ingIntent.FLAG_IMMUTABLE)");
        return broadcast;
    }
}
