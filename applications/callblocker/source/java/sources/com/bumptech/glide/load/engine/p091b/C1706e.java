package com.bumptech.glide.load.engine.p091b;

import android.util.Log;
import com.bumptech.glide.load.AbstractC1777f;
import com.bumptech.glide.load.engine.p091b.AbstractC1697a;
import com.bumptech.glide.p068a.C1345a;
import java.io.File;
import java.io.IOException;
/* renamed from: com.bumptech.glide.load.engine.b.e */
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/engine/b/e.class */
public class C1706e implements AbstractC1697a {

    /* renamed from: b */
    private final File f5177b;

    /* renamed from: c */
    private final long f5178c;

    /* renamed from: e */
    private C1345a f5180e;

    /* renamed from: d */
    private final C1701c f5179d = new C1701c();

    /* renamed from: a */
    private final C1716j f5176a = new C1716j();

    @Deprecated
    protected C1706e(File file, long j) {
        this.f5177b = file;
        this.f5178c = j;
    }

    /* renamed from: a */
    private C1345a m16504a() {
        C1345a c1345a;
        synchronized (this) {
            if (this.f5180e == null) {
                this.f5180e = C1345a.m17399a(this.f5177b, 1, 1, this.f5178c);
            }
            c1345a = this.f5180e;
        }
        return c1345a;
    }

    /* renamed from: a */
    public static AbstractC1697a m16501a(File file, long j) {
        return new C1706e(file, j);
    }

    @Override // com.bumptech.glide.load.engine.p091b.AbstractC1697a
    /* renamed from: a */
    public File mo16503a(AbstractC1777f abstractC1777f) {
        File file;
        String m16481a = this.f5176a.m16481a(abstractC1777f);
        if (Log.isLoggable("DiskLruCacheWrapper", 2)) {
            Log.v("DiskLruCacheWrapper", "Get: Obtained: " + m16481a + " for for Key: " + abstractC1777f);
        }
        try {
            C1345a.C1350d m17397a = m16504a().m17397a(m16481a);
            file = null;
            if (m17397a != null) {
                file = m17397a.m17360a(0);
            }
        } catch (IOException e) {
            file = null;
            if (Log.isLoggable("DiskLruCacheWrapper", 5)) {
                Log.w("DiskLruCacheWrapper", "Unable to get from disk cache", e);
                file = null;
            }
        }
        return file;
    }

    /* JADX WARN: Finally extract failed */
    @Override // com.bumptech.glide.load.engine.p091b.AbstractC1697a
    /* renamed from: a */
    public void mo16502a(AbstractC1777f abstractC1777f, AbstractC1697a.AbstractC1699b abstractC1699b) {
        C1345a m16504a;
        String m16481a = this.f5176a.m16481a(abstractC1777f);
        this.f5179d.m16509a(m16481a);
        try {
            if (Log.isLoggable("DiskLruCacheWrapper", 2)) {
                Log.v("DiskLruCacheWrapper", "Put: Obtained: " + m16481a + " for for Key: " + abstractC1777f);
            }
            try {
                m16504a = m16504a();
            } catch (IOException e) {
                if (Log.isLoggable("DiskLruCacheWrapper", 5)) {
                    Log.w("DiskLruCacheWrapper", "Unable to put to disk cache", e);
                }
            }
            if (m16504a.m17397a(m16481a) != null) {
                return;
            }
            C1345a.C1348b m17393b = m16504a.m17393b(m16481a);
            if (m17393b == null) {
                throw new IllegalStateException("Had two simultaneous puts for: " + m16481a);
            }
            try {
                if (abstractC1699b.mo16467a(m17393b.m17379a(0))) {
                    m17393b.m17380a();
                }
                m17393b.m17375c();
            } catch (Throwable th) {
                m17393b.m17375c();
                throw th;
            }
        } finally {
            this.f5179d.m16508b(m16481a);
        }
    }
}
