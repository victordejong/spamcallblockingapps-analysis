package androidx.work.impl.a.b;

import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import androidx.work.impl.utils.b.a;
import androidx.work.k;
/* loaded from: classes-dex2jar.jar:androidx/work/impl/a/b/b.class */
public final class b extends c<Boolean> {

    /* renamed from: d  reason: collision with root package name */
    private static final String f5998d = k.a("BatteryNotLowTracker");

    public b(Context context, a aVar) {
        super(context, aVar);
    }

    @Override // androidx.work.impl.a.b.c
    public final IntentFilter a() {
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction("android.intent.action.BATTERY_OKAY");
        intentFilter.addAction("android.intent.action.BATTERY_LOW");
        return intentFilter;
    }

    @Override // androidx.work.impl.a.b.c
    public final void a(Intent intent) {
        if (intent.getAction() != null) {
            k.a();
            String.format("Received %s", intent.getAction());
            String action = intent.getAction();
            action.hashCode();
            if (action.equals("android.intent.action.BATTERY_OKAY")) {
                a((b) Boolean.TRUE);
            } else if (action.equals("android.intent.action.BATTERY_LOW")) {
                a((b) Boolean.FALSE);
            }
        }
    }

    @Override // androidx.work.impl.a.b.d
    public final /* synthetic */ Object b() {
        Intent registerReceiver = this.f6003b.registerReceiver(null, new IntentFilter("android.intent.action.BATTERY_CHANGED"));
        boolean z = false;
        if (registerReceiver == null) {
            k.a().a(f5998d, "getInitialState - null intent received", new Throwable[0]);
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
