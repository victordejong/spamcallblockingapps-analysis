package com.google.android.gms.wearable.internal;

import android.app.Activity;
import android.content.Context;
import android.content.IntentFilter;
import com.google.android.gms.common.api.f;
import com.google.android.gms.common.api.internal.i;
import com.google.android.gms.common.api.internal.j;
import com.google.android.gms.common.internal.n;
import com.google.android.gms.tasks.h;
import com.google.android.gms.wearable.k;
import com.google.android.gms.wearable.l;
/* loaded from: classes4-dex2jar.jar:com/google/android/gms/wearable/internal/bu.class */
public final class bu extends l {
    private final k h = new br();

    public bu(Activity activity, f.a aVar) {
        super(activity, aVar);
    }

    public bu(Context context, f.a aVar) {
        super(context, aVar);
    }

    @Override // com.google.android.gms.wearable.l
    public final h<Void> a(l.a aVar) {
        IntentFilter a2 = cp.a("com.google.android.gms.wearable.MESSAGE_RECEIVED");
        i a3 = j.a(aVar, this.f22616d, "MessageListener");
        return a((bu) new bx(aVar, new IntentFilter[]{a2}, a3), (bx) new by(aVar, a3.f22740b));
    }

    @Override // com.google.android.gms.wearable.l
    public final h<Integer> a(String str, String str2, byte[] bArr) {
        return n.a(this.h.a(this.f, str, str2, bArr), bv.f30098a);
    }

    @Override // com.google.android.gms.wearable.l
    public final h<Boolean> b(l.a aVar) {
        return a((i.a<?>) j.a(aVar, this.f22616d, "MessageListener").f22740b);
    }
}
