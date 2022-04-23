package androidx.media;

import android.content.Context;
import android.media.session.MediaSessionManager;
import android.os.Build;
import android.text.TextUtils;
import android.util.Log;
import androidx.media.d;
import androidx.media.e;
import java.util.Objects;
/* loaded from: classes-dex2jar.jar:androidx/media/b.class */
public final class b {

    /* renamed from: a  reason: collision with root package name */
    static final boolean f2707a = Log.isLoggable("MediaSessionManager", 3);

    /* renamed from: c  reason: collision with root package name */
    private static final Object f2708c = new Object();

    /* renamed from: d  reason: collision with root package name */
    private static volatile b f2709d;

    /* renamed from: b  reason: collision with root package name */
    a f2710b;

    /* loaded from: classes-dex2jar.jar:androidx/media/b$a.class */
    interface a {
        boolean a(c cVar);
    }

    /* renamed from: androidx.media.b$b  reason: collision with other inner class name */
    /* loaded from: classes-dex2jar.jar:androidx/media/b$b.class */
    public static final class C0073b {

        /* renamed from: a  reason: collision with root package name */
        public c f2711a;

        public C0073b(MediaSessionManager.RemoteUserInfo remoteUserInfo) {
            String packageName = remoteUserInfo.getPackageName();
            Objects.requireNonNull(packageName, "package shouldn't be null");
            if (!TextUtils.isEmpty(packageName)) {
                this.f2711a = new d.a(remoteUserInfo);
                return;
            }
            throw new IllegalArgumentException("packageName should be nonempty");
        }

        public C0073b(String str, int i, int i2) {
            Objects.requireNonNull(str, "package shouldn't be null");
            if (TextUtils.isEmpty(str)) {
                throw new IllegalArgumentException("packageName should be nonempty");
            } else if (Build.VERSION.SDK_INT >= 28) {
                this.f2711a = new d.a(str, i, i2);
            } else {
                this.f2711a = new e.a(str, i, i2);
            }
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof C0073b)) {
                return false;
            }
            return this.f2711a.equals(((C0073b) obj).f2711a);
        }

        public final int hashCode() {
            return this.f2711a.hashCode();
        }
    }

    /* loaded from: classes-dex2jar.jar:androidx/media/b$c.class */
    public interface c {
        String a();

        int b();

        int c();
    }

    private b(Context context) {
        if (Build.VERSION.SDK_INT >= 28) {
            this.f2710b = new d(context);
        } else if (Build.VERSION.SDK_INT >= 21) {
            this.f2710b = new androidx.media.c(context);
        } else {
            this.f2710b = new e(context);
        }
    }

    public static b a(Context context) {
        b bVar;
        if (context != null) {
            synchronized (f2708c) {
                if (f2709d == null) {
                    f2709d = new b(context.getApplicationContext());
                }
                bVar = f2709d;
            }
            return bVar;
        }
        throw new IllegalArgumentException("context cannot be null");
    }

    public final boolean a(C0073b bVar) {
        if (bVar != null) {
            return this.f2710b.a(bVar.f2711a);
        }
        throw new IllegalArgumentException("userInfo should not be null");
    }
}
