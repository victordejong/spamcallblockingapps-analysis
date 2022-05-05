package com.google.android.gms.dynamic;

import android.content.Context;
import android.os.IBinder;
import com.google.android.gms.common.GooglePlayServicesUtilLight;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.common.internal.Preconditions;
@KeepForSdk
/* loaded from: classes-dex2jar.jar:com/google/android/gms/dynamic/RemoteCreator.class */
public abstract class RemoteCreator<T> {

    /* renamed from: a */
    private final String f7691a;

    /* renamed from: b */
    private T f7692b;

    @KeepForSdk
    /* loaded from: classes-dex2jar.jar:com/google/android/gms/dynamic/RemoteCreator$RemoteCreatorException.class */
    public static class RemoteCreatorException extends Exception {
        public RemoteCreatorException(String str) {
            super(str);
        }

        public RemoteCreatorException(String str, Throwable th) {
            super(str, th);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @KeepForSdk
    public RemoteCreator(String str) {
        this.f7691a = str;
    }

    @KeepForSdk
    /* renamed from: a */
    protected abstract T mo14256a(IBinder iBinder);

    /* JADX INFO: Access modifiers changed from: protected */
    @KeepForSdk
    /* renamed from: b */
    public final T m14255b(Context context) throws RemoteCreatorException {
        if (this.f7692b == null) {
            Preconditions.m14523k(context);
            Context e = GooglePlayServicesUtilLight.m15050e(context);
            if (e != null) {
                try {
                    this.f7692b = mo14256a((IBinder) e.getClassLoader().loadClass(this.f7691a).newInstance());
                } catch (ClassNotFoundException e2) {
                    throw new RemoteCreatorException("Could not load creator class.", e2);
                } catch (IllegalAccessException e3) {
                    throw new RemoteCreatorException("Could not access creator.", e3);
                } catch (InstantiationException e4) {
                    throw new RemoteCreatorException("Could not instantiate creator.", e4);
                }
            } else {
                throw new RemoteCreatorException("Could not get remote context.");
            }
        }
        return this.f7692b;
    }
}
