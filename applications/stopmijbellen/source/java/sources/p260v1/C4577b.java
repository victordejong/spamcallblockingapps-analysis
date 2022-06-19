package p260v1;

import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import com.applovin.sdk.AppLovinEventTypes;
import java.util.Objects;
import p003a2.AbstractC0008a;
import p186o1.AbstractC3824h;
/* renamed from: v1.b */
/* loaded from: classes-dex2jar.jar:v1/b.class */
public class C4577b extends AbstractC4578c<Boolean> {

    /* renamed from: i */
    public static final String f14152i = AbstractC3824h.m1773e("BatteryNotLowTracker");

    public C4577b(Context context, AbstractC0008a abstractC0008a) {
        super(context, abstractC0008a);
    }

    @Override // p260v1.AbstractC4580d
    /* renamed from: a */
    public Object mo754a() {
        Boolean bool = null;
        Intent registerReceiver = this.f14158b.registerReceiver(null, new IntentFilter("android.intent.action.BATTERY_CHANGED"));
        boolean z = false;
        if (registerReceiver == null) {
            AbstractC3824h.m1774c().mo1771b(f14152i, "getInitialState - null intent received", new Throwable[0]);
        } else {
            int intExtra = registerReceiver.getIntExtra("status", -1);
            float intExtra2 = registerReceiver.getIntExtra(AppLovinEventTypes.USER_COMPLETED_LEVEL, -1) / registerReceiver.getIntExtra("scale", -1);
            if (intExtra == 1 || intExtra2 > 0.15f) {
                z = true;
            }
            bool = Boolean.valueOf(z);
        }
        return bool;
    }

    @Override // p260v1.AbstractC4578c
    /* renamed from: f */
    public IntentFilter mo753f() {
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction("android.intent.action.BATTERY_OKAY");
        intentFilter.addAction("android.intent.action.BATTERY_LOW");
        return intentFilter;
    }

    @Override // p260v1.AbstractC4578c
    /* renamed from: g */
    public void mo752g(Context context, Intent intent) {
        if (intent.getAction() == null) {
            return;
        }
        AbstractC3824h.m1774c().mo1772a(f14152i, String.format("Received %s", intent.getAction()), new Throwable[0]);
        String action = intent.getAction();
        Objects.requireNonNull(action);
        if (action.equals("android.intent.action.BATTERY_OKAY")) {
            m759c(Boolean.TRUE);
        } else if (!action.equals("android.intent.action.BATTERY_LOW")) {
        } else {
            m759c(Boolean.FALSE);
        }
    }
}
