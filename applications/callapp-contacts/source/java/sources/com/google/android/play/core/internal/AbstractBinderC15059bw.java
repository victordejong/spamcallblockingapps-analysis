package com.google.android.play.core.internal;

import android.os.IBinder;
import android.os.IInterface;
/* renamed from: com.google.android.play.core.internal.bw */
/* loaded from: classes4-dex2jar.jar:com/google/android/play/core/internal/bw.class */
public abstract class AbstractBinderC15059bw extends BinderC15050bn implements AbstractC15060bx {
    /* renamed from: a */
    public static AbstractC15060bx m9542a(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.play.core.assetpacks.protocol.IAssetModuleService");
        return queryLocalInterface instanceof AbstractC15060bx ? (AbstractC15060bx) queryLocalInterface : new C15058bv(iBinder);
    }
}
