package com.unknownphone.callblocker.work;

import android.app.Service;
import android.content.Intent;
import android.content.SharedPreferences;
import android.os.Handler;
import android.os.IBinder;
import android.util.Log;
import com.p064b.p065a.p066a.p067a.C1332c;
import com.p064b.p065a.p066a.p067a.C1342h;
import java.util.Calendar;
import java.util.Date;
/* loaded from: classes-dex2jar.jar:com/unknownphone/callblocker/work/CustomService.class */
public class CustomService extends Service implements C1332c.AbstractC1335b {

    /* renamed from: a */
    private C1332c f22460a;

    /* renamed from: b */
    private SharedPreferences f22461b;

    /* renamed from: c */
    private Handler f22462c;

    @Override // com.p064b.p065a.p066a.p067a.C1332c.AbstractC1335b
    /* renamed from: B_ */
    public void mo845B_() {
        Log.d("CustomService", "onBillingInitialized() was called.");
        this.f22460a.m17444f();
        C1342h m17447d = this.f22460a.m17447d("inapp.unknownphone.callblocker1");
        C1342h m17447d2 = this.f22460a.m17447d("inapp.unknownphone.callblocker2");
        C1342h m17447d3 = this.f22460a.m17447d("inapp.unknownphone.callblocker3");
        boolean z = m17447d != null && m17447d.f4432e.f4422c.f4419h;
        boolean z2 = m17447d2 != null && m17447d2.f4432e.f4422c.f4419h;
        boolean z3 = m17447d3 != null && m17447d3.f4432e.f4422c.f4419h;
        boolean contains = this.f22461b.contains("subscription_ends_at");
        if (!z && !z2 && !z3) {
            this.f22461b.edit().putBoolean("just_became_free", contains).remove("subscription_ends_at").remove("block_unknown_calls").putBoolean("identify_spam_calls", false).putBoolean("block_spam_calls", true).apply();
        } else if (z2) {
            Date date = m17447d2.f4432e.f4422c.f4415d;
            Calendar calendar = Calendar.getInstance();
            calendar.setTime(date);
            calendar.add(2, 3);
            this.f22461b.edit().putLong("subscription_ends_at", calendar.getTimeInMillis()).apply();
        } else if (z) {
            Date date2 = m17447d.f4432e.f4422c.f4415d;
            Calendar calendar2 = Calendar.getInstance();
            calendar2.setTime(date2);
            calendar2.add(2, 1);
            this.f22461b.edit().putLong("subscription_ends_at", calendar2.getTimeInMillis()).apply();
        } else {
            Date date3 = m17447d3.f4432e.f4422c.f4415d;
            Calendar calendar3 = Calendar.getInstance();
            calendar3.setTime(date3);
            calendar3.add(2, 3);
            calendar3.add(6, 7);
            this.f22461b.edit().putLong("subscription_ends_at", calendar3.getTimeInMillis()).apply();
        }
        stopSelf();
    }

    @Override // com.p064b.p065a.p066a.p067a.C1332c.AbstractC1335b
    /* renamed from: a */
    public void mo844a() {
    }

    @Override // com.p064b.p065a.p066a.p067a.C1332c.AbstractC1335b
    /* renamed from: a */
    public void mo843a(int i, Throwable th) {
        Log.d("CustomService", "onBillingError() was called.");
        stopSelf();
    }

    @Override // com.p064b.p065a.p066a.p067a.C1332c.AbstractC1335b
    /* renamed from: a */
    public void mo842a(String str, C1342h c1342h) {
    }

    @Override // android.app.Service
    public IBinder onBind(Intent intent) {
        return null;
    }

    @Override // android.app.Service
    public void onCreate() {
        Log.d("CustomService", "onCreate() was called.");
        this.f22462c = new Handler();
        this.f22461b = getSharedPreferences("com.unknownphone.callblocker.PREFS", 0);
        this.f22460a = C1332c.m17463a(this, "MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAg/n5OPCfZKt31Wr3N97lYlj1E5zbMAFI/LLhsPP1uQqSioY5hUUBo4hjgfr9caMdt+w0xBINTDBW2S0hpEBa1/+rAb30eh+mBdPuQ84lva6/7eFl8tccX2dOSGq9XuQZfa2NREIOSizIGyhCeYgD2hpye5OUIhoy2JNPL65KqkSRnMO3r/hEr9ak+EVCb5BfadcZoLXX/iotW1CdxA56bz7fccemf5RwSHRDoTGUGwQWFtra0Syn5PCDoB+Q+Mp8HzVWtQSL7z+ZoMufL3+GMT/f2cVFCg/ixZOsNHLuf/Q/w/cnDb2olGlOYKXoLgncKxWl1paKkKS6G9i5akqK9QIDAQAB", this);
    }

    @Override // android.app.Service
    public void onDestroy() {
        Log.d("CustomService", "onDestroy() was called.");
        if (this.f22462c != null) {
            this.f22462c.removeCallbacksAndMessages(null);
        }
        if (this.f22460a != null) {
            this.f22460a.m17448d();
        }
    }

    @Override // android.app.Service
    public int onStartCommand(Intent intent, int i, int i2) {
        if (this.f22460a != null && !this.f22460a.m17446e()) {
            this.f22460a.m17451c();
        }
        if (this.f22462c != null) {
            this.f22462c.postDelayed(new Runnable() { // from class: com.unknownphone.callblocker.work.CustomService.1
                @Override // java.lang.Runnable
                public void run() {
                    CustomService.this.stopSelf();
                }
            }, 10000L);
            return 2;
        }
        return 2;
    }
}
