package com.google.android.play.core.internal;

import android.os.IBinder;
import android.os.IInterface;
/* renamed from: com.google.android.play.core.internal.a1 */
/* loaded from: classes2-dex2jar.jar:com/google/android/play/core/internal/a1.class */
public abstract class AbstractBinderC8468a1 extends BinderC8525x0 implements AbstractC8472b1 {
    /* renamed from: D0 */
    public static AbstractC8472b1 m3560D0(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.play.core.assetpacks.protocol.IAssetModuleService");
        return queryLocalInterface instanceof AbstractC8472b1 ? (AbstractC8472b1) queryLocalInterface : new C8529z0(iBinder);
    }
}
