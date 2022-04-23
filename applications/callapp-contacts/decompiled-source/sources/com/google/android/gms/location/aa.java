package com.google.android.gms.location;

import android.content.Context;
import android.os.Looper;
import com.google.android.gms.common.api.a;
import com.google.android.gms.common.api.g;
import com.google.android.gms.common.internal.e;
import com.google.android.gms.internal.location.p;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/location/aa.class */
final class aa extends a.AbstractC0453a<p, a.d.c> {
    @Override // com.google.android.gms.common.api.a.AbstractC0453a
    public final /* synthetic */ p a(Context context, Looper looper, e eVar, a.d.c cVar, g.a aVar, g.b bVar) {
        return new p(context, looper, aVar, bVar, "locationServices", eVar);
    }
}
