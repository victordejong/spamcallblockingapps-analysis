package androidx.media;

import android.content.Context;
import android.media.session.MediaSessionManager;
import android.os.Build;
import android.text.TextUtils;
import android.util.Log;
import androidx.media.C1334d;
import androidx.media.C1336e;
import java.util.Objects;
/* renamed from: androidx.media.b */
/* loaded from: classes-dex2jar.jar:androidx/media/b.class */
public final class C1329b {

    /* renamed from: a */
    static final boolean f4990a = Log.isLoggable("MediaSessionManager", 3);

    /* renamed from: c */
    private static final Object f4991c = new Object();

    /* renamed from: d */
    private static volatile C1329b f4992d;

    /* renamed from: b */
    AbstractC1330a f4993b;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: androidx.media.b$a */
    /* loaded from: classes-dex2jar.jar:androidx/media/b$a.class */
    public interface AbstractC1330a {
        /* renamed from: a */
        boolean mo43215a(AbstractC1332c abstractC1332c);
    }

    /* renamed from: androidx.media.b$b */
    /* loaded from: classes-dex2jar.jar:androidx/media/b$b.class */
    public static final class C1331b {

        /* renamed from: a */
        public AbstractC1332c f4994a;

        public C1331b(MediaSessionManager.RemoteUserInfo remoteUserInfo) {
            String packageName = remoteUserInfo.getPackageName();
            Objects.requireNonNull(packageName, "package shouldn't be null");
            if (!TextUtils.isEmpty(packageName)) {
                this.f4994a = new C1334d.C1335a(remoteUserInfo);
                return;
            }
            throw new IllegalArgumentException("packageName should be nonempty");
        }

        public C1331b(String str, int i, int i2) {
            Objects.requireNonNull(str, "package shouldn't be null");
            if (!TextUtils.isEmpty(str)) {
                if (Build.VERSION.SDK_INT >= 28) {
                    this.f4994a = new C1334d.C1335a(str, i, i2);
                    return;
                } else {
                    this.f4994a = new C1336e.C1337a(str, i, i2);
                    return;
                }
            }
            throw new IllegalArgumentException("packageName should be nonempty");
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj instanceof C1331b) {
                return this.f4994a.equals(((C1331b) obj).f4994a);
            }
            return false;
        }

        public final int hashCode() {
            return this.f4994a.hashCode();
        }
    }

    /* renamed from: androidx.media.b$c */
    /* loaded from: classes-dex2jar.jar:androidx/media/b$c.class */
    public interface AbstractC1332c {
        /* renamed from: a */
        String mo43212a();

        /* renamed from: b */
        int mo43211b();

        /* renamed from: c */
        int mo43210c();
    }

    private C1329b(Context context) {
        if (Build.VERSION.SDK_INT >= 28) {
            this.f4993b = new C1334d(context);
        } else if (Build.VERSION.SDK_INT >= 21) {
            this.f4993b = new C1333c(context);
        } else {
            this.f4993b = new C1336e(context);
        }
    }

    /* renamed from: a */
    public static C1329b m43217a(Context context) {
        C1329b c1329b;
        if (context != null) {
            synchronized (f4991c) {
                if (f4992d == null) {
                    f4992d = new C1329b(context.getApplicationContext());
                }
                c1329b = f4992d;
            }
            return c1329b;
        }
        throw new IllegalArgumentException("context cannot be null");
    }

    /* renamed from: a */
    public final boolean m43216a(C1331b c1331b) {
        if (c1331b != null) {
            return this.f4993b.mo43215a(c1331b.f4994a);
        }
        throw new IllegalArgumentException("userInfo should not be null");
    }
}
