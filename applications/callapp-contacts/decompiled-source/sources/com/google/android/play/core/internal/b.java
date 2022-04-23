package com.google.android.play.core.internal;

import android.os.IBinder;
import android.os.IInterface;
/* loaded from: classes4-dex2jar.jar:com/google/android/play/core/internal/b.class */
public abstract class b extends bn implements c {
    public static c a(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.play.core.inappreview.protocol.IInAppReviewService");
        return queryLocalInterface instanceof c ? (c) queryLocalInterface : new a(iBinder);
    }
}
