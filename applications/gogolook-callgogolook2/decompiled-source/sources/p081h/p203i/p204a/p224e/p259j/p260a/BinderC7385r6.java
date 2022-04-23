package p081h.p203i.p204a.p224e.p259j.p260a;

import com.google.android.gms.ads.VideoController;
/* renamed from: h.i.a.e.j.a.r6 */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/j/a/r6.class */
public final class BinderC7385r6 extends AbstractBinderC7408t5 {

    /* renamed from: a */
    public final VideoController.VideoLifecycleCallbacks f17436a;

    public BinderC7385r6(VideoController.VideoLifecycleCallbacks videoLifecycleCallbacks) {
        this.f17436a = videoLifecycleCallbacks;
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p260a.AbstractC7396s5
    /* renamed from: E */
    public final void mo20683E() {
        this.f17436a.onVideoEnd();
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p260a.AbstractC7396s5
    /* renamed from: K */
    public final void mo20682K() {
        this.f17436a.onVideoPause();
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p260a.AbstractC7396s5
    /* renamed from: Y */
    public final void mo20681Y() {
        this.f17436a.onVideoStart();
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p260a.AbstractC7396s5
    /* renamed from: Z */
    public final void mo20680Z() {
        this.f17436a.onVideoPlay();
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p260a.AbstractC7396s5
    /* renamed from: g */
    public final void mo20679g(boolean z) {
        this.f17436a.onVideoMute(z);
    }
}
