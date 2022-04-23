package com.android.contacts.simcardmanage;

import android.app.IntentService;
import android.content.Intent;
import android.util.Log;
/* loaded from: classes-dex2jar.jar:com/android/contacts/simcardmanage/SimcardService.class */
public class SimcardService extends IntentService {

    /* renamed from: a  reason: collision with root package name */
    private static final String f2150a = SimcardService.class.getSimpleName();

    public SimcardService() {
        super("SimcardService");
        setIntentRedelivery(true);
    }

    @Override // android.app.IntentService
    protected void onHandleIntent(Intent intent) {
        if (intent != null && intent.getAction().equals("android.intent.action.ASUS_SIM_CARD_SERVICE")) {
            e a2 = e.a(this);
            int intExtra = intent.getIntExtra("sim_index", 1);
            long longExtra = intent.getLongExtra("sim_sub_id", -1L);
            try {
                Log.d(f2150a, intExtra + ": SimCard Service Start");
                long currentTimeMillis = System.currentTimeMillis();
                a2.a(intExtra, longExtra);
                a2.c(intExtra, true);
                Log.d(f2150a, intExtra + ": Total Sync run time(sec):" + ((System.currentTimeMillis() - currentTimeMillis) / 1000));
                Log.d(f2150a, intExtra + ": SimCard Service Stop");
            } catch (Exception e) {
                Log.e(f2150a, intExtra + " : " + e.toString());
            }
        }
    }
}
