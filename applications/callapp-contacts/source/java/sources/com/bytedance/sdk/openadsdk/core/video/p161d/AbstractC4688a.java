package com.bytedance.sdk.openadsdk.core.video.p161d;

import com.bytedance.sdk.openadsdk.core.video.p161d.AbstractC4691c;
import com.bytedance.sdk.openadsdk.utils.C5478q;
/* renamed from: com.bytedance.sdk.openadsdk.core.video.d.a */
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/core/video/d/a.class */
public abstract class AbstractC4688a implements AbstractC4691c {

    /* renamed from: a */
    private AbstractC4691c.AbstractC4696e f17138a;

    /* renamed from: b */
    private AbstractC4691c.AbstractC4693b f17139b;

    /* renamed from: c */
    private AbstractC4691c.AbstractC4692a f17140c;

    /* renamed from: d */
    private AbstractC4691c.AbstractC4697f f17141d;

    /* renamed from: e */
    private AbstractC4691c.AbstractC4698g f17142e;

    /* renamed from: f */
    private AbstractC4691c.AbstractC4694c f17143f;

    /* renamed from: g */
    private AbstractC4691c.AbstractC4695d f17144g;

    /* renamed from: a */
    public void m34496a() {
        this.f17138a = null;
        this.f17140c = null;
        this.f17139b = null;
        this.f17141d = null;
        this.f17142e = null;
        this.f17143f = null;
        this.f17144g = null;
    }

    /* renamed from: a */
    public final void m34495a(int i) {
        try {
            AbstractC4691c.AbstractC4692a abstractC4692a = this.f17140c;
            if (abstractC4692a == null) {
                return;
            }
            abstractC4692a.mo34446a(this, i);
        } catch (Throwable th) {
            C5478q.m32108c("AbstractMediaPlayer", "AbstractMediaPlayer.notifyOnBufferingUpdate error: ", th);
        }
    }

    /* renamed from: a */
    public final void m34493a(int i, int i2, int i3, int i4) {
        try {
            AbstractC4691c.AbstractC4698g abstractC4698g = this.f17142e;
            if (abstractC4698g == null) {
                return;
            }
            abstractC4698g.mo34444a(this, i, i2, i3, i4);
        } catch (Throwable th) {
            C5478q.m32108c("AbstractMediaPlayer", "AbstractMediaPlayer.notifyOnVideoSizeChanged error: ", th);
        }
    }

    @Override // com.bytedance.sdk.openadsdk.core.video.p161d.AbstractC4691c
    /* renamed from: a */
    public final void mo34478a(AbstractC4691c.AbstractC4692a abstractC4692a) {
        this.f17140c = abstractC4692a;
    }

    @Override // com.bytedance.sdk.openadsdk.core.video.p161d.AbstractC4691c
    /* renamed from: a */
    public final void mo34477a(AbstractC4691c.AbstractC4693b abstractC4693b) {
        this.f17139b = abstractC4693b;
    }

    @Override // com.bytedance.sdk.openadsdk.core.video.p161d.AbstractC4691c
    /* renamed from: a */
    public final void mo34476a(AbstractC4691c.AbstractC4694c abstractC4694c) {
        this.f17143f = abstractC4694c;
    }

    @Override // com.bytedance.sdk.openadsdk.core.video.p161d.AbstractC4691c
    /* renamed from: a */
    public final void mo34475a(AbstractC4691c.AbstractC4695d abstractC4695d) {
        this.f17144g = abstractC4695d;
    }

    @Override // com.bytedance.sdk.openadsdk.core.video.p161d.AbstractC4691c
    /* renamed from: a */
    public final void mo34474a(AbstractC4691c.AbstractC4696e abstractC4696e) {
        this.f17138a = abstractC4696e;
    }

    @Override // com.bytedance.sdk.openadsdk.core.video.p161d.AbstractC4691c
    /* renamed from: a */
    public final void mo34473a(AbstractC4691c.AbstractC4697f abstractC4697f) {
        this.f17141d = abstractC4697f;
    }

    @Override // com.bytedance.sdk.openadsdk.core.video.p161d.AbstractC4691c
    /* renamed from: a */
    public final void mo34472a(AbstractC4691c.AbstractC4698g abstractC4698g) {
        this.f17142e = abstractC4698g;
    }

    /* renamed from: a */
    public final boolean m34494a(int i, int i2) {
        try {
            AbstractC4691c.AbstractC4694c abstractC4694c = this.f17143f;
            if (abstractC4694c == null) {
                return false;
            }
            return abstractC4694c.mo34445a(this, i, i2);
        } catch (Throwable th) {
            C5478q.m32108c("AbstractMediaPlayer", "AbstractMediaPlayer.notifyOnError error: ", th);
            return false;
        }
    }

    /* renamed from: b */
    public final void m34492b() {
        try {
            AbstractC4691c.AbstractC4696e abstractC4696e = this.f17138a;
            if (abstractC4696e == null) {
                return;
            }
            abstractC4696e.mo34434b(this);
        } catch (Throwable th) {
            C5478q.m32108c("AbstractMediaPlayer", "AbstractMediaPlayer.notifyOnPrepared error: ", th);
        }
    }

    /* renamed from: b */
    public final boolean m34491b(int i, int i2) {
        try {
            AbstractC4691c.AbstractC4695d abstractC4695d = this.f17144g;
            if (abstractC4695d == null) {
                return false;
            }
            return abstractC4695d.mo34433b(this, i, i2);
        } catch (Throwable th) {
            C5478q.m32108c("AbstractMediaPlayer", "AbstractMediaPlayer.notifyOnInfo error: ", th);
            return false;
        }
    }

    /* renamed from: c */
    public final void m34490c() {
        try {
            AbstractC4691c.AbstractC4693b abstractC4693b = this.f17139b;
            if (abstractC4693b == null) {
                return;
            }
            abstractC4693b.mo34447a(this);
        } catch (Throwable th) {
            C5478q.m32108c("AbstractMediaPlayer", "AbstractMediaPlayer.notifyOnCompletion error: ", th);
        }
    }

    /* renamed from: d */
    public final void m34489d() {
        try {
            AbstractC4691c.AbstractC4697f abstractC4697f = this.f17141d;
            if (abstractC4697f == null) {
                return;
            }
            abstractC4697f.mo34428c(this);
        } catch (Throwable th) {
            C5478q.m32108c("AbstractMediaPlayer", "AbstractMediaPlayer.notifyOnSeekComplete error: ", th);
        }
    }
}
