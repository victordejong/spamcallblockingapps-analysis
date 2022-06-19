package com.google.android.gms.dynamic;

import android.content.Context;
import android.os.IBinder;
import com.google.android.gms.common.C11943d;
import com.google.android.gms.common.internal.C12045o;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/dynamic/RemoteCreator.class */
public abstract class RemoteCreator<T> {

    /* renamed from: a */
    private final String f39648a;

    /* renamed from: b */
    private T f39649b;

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
        this.f39648a = str;
    }

    /* renamed from: a */
    public final T m18996a(Context context) throws RemoteCreatorException {
        if (this.f39649b == null) {
            C12045o.m19162a(context);
            Context remoteContext = C11943d.getRemoteContext(context);
            if (remoteContext == null) {
                throw new RemoteCreatorException("Could not get remote context.");
            }
            try {
                this.f39649b = mo14119a((IBinder) remoteContext.getClassLoader().loadClass(this.f39648a).newInstance());
            } catch (ClassNotFoundException e) {
                throw new RemoteCreatorException("Could not load creator class.", e);
            } catch (IllegalAccessException e2) {
                throw new RemoteCreatorException("Could not access creator.", e2);
            } catch (InstantiationException e3) {
                throw new RemoteCreatorException("Could not instantiate creator.", e3);
            }
        }
        return this.f39649b;
    }

    /* renamed from: a */
    protected abstract T mo14119a(IBinder iBinder);
}
