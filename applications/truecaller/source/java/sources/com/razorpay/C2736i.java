package com.razorpay;

import android.app.Activity;
import android.content.IntentFilter;
import java.util.ArrayList;
import java.util.Iterator;
import p1727n3.p1807k.p1809b.C26467a;
/* renamed from: com.razorpay.i */
/* loaded from: classes3-dex2jar.jar:com/razorpay/i.class */
public class C2736i {

    /* renamed from: c */
    private static C2736i f9457c;

    /* renamed from: a */
    public ArrayList<SmsAgentInterface> f9458a = new ArrayList<>();

    /* renamed from: b */
    private SmsReceiver f9459b;

    /* renamed from: a */
    public static C2736i m36072a() {
        if (f9457c == null) {
            f9457c = new C2736i();
        }
        return f9457c;
    }

    /* renamed from: a */
    public final void m36070a(SmsAgentInterface smsAgentInterface) {
        this.f9458a.add(smsAgentInterface);
    }

    /* renamed from: a */
    public final void m36069a(boolean z) {
        Iterator<SmsAgentInterface> it = this.f9458a.iterator();
        while (it.hasNext()) {
            it.next().setSmsPermission(z);
        }
    }

    /* renamed from: a */
    public final boolean m36071a(Activity activity) {
        if (C26467a.m1801a(activity, "android.permission.RECEIVE_SMS") != 0) {
            AnalyticsUtil.trackEvent(AnalyticsEvent.SMS_PERMISSION_ALREADY_NOT_GRANTED);
            return false;
        }
        m36069a(true);
        m36068b(activity);
        AnalyticsUtil.trackEvent(AnalyticsEvent.SMS_PERMISSION_ALREADY_GRANTED);
        return true;
    }

    /* renamed from: b */
    public final void m36068b(Activity activity) {
        if (this.f9459b != null) {
            return;
        }
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.setPriority(1000);
        this.f9459b = new SmsReceiver(this);
        intentFilter.addAction("android.provider.Telephony.SMS_RECEIVED");
        activity.registerReceiver(this.f9459b, intentFilter);
    }

    /* renamed from: b */
    public final void m36067b(SmsAgentInterface smsAgentInterface) {
        try {
            this.f9458a.remove(smsAgentInterface);
        } catch (Exception e) {
        }
    }

    /* renamed from: c */
    public final void m36066c(Activity activity) {
        m36069a(false);
        SmsReceiver smsReceiver = this.f9459b;
        if (smsReceiver == null) {
            return;
        }
        try {
            activity.unregisterReceiver(smsReceiver);
        } catch (Exception e) {
            AnalyticsUtil.reportError(e, AnalyticsConstants.CRITICAL, e.getMessage());
        }
        this.f9459b = null;
    }
}
