package com.allinone.callerid.util;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import com.allinone.callerid.mvc.controller.SinglePixelActivity;
import com.allinone.callerid.receiver.KeepReceiver;
import java.lang.ref.WeakReference;
/* renamed from: com.allinone.callerid.util.a0 */
/* loaded from: classes-dex2jar.jar:com/allinone/callerid/util/a0.class */
public class C3710a0 {

    /* renamed from: a */
    private static final C3710a0 f11900a = new C3710a0();

    /* renamed from: b */
    private KeepReceiver f11901b;

    /* renamed from: c */
    private WeakReference<Activity> f11902c;

    private C3710a0() {
    }

    /* renamed from: b */
    public static C3710a0 m24668b() {
        return f11900a;
    }

    /* renamed from: a */
    public void m24669a() {
        Activity activity;
        try {
            WeakReference<Activity> weakReference = this.f11902c;
            if (weakReference == null || (activity = weakReference.get()) == null) {
                return;
            }
            activity.finish();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    /* renamed from: c */
    public void m24667c(Context context) {
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction("android.intent.action.SCREEN_ON");
        intentFilter.addAction("android.intent.action.SCREEN_OFF");
        KeepReceiver keepReceiver = new KeepReceiver();
        this.f11901b = keepReceiver;
        context.registerReceiver(keepReceiver, intentFilter);
    }

    /* renamed from: d */
    public void m24666d(SinglePixelActivity singlePixelActivity) {
        this.f11902c = new WeakReference<>(singlePixelActivity);
    }

    /* renamed from: e */
    public void m24665e(Context context) {
        try {
            Intent intent = new Intent(context, SinglePixelActivity.class);
            intent.setFlags(268435456);
            context.startActivity(intent);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    /* renamed from: f */
    public void m24664f(Context context) {
        KeepReceiver keepReceiver = this.f11901b;
        if (keepReceiver != null) {
            context.unregisterReceiver(keepReceiver);
        }
    }
}
