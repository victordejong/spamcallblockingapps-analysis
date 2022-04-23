package androidx.work.impl.a.b;

import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import androidx.work.impl.utils.b.a;
import androidx.work.k;
/* loaded from: classes-dex2jar.jar:androidx/work/impl/a/b/f.class */
public final class f extends c<Boolean> {

    /* renamed from: d  reason: collision with root package name */
    private static final String f6010d = k.a("StorageNotLowTracker");

    public f(Context context, a aVar) {
        super(context, aVar);
    }

    @Override // androidx.work.impl.a.b.c
    public final IntentFilter a() {
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction("android.intent.action.DEVICE_STORAGE_OK");
        intentFilter.addAction("android.intent.action.DEVICE_STORAGE_LOW");
        return intentFilter;
    }

    @Override // androidx.work.impl.a.b.c
    public final void a(Intent intent) {
        if (intent.getAction() != null) {
            k.a();
            String.format("Received %s", intent.getAction());
            String action = intent.getAction();
            action.hashCode();
            if (action.equals("android.intent.action.DEVICE_STORAGE_LOW")) {
                a((f) Boolean.FALSE);
            } else if (action.equals("android.intent.action.DEVICE_STORAGE_OK")) {
                a((f) Boolean.TRUE);
            }
        }
    }

    @Override // androidx.work.impl.a.b.d
    public final /* synthetic */ Object b() {
        Intent registerReceiver = this.f6003b.registerReceiver(null, a());
        if (registerReceiver == null || registerReceiver.getAction() == null) {
            return Boolean.TRUE;
        }
        String action = registerReceiver.getAction();
        action.hashCode();
        if (action.equals("android.intent.action.DEVICE_STORAGE_LOW")) {
            return Boolean.FALSE;
        }
        if (!action.equals("android.intent.action.DEVICE_STORAGE_OK")) {
            return null;
        }
        return Boolean.TRUE;
    }
}
