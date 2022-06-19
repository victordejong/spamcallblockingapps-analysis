package com.google.android.gms.dynamic;

import android.content.Context;
import android.os.IBinder;
import com.google.android.gms.common.C2595h;
import com.google.android.gms.common.internal.C2662s;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/dynamic/RemoteCreator.class */
public abstract class RemoteCreator<T> {

    /* renamed from: a */
    private final String f7547a;

    /* renamed from: b */
    private T f7548b;

    /* loaded from: classes-dex2jar.jar:com/google/android/gms/dynamic/RemoteCreator$RemoteCreatorException.class */
    public static class RemoteCreatorException extends Exception {
        public RemoteCreatorException(String str) {
            super(str);
        }

        public RemoteCreatorException(String str, Throwable th) {
            super(str, th);
        }
    }

    public RemoteCreator(String str) {
        this.f7547a = str;
    }

    /* renamed from: a */
    public final T m13797a(Context context) {
        if (this.f7548b == null) {
            C2662s.m13981a(context);
            Context m14150d = C2595h.m14150d(context);
            if (m14150d == null) {
                throw new RemoteCreatorException("Could not get remote context.");
            }
            try {
                this.f7548b = mo7264a((IBinder) m14150d.getClassLoader().loadClass(this.f7547a).newInstance());
            } catch (ClassNotFoundException e) {
                throw new RemoteCreatorException("Could not load creator class.", e);
            } catch (IllegalAccessException e2) {
                throw new RemoteCreatorException("Could not access creator.", e2);
            } catch (InstantiationException e3) {
                throw new RemoteCreatorException("Could not instantiate creator.", e3);
            }
        }
        return this.f7548b;
    }

    /* renamed from: a */
    protected abstract T mo7264a(IBinder iBinder);
}
