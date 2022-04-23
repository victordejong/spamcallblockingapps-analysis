package com.bytedance.sdk.openadsdk.core.video.d;

import com.bytedance.sdk.openadsdk.core.video.d.c;
import com.bytedance.sdk.openadsdk.utils.q;
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/core/video/d/a.class */
public abstract class a implements c {

    /* renamed from: a  reason: collision with root package name */
    private c.e f9183a;

    /* renamed from: b  reason: collision with root package name */
    private c.b f9184b;

    /* renamed from: c  reason: collision with root package name */
    private c.a f9185c;

    /* renamed from: d  reason: collision with root package name */
    private c.f f9186d;
    private c.g e;
    private c.AbstractC0167c f;
    private c.d g;

    public void a() {
        this.f9183a = null;
        this.f9185c = null;
        this.f9184b = null;
        this.f9186d = null;
        this.e = null;
        this.f = null;
        this.g = null;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final void a(int i) {
        try {
            c.a aVar = this.f9185c;
            if (aVar != null) {
                aVar.a(this, i);
            }
        } catch (Throwable th) {
            q.c("AbstractMediaPlayer", "AbstractMediaPlayer.notifyOnBufferingUpdate error: ", th);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final void a(int i, int i2, int i3, int i4) {
        try {
            c.g gVar = this.e;
            if (gVar != null) {
                gVar.a(this, i, i2, i3, i4);
            }
        } catch (Throwable th) {
            q.c("AbstractMediaPlayer", "AbstractMediaPlayer.notifyOnVideoSizeChanged error: ", th);
        }
    }

    @Override // com.bytedance.sdk.openadsdk.core.video.d.c
    public final void a(c.a aVar) {
        this.f9185c = aVar;
    }

    @Override // com.bytedance.sdk.openadsdk.core.video.d.c
    public final void a(c.b bVar) {
        this.f9184b = bVar;
    }

    @Override // com.bytedance.sdk.openadsdk.core.video.d.c
    public final void a(c.AbstractC0167c cVar) {
        this.f = cVar;
    }

    @Override // com.bytedance.sdk.openadsdk.core.video.d.c
    public final void a(c.d dVar) {
        this.g = dVar;
    }

    @Override // com.bytedance.sdk.openadsdk.core.video.d.c
    public final void a(c.e eVar) {
        this.f9183a = eVar;
    }

    @Override // com.bytedance.sdk.openadsdk.core.video.d.c
    public final void a(c.f fVar) {
        this.f9186d = fVar;
    }

    @Override // com.bytedance.sdk.openadsdk.core.video.d.c
    public final void a(c.g gVar) {
        this.e = gVar;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final boolean a(int i, int i2) {
        try {
            c.AbstractC0167c cVar = this.f;
            if (cVar != null) {
                return cVar.a(this, i, i2);
            }
            return false;
        } catch (Throwable th) {
            q.c("AbstractMediaPlayer", "AbstractMediaPlayer.notifyOnError error: ", th);
            return false;
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final void b() {
        try {
            c.e eVar = this.f9183a;
            if (eVar != null) {
                eVar.b(this);
            }
        } catch (Throwable th) {
            q.c("AbstractMediaPlayer", "AbstractMediaPlayer.notifyOnPrepared error: ", th);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final boolean b(int i, int i2) {
        try {
            c.d dVar = this.g;
            if (dVar != null) {
                return dVar.b(this, i, i2);
            }
            return false;
        } catch (Throwable th) {
            q.c("AbstractMediaPlayer", "AbstractMediaPlayer.notifyOnInfo error: ", th);
            return false;
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final void c() {
        try {
            c.b bVar = this.f9184b;
            if (bVar != null) {
                bVar.a(this);
            }
        } catch (Throwable th) {
            q.c("AbstractMediaPlayer", "AbstractMediaPlayer.notifyOnCompletion error: ", th);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final void d() {
        try {
            c.f fVar = this.f9186d;
            if (fVar != null) {
                fVar.c(this);
            }
        } catch (Throwable th) {
            q.c("AbstractMediaPlayer", "AbstractMediaPlayer.notifyOnSeekComplete error: ", th);
        }
    }
}
