package androidx.work.impl.p052a.p054b;

import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import androidx.work.AbstractC1293l;
import androidx.work.impl.utils.p058b.AbstractC1271a;
/* renamed from: androidx.work.impl.a.b.b */
/* loaded from: classes-dex2jar.jar:androidx/work/impl/a/b/b.class */
public class C1155b extends AbstractC1156c<Boolean> {

    /* renamed from: d */
    private static final String f3950d = AbstractC1293l.m17541a("BatteryNotLowTracker");

    public C1155b(Context context, AbstractC1271a abstractC1271a) {
        super(context, abstractC1271a);
    }

    /* renamed from: a */
    public Boolean mo17837c() {
        Boolean valueOf;
        boolean z = false;
        Intent registerReceiver = this.f3956b.registerReceiver(null, new IntentFilter("android.intent.action.BATTERY_CHANGED"));
        if (registerReceiver == null) {
            AbstractC1293l.m17543a().mo17536e(f3950d, "getInitialState - null intent received", new Throwable[0]);
            valueOf = null;
        } else {
            int intExtra = registerReceiver.getIntExtra("plugged", 0);
            int intExtra2 = registerReceiver.getIntExtra("status", -1);
            float intExtra3 = registerReceiver.getIntExtra("level", -1) / registerReceiver.getIntExtra("scale", -1);
            if (intExtra != 0 || intExtra2 == 1 || intExtra3 > 0.15f) {
                z = true;
            }
            valueOf = Boolean.valueOf(z);
        }
        return valueOf;
    }

    @Override // androidx.work.impl.p052a.p054b.AbstractC1156c
    /* renamed from: a */
    public void mo17839a(Context context, Intent intent) {
        if (intent.getAction() == null) {
            return;
        }
        AbstractC1293l.m17543a().mo17539b(f3950d, String.format("Received %s", intent.getAction()), new Throwable[0]);
        String action = intent.getAction();
        boolean z = true;
        switch (action.hashCode()) {
            case -1980154005:
                if (action.equals("android.intent.action.BATTERY_OKAY")) {
                    z = false;
                    break;
                }
                break;
            case 490310653:
                if (action.equals("android.intent.action.BATTERY_LOW")) {
                    z = true;
                    break;
                }
                break;
        }
        switch (z) {
            case false:
                m17848a((C1155b) true);
                return;
            case true:
                m17848a((C1155b) false);
                return;
            default:
                return;
        }
    }

    @Override // androidx.work.impl.p052a.p054b.AbstractC1156c
    /* renamed from: b */
    public IntentFilter mo17838b() {
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction("android.intent.action.BATTERY_OKAY");
        intentFilter.addAction("android.intent.action.BATTERY_LOW");
        return intentFilter;
    }
}
