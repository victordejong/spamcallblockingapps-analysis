package androidx.work.impl.p085a.p087b;

import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import androidx.work.AbstractC3145k;
import androidx.work.impl.utils.p090b.AbstractC3119a;
/* renamed from: androidx.work.impl.a.b.f */
/* loaded from: classes-dex2jar.jar:androidx/work/impl/a/b/f.class */
public final class C3023f extends AbstractC3016c<Boolean> {

    /* renamed from: d */
    private static final String f11197d = AbstractC3145k.m39275a("StorageNotLowTracker");

    public C3023f(Context context, AbstractC3119a abstractC3119a) {
        super(context, abstractC3119a);
    }

    @Override // androidx.work.impl.p085a.p087b.AbstractC3016c
    /* renamed from: a */
    public final IntentFilter mo39446a() {
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction("android.intent.action.DEVICE_STORAGE_OK");
        intentFilter.addAction("android.intent.action.DEVICE_STORAGE_LOW");
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
        if (action.equals("android.intent.action.DEVICE_STORAGE_LOW")) {
            m39453a((C3023f) Boolean.FALSE);
        } else if (!action.equals("android.intent.action.DEVICE_STORAGE_OK")) {
        } else {
            m39453a((C3023f) Boolean.TRUE);
        }
    }

    @Override // androidx.work.impl.p085a.p087b.AbstractC3018d
    /* renamed from: b */
    public final /* synthetic */ Object mo39444b() {
        Intent registerReceiver = this.f11185b.registerReceiver(null, mo39446a());
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
