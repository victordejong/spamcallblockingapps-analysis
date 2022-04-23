package p131c.p421j.p426d;

import android.content.Context;
import com.google.android.exoplayer2.upstream.cache.Cache;
import com.mopub.common.Preconditions;
import com.mopub.common.util.DeviceUtils;
import java.io.File;
import p131c.p161d.p170b.p188c.p201f1.p202u.C2861p;
import p131c.p161d.p170b.p188c.p201f1.p202u.C2862q;
/* renamed from: c.j.d.d */
/* loaded from: classes2-dex2jar.jar:c/j/d/d.class */
public class C6673d {

    /* renamed from: a */
    public static volatile Cache f20598a;

    /* renamed from: a */
    public static Cache m20100a(Context context) {
        Preconditions.checkNotNull(context);
        Cache cache = f20598a;
        Cache cache2 = cache;
        if (cache == null) {
            synchronized (C6673d.class) {
                try {
                    Cache cache3 = f20598a;
                    cache2 = cache3;
                    if (cache3 == null) {
                        File cacheDir = context.getApplicationContext().getCacheDir();
                        cache2 = cache3;
                        if (cacheDir != null) {
                            cache2 = new C2862q(new File(cacheDir.getPath() + File.separator + "mopub-native-cache"), new C2861p(DeviceUtils.diskCacheSizeBytes(cacheDir)));
                            f20598a = cache2;
                        }
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return cache2;
    }
}
