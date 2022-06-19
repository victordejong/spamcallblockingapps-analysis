package com.criteo.publisher.p250j;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.os.Handler;
import android.os.Looper;
import com.criteo.publisher.CriteoInterstitialActivity;
import com.criteo.publisher.p254l.C8387d;
import com.criteo.publisher.p255m.C8421b;
import com.criteo.publisher.p256m0.ResultReceiverC8438i;
/* renamed from: com.criteo.publisher.j.a */
/* loaded from: classes2-dex2jar.jar:com/criteo/publisher/j/a.class */
public class C8353a {

    /* renamed from: a */
    private final Context f30010a;

    /* renamed from: b */
    private final C8421b f30011b;

    public C8353a(Context context, C8421b c8421b) {
        this.f30010a = context;
        this.f30011b = c8421b;
    }

    /* renamed from: b */
    private Intent m25806b() {
        return new Intent(this.f30010a, CriteoInterstitialActivity.class);
    }

    /* renamed from: a */
    public void mo25377a(String str, C8387d c8387d) {
        if (!mo25378a()) {
            return;
        }
        ResultReceiverC8438i resultReceiverC8438i = new ResultReceiverC8438i(new Handler(Looper.getMainLooper()), c8387d);
        ComponentName m25710a = this.f30011b.m25710a();
        Intent m25806b = m25806b();
        m25806b.setFlags(268435456);
        m25806b.putExtra("webviewdata", str);
        m25806b.putExtra("resultreceiver", resultReceiverC8438i);
        m25806b.putExtra("callingactivity", m25710a);
        this.f30010a.startActivity(m25806b);
    }

    /* renamed from: a */
    public boolean mo25378a() {
        boolean z = false;
        if (this.f30010a.getPackageManager().resolveActivity(m25806b(), 65536) == null) {
            return false;
        }
        if (this.f30010a.getResources().getIdentifier("activity_criteo_interstitial", "layout", this.f30010a.getPackageName()) != 0) {
            z = true;
        }
        return z;
    }
}
