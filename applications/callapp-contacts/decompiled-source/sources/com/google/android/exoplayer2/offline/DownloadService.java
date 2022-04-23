package com.google.android.exoplayer2.offline;

import android.app.Service;
import android.os.Handler;
import android.os.Looper;
import java.util.HashMap;
/* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/offline/DownloadService.class */
public abstract class DownloadService extends Service {

    /* renamed from: a  reason: collision with root package name */
    private static final HashMap<Class<? extends DownloadService>, Object> f21500a = new HashMap<>();

    /* renamed from: b  reason: collision with root package name */
    private final a f21501b;

    /* renamed from: c  reason: collision with root package name */
    private final String f21502c;

    /* renamed from: d  reason: collision with root package name */
    private final int f21503d;
    private final int e;

    /* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/offline/DownloadService$a.class */
    final class a {

        /* renamed from: b  reason: collision with root package name */
        private final int f21505b;

        /* renamed from: c  reason: collision with root package name */
        private final long f21506c;

        /* renamed from: d  reason: collision with root package name */
        private final Handler f21507d = new Handler(Looper.getMainLooper());

        public a(int i, long j) {
            this.f21505b = i;
            this.f21506c = j;
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
            this.f21501b = null;
            this.f21502c = null;
            this.f21503d = 0;
            this.e = 0;
            return;
        }
        this.f21501b = new a(i, j);
        this.f21502c = str;
        this.f21503d = i2;
        this.e = i3;
    }
}
