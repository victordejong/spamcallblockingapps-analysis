package com.google.android.exoplayer2.offline;

import android.app.Service;
import android.os.Handler;
import android.os.Looper;
import java.util.HashMap;
/* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/offline/DownloadService.class */
public abstract class DownloadService extends Service {

    /* renamed from: a */
    private static final HashMap<Class<? extends DownloadService>, Object> f36915a = new HashMap<>();

    /* renamed from: b */
    private final C11255a f36916b;

    /* renamed from: c */
    private final String f36917c;

    /* renamed from: d */
    private final int f36918d;

    /* renamed from: e */
    private final int f36919e;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.google.android.exoplayer2.offline.DownloadService$a */
    /* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/offline/DownloadService$a.class */
    public final class C11255a {

        /* renamed from: b */
        private final int f36921b;

        /* renamed from: c */
        private final long f36922c;

        /* renamed from: d */
        private final Handler f36923d = new Handler(Looper.getMainLooper());

        public C11255a(int i, long j) {
            DownloadService.this = r6;
            this.f36921b = i;
            this.f36922c = j;
        }
    }

    protected DownloadService(int i) {
        this(i, 1000L);
    }

    protected DownloadService(int i, long j) {
        this(i, j, null, 0, 0);
    }

    @Deprecated
    protected DownloadService(int i, long j, String str, int i2) {
        this(i, j, str, i2, 0);
    }

    protected DownloadService(int i, long j, String str, int i2, int i3) {
        if (i == 0) {
            this.f36916b = null;
            this.f36917c = null;
            this.f36918d = 0;
            this.f36919e = 0;
            return;
        }
        this.f36916b = new C11255a(i, j);
        this.f36917c = str;
        this.f36918d = i2;
        this.f36919e = i3;
    }
}
