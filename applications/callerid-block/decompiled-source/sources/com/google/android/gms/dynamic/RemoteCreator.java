package com.google.android.gms.dynamic;

import android.content.Context;
import android.os.IBinder;
import androidx.annotation.RecentlyNonNull;
import com.google.android.gms.common.C1555c;
import com.google.android.gms.common.internal.C1581h;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/dynamic/RemoteCreator.class */
public abstract class RemoteCreator<T> {

    /* renamed from: a */
    private final String f5910a;

    /* renamed from: b */
    private T f5911b;

    /* loaded from: classes-dex2jar.jar:com/google/android/gms/dynamic/RemoteCreator$RemoteCreatorException.class */
    public static class RemoteCreatorException extends Exception {
        public RemoteCreatorException(@RecentlyNonNull String str) {
            super(str);
        }

        public RemoteCreatorException(@RecentlyNonNull String str, @RecentlyNonNull Throwable th) {
            super(str, th);
        }
    }

    protected RemoteCreator(@RecentlyNonNull String str) {
        this.f5910a = str;
    }

    @RecentlyNonNull
    /* renamed from: a */
    protected abstract T m8185a(@RecentlyNonNull IBinder iBinder);

    @RecentlyNonNull
    /* renamed from: b */
    protected final T m8184b(@RecentlyNonNull Context context) {
        if (this.f5911b == null) {
            C1581h.m8347h(context);
            Context b = C1555c.m8451b(context);
            if (b != null) {
                try {
                    this.f5911b = m8185a((IBinder) b.getClassLoader().loadClass(this.f5910a).newInstance());
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
        return this.f5911b;
    }
}
