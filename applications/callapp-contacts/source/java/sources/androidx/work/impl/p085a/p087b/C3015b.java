package androidx.work.impl.p085a.p087b;

import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import androidx.work.AbstractC3145k;
import androidx.work.impl.utils.p090b.AbstractC3119a;
/* renamed from: androidx.work.impl.a.b.b */
/* loaded from: classes-dex2jar.jar:androidx/work/impl/a/b/b.class */
public final class C3015b extends AbstractC3016c<Boolean> {

    /* renamed from: d */
    private static final String f11179d = AbstractC3145k.m39275a("BatteryNotLowTracker");

    public C3015b(Context context, AbstractC3119a abstractC3119a) {
        super(context, abstractC3119a);
    }

    @Override // androidx.work.impl.p085a.p087b.AbstractC3016c
    /* renamed from: a */
    public final IntentFilter mo39446a() {
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction("android.intent.action.BATTERY_OKAY");
        intentFilter.addAction("android.intent.action.BATTERY_LOW");
        return intentFilter;
    }

    @Override // androidx.work.impl.p085a.p087b.AbstractC3016c
    /* renamed from: a */
    public final void mo39445a(Intent intent) {
        if (intent.getAction() == null) {
            return;
        }
        AbstractC3145k.m39277a();
        String.format("Received %s", intent.getAction());
        String action = intent.getAction();
        action.hashCode();
        if (action.equals("android.intent.action.BATTERY_OKAY")) {
            m39453a((C3015b) Boolean.TRUE);
        } else if (!action.equals("android.intent.action.BATTERY_LOW")) {
        } else {
            m39453a((C3015b) Boolean.FALSE);
        }
    }

    @Override // androidx.work.impl.p085a.p087b.AbstractC3018d
    /* renamed from: b */
    public final /* synthetic */ Object mo39444b() {
        Intent registerReceiver = this.f11185b.registerReceiver(null, new IntentFilter("android.intent.action.BATTERY_CHANGED"));
        boolean z = false;
        if (registerReceiver == null) {
            AbstractC3145k.m39277a().mo39273a(f11179d, "getInitialState - null intent received", new Throwable[0]);
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
