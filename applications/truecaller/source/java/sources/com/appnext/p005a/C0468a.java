package com.appnext.p005a;

import android.content.Context;
import android.widget.VideoView;
/* renamed from: com.appnext.a.a */
/* loaded from: classes-dex2jar.jar:com/appnext/a/a.class */
public final class C0468a extends VideoView {

    /* renamed from: ij */
    private AbstractC0469a f1656ij;

    /* renamed from: com.appnext.a.a$a */
    /* loaded from: classes-dex2jar.jar:com/appnext/a/a$a.class */
    public interface AbstractC0469a {
        /* renamed from: bb */
        void mo42226bb();

        void onPause();
    }

    public C0468a(Context context) {
        super(context);
    }

    @Override // android.widget.VideoView, android.widget.MediaController.MediaPlayerControl
    public final void pause() {
        super.pause();
        AbstractC0469a abstractC0469a = this.f1656ij;
        if (abstractC0469a != null) {
            abstractC0469a.onPause();
        }
    }

    public final void setPlayPauseListener(AbstractC0469a abstractC0469a) {
        this.f1656ij = abstractC0469a;
    }

    @Override // android.widget.VideoView, android.widget.MediaController.MediaPlayerControl
    public final void start() {
        super.start();
        AbstractC0469a abstractC0469a = this.f1656ij;
        if (abstractC0469a != null) {
            abstractC0469a.mo42226bb();
        }
    }
}
