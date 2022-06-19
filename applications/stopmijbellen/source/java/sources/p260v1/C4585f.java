package p260v1;

import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import java.util.Objects;
import p003a2.AbstractC0008a;
import p186o1.AbstractC3824h;
/* renamed from: v1.f */
/* loaded from: classes-dex2jar.jar:v1/f.class */
public class C4585f extends AbstractC4578c<Boolean> {

    /* renamed from: i */
    public static final String f14170i = AbstractC3824h.m1773e("StorageNotLowTracker");

    public C4585f(Context context, AbstractC0008a abstractC0008a) {
        super(context, abstractC0008a);
    }

    @Override // p260v1.AbstractC4580d
    /* renamed from: a */
    public Object mo754a() {
        Context context = this.f14158b;
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction("android.intent.action.DEVICE_STORAGE_OK");
        intentFilter.addAction("android.intent.action.DEVICE_STORAGE_LOW");
        Boolean bool = null;
        Intent registerReceiver = context.registerReceiver(null, intentFilter);
        if (registerReceiver == null || registerReceiver.getAction() == null) {
            bool = Boolean.TRUE;
        } else {
            String action = registerReceiver.getAction();
            Objects.requireNonNull(action);
            if (action.equals("android.intent.action.DEVICE_STORAGE_LOW")) {
                bool = Boolean.FALSE;
            } else if (action.equals("android.intent.action.DEVICE_STORAGE_OK")) {
                bool = Boolean.TRUE;
            }
        }
        return bool;
    }

    @Override // p260v1.AbstractC4578c
    /* renamed from: f */
    public IntentFilter mo753f() {
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction("android.intent.action.DEVICE_STORAGE_OK");
        intentFilter.addAction("android.intent.action.DEVICE_STORAGE_LOW");
        return intentFilter;
    }

    @Override // p260v1.AbstractC4578c
    /* renamed from: g */
    public void mo752g(Context context, Intent intent) {
        if (intent.getAction() == null) {
            return;
        }
        AbstractC3824h.m1774c().mo1772a(f14170i, String.format("Received %s", intent.getAction()), new Throwable[0]);
        String action = intent.getAction();
        Objects.requireNonNull(action);
        if (action.equals("android.intent.action.DEVICE_STORAGE_LOW")) {
            m759c(Boolean.FALSE);
        } else if (!action.equals("android.intent.action.DEVICE_STORAGE_OK")) {
        } else {
            m759c(Boolean.TRUE);
        }
    }
}
