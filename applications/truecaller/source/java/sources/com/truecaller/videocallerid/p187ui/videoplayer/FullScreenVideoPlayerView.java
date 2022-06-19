package com.truecaller.videocallerid.p187ui.videoplayer;

import android.content.Context;
import android.util.AttributeSet;
import androidx.constraintlayout.widget.Group;
import com.amazon.device.ads.DTBMetricsConfiguration;
import com.google.android.exoplayer2.SimpleExoPlayer;
import com.google.android.exoplayer2.p070ui.PlayerView;
import com.razorpay.AnalyticsConstants;
import com.truecaller.videocallerid.utils.analytics.VideoPlayerAnalyticsInfo;
import java.util.Objects;
import kotlin.Metadata;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p1129p5.p1132s0.C19286f;
import p193e.p194a.p947k.p948a.p964k.AbstractC15836l;
import p193e.p194a.p947k.p948a.p964k.AbstractC15842o;
import p193e.p194a.p947k.p948a.p964k.AbstractC15861w;
import p193e.p194a.p947k.p948a.p964k.C15840m;
import p193e.p194a.p947k.p948a.p964k.C15850r;
import p193e.p194a.p947k.p948a.p964k.C15860v;
import p193e.p194a.p947k.p948a.p964k.p965z.AbstractC15864a;
import p193e.p194a.p947k.p972m.C16143q;
import q3.a.i0;
import q3.a.j0;
import s1.a.a.a.v0.f.d;
import s1.g;
import s1.h;
import s1.s;
import s1.w.f;
import s1.z.b.a;
import s1.z.c.l;
import s1.z.c.m;
@Metadata(bv = {1, 0, 3}, d1 = {"��B\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010\u000e\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\b\u0007\u0018��2\u00020\u0001J\u0017\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0014¢\u0006\u0004\b\u0005\u0010\u0006J\u001f\u0010\f\u001a\u00020\u000b2\u0006\u0010\b\u001a\u00020\u00072\b\b\u0002\u0010\n\u001a\u00020\t¢\u0006\u0004\b\f\u0010\rJ\u0015\u0010\u0010\u001a\u00020\u000b2\u0006\u0010\u000f\u001a\u00020\u000e¢\u0006\u0004\b\u0010\u0010\u0011J\u0017\u0010\u0013\u001a\u00020\u000b2\u0006\u0010\u0012\u001a\u00020\u000eH\u0016¢\u0006\u0004\b\u0013\u0010\u0011J\u000f\u0010\u0014\u001a\u00020\u0004H\u0014¢\u0006\u0004\b\u0014\u0010\u0015J\u000f\u0010\u0016\u001a\u0004\u0018\u00010\t¢\u0006\u0004\b\u0016\u0010\u0017J\u000f\u0010\u0019\u001a\u0004\u0018\u00010\u0018¢\u0006\u0004\b\u0019\u0010\u001aR\u001d\u0010 \u001a\u00020\u001b8B@\u0002X\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u001c\u0010\u001d\u001a\u0004\b\u001e\u0010\u001f¨\u0006!"}, d2 = {"Lcom/truecaller/videocallerid/ui/videoplayer/FullScreenVideoPlayerView;", "Le/a/k/a/k/c;", "Lcom/google/android/exoplayer2/SimpleExoPlayer;", "player", "Lcom/google/android/exoplayer2/ui/PlayerView;", "e", "(Lcom/google/android/exoplayer2/SimpleExoPlayer;)Lcom/google/android/exoplayer2/ui/PlayerView;", "Le/a/k/a/k/l;", DTBMetricsConfiguration.CONFIG_DIR, "", "analyticsContext", "Ls1/s;", "g", "(Le/a/k/a/k/l;Ljava/lang/String;)V", "", "mute", "f", "(Z)V", "visible", "E", "getVideoPlayerView", "()Lcom/google/android/exoplayer2/ui/PlayerView;", "getVideoUrl", "()Ljava/lang/String;", "Lcom/truecaller/videocallerid/utils/analytics/VideoPlayerAnalyticsInfo;", "getAnalyticsInfo", "()Lcom/truecaller/videocallerid/utils/analytics/VideoPlayerAnalyticsInfo;", "Le/a/k/m/q;", "h", "Ls1/g;", "getBinding", "()Le/a/k/m/q;", "binding", "video-caller-id_release"}, k = 1, mv = {1, 4, 1})
/* renamed from: com.truecaller.videocallerid.ui.videoplayer.FullScreenVideoPlayerView */
/* loaded from: classes15-dex2jar.jar:com/truecaller/videocallerid/ui/videoplayer/FullScreenVideoPlayerView.class */
public final class FullScreenVideoPlayerView extends AbstractC15842o {

    /* renamed from: i */
    public static final /* synthetic */ int f16082i = 0;

    /* renamed from: h */
    public final g f16083h;

    /* renamed from: com.truecaller.videocallerid.ui.videoplayer.FullScreenVideoPlayerView$a */
    /* loaded from: classes15-dex2jar.jar:com/truecaller/videocallerid/ui/videoplayer/FullScreenVideoPlayerView$a.class */
    public static final class C4744a extends m implements a<s> {

        /* renamed from: c */
        public final /* synthetic */ AbstractC15836l f16085c;

        /* renamed from: d */
        public final /* synthetic */ String f16086d;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C4744a(AbstractC15836l abstractC15836l, String str) {
            super(0);
            FullScreenVideoPlayerView.this = r4;
            this.f16085c = abstractC15836l;
            this.f16086d = str;
        }

        public Object invoke() {
            AbstractC15861w presenter$video_caller_id_release = FullScreenVideoPlayerView.this.getPresenter$video_caller_id_release();
            AbstractC15836l abstractC15836l = this.f16085c;
            String str = this.f16086d;
            C15850r c15850r = (C15850r) presenter$video_caller_id_release;
            Objects.requireNonNull(c15850r);
            l.e(abstractC15836l, DTBMetricsConfiguration.CONFIG_DIR);
            l.e(str, "analyticsContext");
            c15850r.f44703g = abstractC15836l;
            c15850r.f44702f = null;
            c15850r.f44701e = str;
            c15850r.f44705i = null;
            d.w2(c15850r, (f) null, (j0) null, new C15860v(c15850r, abstractC15836l, null), 3, (Object) null);
            return s.a;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public FullScreenVideoPlayerView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet, 0);
        l.e(context, AnalyticsConstants.CONTEXT);
        this.f16083h = C25225a.m3982O1(h.c, new C15840m(this, context));
    }

    private final C16143q getBinding() {
        return (C16143q) this.f16083h.getValue();
    }

    @Override // p193e.p194a.p947k.p948a.p964k.AbstractC15821c, p193e.p194a.p947k.p948a.p964k.AbstractC15862x
    /* renamed from: E */
    public void mo18220E(boolean z) {
        Group group = getBinding().f45539b;
        l.d(group, "binding.loadingGroup");
        C19286f.m13683U(group, z);
    }

    @Override // p193e.p194a.p947k.p948a.p964k.AbstractC15821c
    /* renamed from: e */
    public PlayerView mo18279e(SimpleExoPlayer simpleExoPlayer) {
        l.e(simpleExoPlayer, "player");
        PlayerView playerView = getBinding().f45540c;
        l.d(playerView, "binding.playerView");
        playerView.setPlayer(simpleExoPlayer);
        PlayerView playerView2 = getBinding().f45540c;
        l.d(playerView2, "binding.playerView");
        return playerView2;
    }

    /* renamed from: f */
    public final void m34439f(boolean z) {
        i0 i0Var = (C15850r) getPresenter$video_caller_id_release();
        AbstractC15864a abstractC15864a = i0Var.f44707k;
        if (abstractC15864a instanceof AbstractC15864a.C15865a) {
            Objects.requireNonNull(abstractC15864a, "null cannot be cast to non-null type com.truecaller.videocallerid.ui.videoplayer.playing.AudioState.HasAudio");
            AbstractC15864a.C15865a c15865a = (AbstractC15864a.C15865a) abstractC15864a;
            if (z) {
                i0Var.f44712p.mo18215a(i0Var);
            } else {
                i0Var.f44712p.mo18209g(i0Var, c15865a.f44757b);
            }
        }
    }

    /* renamed from: g */
    public final void m34438g(AbstractC15836l abstractC15836l, String str) {
        l.e(abstractC15836l, DTBMetricsConfiguration.CONFIG_DIR);
        l.e(str, "analyticsContext");
        C19286f.m13656w(this, new C4744a(abstractC15836l, str));
    }

    public final VideoPlayerAnalyticsInfo getAnalyticsInfo() {
        AbstractC15836l abstractC15836l = ((C15850r) getPresenter$video_caller_id_release()).f44703g;
        return abstractC15836l != null ? abstractC15836l.mo18263a() : null;
    }

    @Override // p193e.p194a.p947k.p948a.p964k.AbstractC15821c
    public PlayerView getVideoPlayerView() {
        PlayerView playerView = getBinding().f45540c;
        l.d(playerView, "binding.playerView");
        return playerView;
    }

    public final String getVideoUrl() {
        return ((C15850r) getPresenter$video_caller_id_release()).f44712p.getUrl();
    }
}
