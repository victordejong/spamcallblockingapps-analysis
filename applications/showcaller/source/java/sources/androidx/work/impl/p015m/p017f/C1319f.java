package androidx.work.impl.p015m.p017f;

import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import androidx.work.AbstractC1404j;
import androidx.work.impl.utils.p019o.AbstractC1399a;
/* renamed from: androidx.work.impl.m.f.f */
/* loaded from: classes-dex2jar.jar:androidx/work/impl/m/f/f.class */
public class C1319f extends AbstractC1312c<Boolean> {

    /* renamed from: i */
    private static final String f5539i = AbstractC1404j.m30159f("StorageNotLowTracker");

    public C1319f(Context context, AbstractC1399a abstractC1399a) {
        super(context, abstractC1399a);
    }

    @Override // androidx.work.impl.p015m.p017f.AbstractC1312c
    /* renamed from: g */
    public IntentFilter mo30314g() {
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction("android.intent.action.DEVICE_STORAGE_OK");
        intentFilter.addAction("android.intent.action.DEVICE_STORAGE_LOW");
        return intentFilter;
    }

    @Override // androidx.work.impl.p015m.p017f.AbstractC1312c
    /* renamed from: h */
    public void mo30313h(Context context, Intent intent) {
        if (intent.getAction() == null) {
            return;
        }
        AbstractC1404j.m30161c().mo30158a(f5539i, String.format("Received %s", intent.getAction()), new Throwable[0]);
        String action = intent.getAction();
        action.hashCode();
        if (action.equals("android.intent.action.DEVICE_STORAGE_LOW")) {
            m30322d(Boolean.FALSE);
        } else if (!action.equals("android.intent.action.DEVICE_STORAGE_OK")) {
        } else {
            m30322d(Boolean.TRUE);
        }
    }

    /* renamed from: i */
    public Boolean mo30315b() {
        Intent registerReceiver = this.f5527c.registerReceiver(null, mo30314g());
        if (registerReceiver == null || registerReceiver.getAction() == null) {
            return Boolean.TRUE;
        }
        String action = registerReceiver.getAction();
        action.hashCode();
        if (action.equals("android.intent.action.DEVICE_STORAGE_LOW")) {
            return Boolean.FALSE;
        }
        if (action.equals("android.intent.action.DEVICE_STORAGE_OK")) {
            return Boolean.TRUE;
        }
        return null;
    }
}
