package com.google.android.play.core.internal;

import android.os.Bundle;
import android.os.IInterface;
import android.os.RemoteException;
import java.util.List;
/* loaded from: classes4-dex2jar.jar:com/google/android/play/core/internal/ak.class */
public interface ak extends IInterface {
    void a(String str, int i, am amVar) throws RemoteException;

    void a(String str, List<Bundle> list, Bundle bundle, am amVar) throws RemoteException;
}
