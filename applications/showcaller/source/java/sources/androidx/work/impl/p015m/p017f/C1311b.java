package androidx.work.impl.p015m.p017f;

import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import androidx.work.AbstractC1404j;
import androidx.work.impl.utils.p019o.AbstractC1399a;
/* renamed from: androidx.work.impl.m.f.b */
/* loaded from: classes-dex2jar.jar:androidx/work/impl/m/f/b.class */
public class C1311b extends AbstractC1312c<Boolean> {

    /* renamed from: i */
    private static final String f5521i = AbstractC1404j.m30159f("BatteryNotLowTracker");

    public C1311b(Context context, AbstractC1399a abstractC1399a) {
        super(context, abstractC1399a);
    }

    @Override // androidx.work.impl.p015m.p017f.AbstractC1312c
    /* renamed from: g */
    public IntentFilter mo30314g() {
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction("android.intent.action.BATTERY_OKAY");
        intentFilter.addAction("android.intent.action.BATTERY_LOW");
        return intentFilter;
    }

    @Override // androidx.work.impl.p015m.p017f.AbstractC1312c
    /* renamed from: h */
    public void mo30313h(Context context, Intent intent) {
        if (intent.getAction() == null) {
            return;
        }
        AbstractC1404j.m30161c().mo30158a(f5521i, String.format("Received %s", intent.getAction()), new Throwable[0]);
        String action = intent.getAction();
        action.hashCode();
        if (action.equals("android.intent.action.BATTERY_OKAY")) {
            m30322d(Boolean.TRUE);
        } else if (!action.equals("android.intent.action.BATTERY_LOW")) {
        } else {
            m30322d(Boolean.FALSE);
        }
    }

    /* renamed from: i */
    public Boolean mo30315b() {
        Intent registerReceiver = this.f5527c.registerReceiver(null, new IntentFilter("android.intent.action.BATTERY_CHANGED"));
        boolean z = false;
        if (registerReceiver == null) {
            AbstractC1404j.m30161c().mo30157b(f5521i, "getInitialState - null intent received", new Throwable[0]);
            return null;
        }
        int intExtra = registerReceiver.getIntExtra("status", -1);
        float intExtra2 = registerReceiver.getIntExtra("level", -1) / registerReceiver.getIntExtra("scale", -1);
        if (intExtra == 1 || intExtra2 > 0.15f) {
            z = true;
        }
        return Boolean.valueOf(z);
    }
}
