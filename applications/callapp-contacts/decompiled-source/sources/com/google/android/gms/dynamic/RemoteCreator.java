package com.google.android.gms.dynamic;

import android.content.Context;
import android.os.IBinder;
import com.google.android.gms.common.d;
import com.google.android.gms.common.internal.o;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/dynamic/RemoteCreator.class */
public abstract class RemoteCreator<T> {

    /* renamed from: a  reason: collision with root package name */
    private final String f22958a;

    /* renamed from: b  reason: collision with root package name */
    private T f22959b;

    /* loaded from: classes3-dex2jar.jar:com/google/android/gms/dynamic/RemoteCreator$RemoteCreatorException.class */
    public static class RemoteCreatorException extends Exception {
        public RemoteCreatorException(String str) {
            super(str);
        }

        public RemoteCreatorException(String str, Throwable th) {
            super(str, th);
        }
    }

    public RemoteCreator(String str) {
        this.f22958a = str;
    }

    public final T a(Context context) throws RemoteCreatorException {
        if (this.f22959b == null) {
            o.a(context);
            Context remoteContext = d.getRemoteContext(context);
            if (remoteContext != null) {
                try {
                    this.f22959b = a((IBinder) remoteContext.getClassLoader().loadClass(this.f22958a).newInstance());
                } catch (ClassNotFoundException e) {
                    throw new RemoteCreatorException("Could not load creator class.", e);
                } catch (IllegalAccessException e2) {
                    throw new RemoteCreatorException("Could not access creator.", e2);
                } catch (InstantiationException e3) {
                    throw new RemoteCreatorException("Could not instantiate creator.", e3);
                }
            } else {
                throw new RemoteCreatorException("Could not get remote context.");
            }
        }
        return this.f22959b;
    }

    protected abstract T a(IBinder iBinder);
}
