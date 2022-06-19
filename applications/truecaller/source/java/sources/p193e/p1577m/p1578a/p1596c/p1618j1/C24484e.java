package p193e.p1577m.p1578a.p1596c.p1618j1;

import android.net.Uri;
import com.google.android.exoplayer2.offline.DownloadRequest;
import java.lang.reflect.Constructor;
import java.util.List;
import p193e.p1432d.p1439c.p1440a.C22128a;
/* renamed from: e.m.a.c.j1.e */
/* loaded from: classes2-dex2jar.jar:e/m/a/c/j1/e.class */
public class C24484e implements AbstractC24497l {

    /* renamed from: b */
    public static final Constructor<? extends AbstractC24494j> f68351b;

    /* renamed from: c */
    public static final Constructor<? extends AbstractC24494j> f68352c;

    /* renamed from: d */
    public static final Constructor<? extends AbstractC24494j> f68353d;

    /* renamed from: a */
    public final C24496k f68354a;

    static {
        Constructor<? extends AbstractC24494j> constructor;
        Constructor<? extends AbstractC24494j> constructor2;
        Constructor<? extends AbstractC24494j> constructor3;
        try {
            constructor = m5024c(Class.forName("com.google.android.exoplayer2.source.dash.offline.DashDownloader"));
        } catch (ClassNotFoundException e) {
            constructor = null;
        }
        f68351b = constructor;
        try {
            constructor2 = m5024c(Class.forName("com.google.android.exoplayer2.source.hls.offline.HlsDownloader"));
        } catch (ClassNotFoundException e2) {
            constructor2 = null;
        }
        f68352c = constructor2;
        try {
            constructor3 = m5024c(Class.forName("com.google.android.exoplayer2.source.smoothstreaming.offline.SsDownloader"));
        } catch (ClassNotFoundException e3) {
            constructor3 = null;
        }
        f68353d = constructor3;
    }

    public C24484e(C24496k c24496k) {
        this.f68354a = c24496k;
    }

    /* renamed from: c */
    public static Constructor<? extends AbstractC24494j> m5024c(Class<?> cls) {
        try {
            return cls.asSubclass(AbstractC24494j.class).getConstructor(Uri.class, List.class, C24496k.class);
        } catch (NoSuchMethodException e) {
            throw new RuntimeException("Downloader constructor missing", e);
        }
    }

    /* renamed from: a */
    public AbstractC24494j m5026a(DownloadRequest downloadRequest) {
        String str = downloadRequest.f4990b;
        str.hashCode();
        str.hashCode();
        boolean z = true;
        switch (str.hashCode()) {
            case 3680:
                if (str.equals("ss")) {
                    z = false;
                    break;
                }
                break;
            case 103407:
                if (str.equals("hls")) {
                    z = true;
                    break;
                }
                break;
            case 3075986:
                if (str.equals("dash")) {
                    z = true;
                    break;
                }
                break;
            case 1131547531:
                if (str.equals("progressive")) {
                    z = true;
                    break;
                }
                break;
        }
        switch (z) {
            case false:
                return m5025b(downloadRequest, f68353d);
            case true:
                return m5025b(downloadRequest, f68352c);
            case true:
                return m5025b(downloadRequest, f68351b);
            case true:
                return new C24498m(downloadRequest.f4991c, downloadRequest.f4993e, this.f68354a);
            default:
                StringBuilder m8728C = C22128a.m8728C("Unsupported type: ");
                m8728C.append(downloadRequest.f4990b);
                throw new IllegalArgumentException(m8728C.toString());
        }
    }

    /* renamed from: b */
    public final AbstractC24494j m5025b(DownloadRequest downloadRequest, Constructor<? extends AbstractC24494j> constructor) {
        if (constructor == null) {
            StringBuilder m8728C = C22128a.m8728C("Module missing for: ");
            m8728C.append(downloadRequest.f4990b);
            throw new IllegalStateException(m8728C.toString());
        }
        try {
            return constructor.newInstance(downloadRequest.f4991c, downloadRequest.f4992d, this.f68354a);
        } catch (Exception e) {
            StringBuilder m8728C2 = C22128a.m8728C("Failed to instantiate downloader for: ");
            m8728C2.append(downloadRequest.f4990b);
            throw new RuntimeException(m8728C2.toString(), e);
        }
    }
}
