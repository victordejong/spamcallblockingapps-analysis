package androidx.work.impl.p052a.p054b;

import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import androidx.work.AbstractC1293l;
import androidx.work.impl.utils.p058b.AbstractC1271a;
/* renamed from: androidx.work.impl.a.b.f */
/* loaded from: classes-dex2jar.jar:androidx/work/impl/a/b/f.class */
public class C1163f extends AbstractC1156c<Boolean> {

    /* renamed from: d */
    private static final String f3968d = AbstractC1293l.m17541a("StorageNotLowTracker");

    public C1163f(Context context, AbstractC1271a abstractC1271a) {
        super(context, abstractC1271a);
    }

    /* renamed from: a */
    public Boolean mo17837c() {
        Boolean bool = null;
        Intent registerReceiver = this.f3956b.registerReceiver(null, mo17838b());
        if (registerReceiver != null && registerReceiver.getAction() != null) {
            String action = registerReceiver.getAction();
            boolean z = true;
            switch (action.hashCode()) {
                case -1181163412:
                    if (action.equals("android.intent.action.DEVICE_STORAGE_LOW")) {
                        z = true;
                        break;
                    }
                    break;
                case -730838620:
                    if (action.equals("android.intent.action.DEVICE_STORAGE_OK")) {
                        z = false;
                        break;
                    }
                    break;
            }
            switch (z) {
                case false:
                    bool = true;
                    break;
                case true:
                    bool = false;
                    break;
            }
        } else {
            bool = true;
        }
        return bool;
    }

    @Override // androidx.work.impl.p052a.p054b.AbstractC1156c
    /* renamed from: a */
    public void mo17839a(Context context, Intent intent) {
        if (intent.getAction() == null) {
            return;
        }
        AbstractC1293l.m17543a().mo17539b(f3968d, String.format("Received %s", intent.getAction()), new Throwable[0]);
        String action = intent.getAction();
        boolean z = true;
        switch (action.hashCode()) {
            case -1181163412:
                if (action.equals("android.intent.action.DEVICE_STORAGE_LOW")) {
                    z = true;
                    break;
                }
                break;
            case -730838620:
                if (action.equals("android.intent.action.DEVICE_STORAGE_OK")) {
                    z = false;
                    break;
                }
                break;
        }
        switch (z) {
            case false:
                m17848a((C1163f) true);
                return;
            case true:
                m17848a((C1163f) false);
                return;
            default:
                return;
        }
    }

    @Override // androidx.work.impl.p052a.p054b.AbstractC1156c
    /* renamed from: b */
    public IntentFilter mo17838b() {
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction("android.intent.action.DEVICE_STORAGE_OK");
        intentFilter.addAction("android.intent.action.DEVICE_STORAGE_LOW");
        return intentFilter;
    }
}
