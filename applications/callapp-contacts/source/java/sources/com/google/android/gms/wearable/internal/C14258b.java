package com.google.android.gms.wearable.internal;

import android.app.Activity;
import android.content.Context;
import android.content.IntentFilter;
import android.os.Looper;
import com.google.android.gms.common.api.AbstractC11823f;
import com.google.android.gms.common.api.internal.C11899i;
import com.google.android.gms.common.api.internal.C11902j;
import com.google.android.gms.common.internal.C12024c;
import com.google.android.gms.common.internal.C12043n;
import com.google.android.gms.tasks.AbstractC14185h;
import com.google.android.gms.wearable.AbstractC14209a;
import com.google.android.gms.wearable.AbstractC14221b;
import com.google.android.gms.wearable.AbstractC14223c;
/* renamed from: com.google.android.gms.wearable.internal.b */
/* loaded from: classes4-dex2jar.jar:com/google/android/gms/wearable/internal/b.class */
public final class C14258b extends AbstractC14221b {

    /* renamed from: h */
    private final AbstractC14209a f52225h = new C14328dp();

    public C14258b(Activity activity, AbstractC11823f.C11824a c11824a) {
        super(activity, c11824a);
    }

    public C14258b(Context context, AbstractC11823f.C11824a c11824a) {
        super(context, c11824a);
    }

    @Override // com.google.android.gms.wearable.AbstractC14221b
    /* renamed from: a */
    public final AbstractC14185h<Boolean> mo11438a(AbstractC14221b.AbstractC14222a abstractC14222a) {
        C12024c.m19190a(abstractC14222a, "listener must not be null");
        return m19457a((C11899i.C11900a<?>) C11902j.m19322a(abstractC14222a, this.f39182d, "CapabilityListener").f39366b);
    }

    @Override // com.google.android.gms.wearable.AbstractC14221b
    /* renamed from: a */
    public final AbstractC14185h<Void> mo11437a(AbstractC14221b.AbstractC14222a abstractC14222a, String str) {
        C12024c.m19190a(abstractC14222a, "listener must not be null");
        C12024c.m19190a(str, "capability must not be null");
        IntentFilter m11399a = C14301cp.m11399a("com.google.android.gms.wearable.CAPABILITY_CHANGED");
        String str2 = str;
        if (!str.startsWith("/")) {
            String valueOf = String.valueOf(str);
            str2 = valueOf.length() != 0 ? "/".concat(valueOf) : new String("/");
        }
        m11399a.addDataPath(str2, 0);
        Looper looper = this.f39182d;
        String valueOf2 = String.valueOf(str2);
        C11899i m19322a = C11902j.m19322a(abstractC14222a, looper, valueOf2.length() != 0 ? "CapabilityListener:".concat(valueOf2) : new String("CapabilityListener:"));
        C14332e c14332e = new C14332e(abstractC14222a, str2);
        return m19456a((C14258b) new C14333f(c14332e, new IntentFilter[]{m11399a}, m19322a), (C14333f) new C14334g(c14332e, m19322a.f39366b));
    }

    @Override // com.google.android.gms.wearable.AbstractC14221b
    /* renamed from: a */
    public final AbstractC14185h<AbstractC14223c> mo11436a(String str) {
        C12024c.m19190a(str, "capability must not be null");
        return C12043n.m19164a(this.f52225h.mo11365a(this.f39184f, str, 1), C14285c.f52242a);
    }
}
