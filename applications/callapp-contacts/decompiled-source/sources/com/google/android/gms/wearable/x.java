package com.google.android.gms.wearable;

import android.content.Context;
import android.os.Looper;
import com.google.android.gms.common.api.a;
import com.google.android.gms.common.api.g;
import com.google.android.gms.common.internal.e;
import com.google.android.gms.wearable.internal.db;
import com.google.android.gms.wearable.p;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/wearable/x.class */
final class x extends a.AbstractC0453a<db, p.a> {
    @Override // com.google.android.gms.common.api.a.AbstractC0453a
    public final /* synthetic */ db a(Context context, Looper looper, e eVar, p.a aVar, g.a aVar2, g.b bVar) {
        if (aVar == null) {
            new p.a(new p.a.C0484a(), null);
        }
        return new db(context, looper, aVar2, bVar, eVar);
    }
}
