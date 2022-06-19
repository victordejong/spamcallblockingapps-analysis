package com.google.android.gms.plus.internal;

import android.content.Context;
import android.os.IBinder;
import android.os.IInterface;
import android.view.View;
import com.google.android.gms.dynamic.ObjectWrapper;
import com.google.android.gms.dynamic.RemoteCreator;
import com.google.android.gms.plus.PlusOneDummyView;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/plus/internal/zzm.class */
public final class zzm extends RemoteCreator<zzd> {
    private static final zzm zzz = new zzm();

    private zzm() {
        super("com.google.android.gms.plus.plusone.PlusOneButtonCreatorImpl");
    }

    public static View zza(Context context, int i, int i2, String str, int i3) {
        PlusOneDummyView plusOneDummyView;
        try {
        } catch (Exception e) {
            plusOneDummyView = new PlusOneDummyView(context, i);
        }
        if (str != null) {
            plusOneDummyView = (View) ObjectWrapper.unwrap(zzz.getRemoteCreatorInstance(context).zza(ObjectWrapper.wrap(context), i, i2, str, i3));
            return plusOneDummyView;
        }
        throw new NullPointerException();
    }

    @Override // com.google.android.gms.dynamic.RemoteCreator
    protected final /* synthetic */ zzd getRemoteCreator(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.plus.internal.IPlusOneButtonCreator");
        return queryLocalInterface instanceof zzd ? (zzd) queryLocalInterface : new zze(iBinder);
    }
}
