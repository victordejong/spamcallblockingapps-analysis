package com.google.android.gms.dynamic;

import android.content.Context;
import android.os.IBinder;
import androidx.annotation.RecentlyNonNull;
import com.google.android.gms.common.C6094e;
import com.google.android.gms.common.internal.C6155o;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/dynamic/RemoteCreator.class */
public abstract class RemoteCreator<T> {

    /* renamed from: a */
    private final String f19755a;

    /* renamed from: b */
    private T f19756b;

    /* loaded from: classes-dex2jar.jar:com/google/android/gms/dynamic/RemoteCreator$RemoteCreatorException.class */
    public static class RemoteCreatorException extends Exception {
        public RemoteCreatorException(@RecentlyNonNull String str) {
            super(str);
        }

        public RemoteCreatorException(@RecentlyNonNull String str, @RecentlyNonNull Throwable th) {
            super(str, th);
        }
    }

    public RemoteCreator(@RecentlyNonNull String str) {
        this.f19755a = str;
    }

    @RecentlyNonNull
    /* renamed from: a */
    protected abstract T mo10567a(@RecentlyNonNull IBinder iBinder);

    @RecentlyNonNull
    /* renamed from: b */
    public final T m16747b(@RecentlyNonNull Context context) {
        if (this.f19756b == null) {
            C6155o.m17018j(context);
            Context m17207d = C6094e.m17207d(context);
            if (m17207d == null) {
                throw new RemoteCreatorException("Could not get remote context.");
            }
            try {
                this.f19756b = mo10567a((IBinder) m17207d.getClassLoader().loadClass(this.f19755a).newInstance());
            } catch (ClassNotFoundException e) {
                throw new RemoteCreatorException("Could not load creator class.", e);
            } catch (IllegalAccessException e2) {
                throw new RemoteCreatorException("Could not access creator.", e2);
            } catch (InstantiationException e3) {
                throw new RemoteCreatorException("Could not instantiate creator.", e3);
            }
        }
        return this.f19756b;
    }
}
