package com.google.android.play.core.internal;

import android.os.IBinder;
import android.os.IInterface;
/* renamed from: com.google.android.play.core.internal.b */
/* loaded from: classes4-dex2jar.jar:com/google/android/play/core/internal/b.class */
public abstract class AbstractBinderC15036b extends BinderC15050bn implements AbstractC15063c {
    /* renamed from: a */
    public static AbstractC15063c m9576a(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.play.core.inappreview.protocol.IInAppReviewService");
        return queryLocalInterface instanceof AbstractC15063c ? (AbstractC15063c) queryLocalInterface : new C15009a(iBinder);
    }
}
