package com.truecaller.videocallerid.p187ui.videoplayer;

import android.content.Context;
import android.graphics.Outline;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewOutlineProvider;
import android.view.ViewStub;
import android.widget.FrameLayout;
import com.amazon.device.ads.DTBMetricsConfiguration;
import com.google.android.exoplayer2.SimpleExoPlayer;
import com.google.android.exoplayer2.p070ui.PlayerView;
import com.huawei.hms.opendevice.AbstractC2405c;
import com.razorpay.AnalyticsConstants;
import com.truecaller.common.p156ui.avatar.AvatarXConfig;
import com.truecaller.videocallerid.C4718R;
import java.util.Objects;
import javax.inject.Inject;
import javax.inject.Provider;
import kotlin.Metadata;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.C19813r1;
import p193e.p194a.p1129p5.C19224d;
import p193e.p194a.p1129p5.p1132s0.C19286f;
import p193e.p194a.p372b0.p373a.p376b.AbstractC8247c;
import p193e.p194a.p372b0.p373a.p376b.C8243a;
import p193e.p194a.p682e.C12864a2;
import p193e.p194a.p947k.C16109f;
import p193e.p194a.p947k.p948a.p964k.AbstractC15816a;
import p193e.p194a.p947k.p948a.p964k.AbstractC15821c;
import p193e.p194a.p947k.p948a.p964k.AbstractC15861w;
import p193e.p194a.p947k.p948a.p964k.AbstractC15862x;
import p193e.p194a.p947k.p948a.p964k.C15820b;
import p193e.p194a.p947k.p948a.p964k.C15844q;
import p193e.p194a.p947k.p948a.p964k.C15850r;
import p193e.p194a.p947k.p948a.p964k.C15859u;
import p193e.p194a.p947k.p948a.p964k.p965z.AbstractC15875c;
import p193e.p194a.p947k.p969c.AbstractC16044q;
import p193e.p194a.p947k.p969c.AbstractC16090u0;
import p193e.p194a.p947k.p972m.C16142p;
import p193e.p194a.p947k.p973n.p976f.C16201f;
import p193e.p194a.p947k.p979o.AbstractC16242c;
import q3.a.j0;
import s1.a.a.a.v0.f.d;
import s1.g;
import s1.s;
import s1.w.f;
import s1.z.b.a;
import s1.z.c.l;
import s1.z.c.m;
@Metadata(bv = {1, 0, 3}, d1 = {"��^\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010\u000b\n��\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\b\n\u0002\b\r\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\b\u0018��2\u00020\u00012\u00020\u0002J\u000f\u0010\u0004\u001a\u00020\u0003H\u0002¢\u0006\u0004\b\u0004\u0010\u0005J\u001f\u0010\u000b\u001a\u00020\n2\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\bH\u0016¢\u0006\u0004\b\u000b\u0010\fJ\u0017\u0010\r\u001a\u00020\n2\u0006\u0010\u0007\u001a\u00020\u0006H\u0016¢\u0006\u0004\b\r\u0010\u000eJ/\u0010\u0014\u001a\u00020\n2\u0006\u0010\u0010\u001a\u00020\u000f2\u0006\u0010\u0011\u001a\u00020\u000f2\u0006\u0010\u0012\u001a\u00020\u000f2\u0006\u0010\u0013\u001a\u00020\u000fH\u0014¢\u0006\u0004\b\u0014\u0010\u0015J\u001f\u0010\u0018\u001a\u00020\n2\u0006\u0010\u0016\u001a\u00020\u000f2\u0006\u0010\u0017\u001a\u00020\u000fH\u0014¢\u0006\u0004\b\u0018\u0010\u0019J\u0015\u0010\u001b\u001a\u00020\n2\u0006\u0010\u001a\u001a\u00020\u0003¢\u0006\u0004\b\u001b\u0010\u001cJ\u0017\u0010 \u001a\u00020\u001f2\u0006\u0010\u001e\u001a\u00020\u001dH\u0014¢\u0006\u0004\b \u0010!J\u0017\u0010#\u001a\u00020\n2\u0006\u0010\"\u001a\u00020\bH\u0016¢\u0006\u0004\b#\u0010$J\u0017\u0010%\u001a\u00020\n2\u0006\u0010\"\u001a\u00020\bH\u0016¢\u0006\u0004\b%\u0010$J\u000f\u0010'\u001a\u0004\u0018\u00010&¢\u0006\u0004\b'\u0010(J\u0011\u0010)\u001a\u0004\u0018\u00010\u001fH\u0014¢\u0006\u0004\b)\u0010*J\u001f\u0010-\u001a\u00020\n2\u0006\u0010\u0007\u001a\u00020+2\b\b\u0002\u0010,\u001a\u00020&¢\u0006\u0004\b-\u0010.J\u0017\u00100\u001a\u00020\n2\u0006\u0010/\u001a\u00020\u000fH\u0002¢\u0006\u0004\b0\u00101J\u000f\u0010\u0011\u001a\u00020\nH\u0002¢\u0006\u0004\b\u0011\u00102R\u0016\u00106\u001a\u0002038\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b4\u00105R\u0016\u00108\u001a\u00020\u000f8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b0\u00107R\u001d\u0010;\u001a\u00020\u001f8B@\u0002X\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u0011\u00109\u001a\u0004\b:\u0010*R.\u0010C\u001a\b\u0012\u0004\u0012\u00020\u00030<8��@��X\u0081.¢\u0006\u0018\n\u0004\b-\u0010=\u0012\u0004\bB\u00102\u001a\u0004\b>\u0010?\"\u0004\b@\u0010A¨\u0006D"}, d2 = {"Lcom/truecaller/videocallerid/ui/videoplayer/AvatarVideoPlayerView;", "Le/a/k/a/k/c;", "Le/a/k/a/k/x;", "Le/a/b0/a/b/a;", "getOrInitAvatarXPresenter", "()Le/a/b0/a/b/a;", "Lcom/truecaller/common/ui/avatar/AvatarXConfig;", DTBMetricsConfiguration.CONFIG_DIR, "", "noIcon", "Ls1/s;", AbstractC2405c.f7629a, "(Lcom/truecaller/common/ui/avatar/AvatarXConfig;Z)V", "setAvatarXConfig", "(Lcom/truecaller/common/ui/avatar/AvatarXConfig;)V", "", "w", "h", "oldw", "oldh", "onSizeChanged", "(IIII)V", "widthMeasureSpec", "heightMeasureSpec", "onMeasure", "(II)V", "presenter", "setAvatarXPresenter", "(Le/a/b0/a/b/a;)V", "Lcom/google/android/exoplayer2/SimpleExoPlayer;", "player", "Lcom/google/android/exoplayer2/ui/PlayerView;", "e", "(Lcom/google/android/exoplayer2/SimpleExoPlayer;)Lcom/google/android/exoplayer2/ui/PlayerView;", "visible", "setVisibility", "(Z)V", "E", "", "getVideoUrl", "()Ljava/lang/String;", "getVideoPlayerView", "()Lcom/google/android/exoplayer2/ui/PlayerView;", "Le/a/k/a/k/a;", "analyticsContext", "f", "(Le/a/k/a/k/a;Ljava/lang/String;)V", "size", "i", "(I)V", "()V", "Le/a/k/m/p;", "g", "Le/a/k/m/p;", "binding", "I", "playerViewSize", "Ls1/g;", "getPlayerView", "playerView", "Ljavax/inject/Provider;", "Ljavax/inject/Provider;", "getAvatarXPresenterProvider$video_caller_id_release", "()Ljavax/inject/Provider;", "setAvatarXPresenterProvider$video_caller_id_release", "(Ljavax/inject/Provider;)V", "getAvatarXPresenterProvider$video_caller_id_release$annotations", "avatarXPresenterProvider", "video-caller-id_release"}, k = 1, mv = {1, 4, 1})
/* renamed from: com.truecaller.videocallerid.ui.videoplayer.AvatarVideoPlayerView */
/* loaded from: classes15-dex2jar.jar:com/truecaller/videocallerid/ui/videoplayer/AvatarVideoPlayerView.class */
public final class AvatarVideoPlayerView extends AbstractC15821c implements AbstractC15862x {
    @Inject

    /* renamed from: f */
    public Provider<C8243a> f16066f;

    /* renamed from: g */
    public final C16142p f16067g;

    /* renamed from: h */
    public final g f16068h;

    /* renamed from: i */
    public int f16069i;

    /* renamed from: com.truecaller.videocallerid.ui.videoplayer.AvatarVideoPlayerView$a */
    /* loaded from: classes15-dex2jar.jar:com/truecaller/videocallerid/ui/videoplayer/AvatarVideoPlayerView$a.class */
    public static final class C4739a extends m implements a<s> {

        /* renamed from: c */
        public final /* synthetic */ AbstractC15816a f16071c;

        /* renamed from: d */
        public final /* synthetic */ String f16072d;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C4739a(AbstractC15816a abstractC15816a, String str) {
            super(0);
            AvatarVideoPlayerView.this = r4;
            this.f16071c = abstractC15816a;
            this.f16072d = str;
        }

        public Object invoke() {
            AbstractC15861w presenter$video_caller_id_release = AvatarVideoPlayerView.this.getPresenter$video_caller_id_release();
            AbstractC15816a abstractC15816a = this.f16071c;
            String str = this.f16072d;
            C15850r c15850r = (C15850r) presenter$video_caller_id_release;
            Objects.requireNonNull(c15850r);
            l.e(abstractC15816a, DTBMetricsConfiguration.CONFIG_DIR);
            l.e(str, "analyticsContext");
            c15850r.f44702f = abstractC15816a;
            c15850r.f44703g = null;
            c15850r.f44701e = str;
            c15850r.f44705i = null;
            d.w2(c15850r, (f) null, (j0) null, new C15859u(c15850r, abstractC15816a, null), 3, (Object) null);
            return s.a;
        }
    }

    /* renamed from: com.truecaller.videocallerid.ui.videoplayer.AvatarVideoPlayerView$b */
    /* loaded from: classes15-dex2jar.jar:com/truecaller/videocallerid/ui/videoplayer/AvatarVideoPlayerView$b.class */
    public static final class C4740b extends ViewOutlineProvider {
        @Override // android.view.ViewOutlineProvider
        public void getOutline(View view, Outline outline) {
            if (view == null || outline == null) {
                return;
            }
            int width = view.getWidth();
            outline.setOval(0, 0, width, width);
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AvatarVideoPlayerView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet, 0);
        l.e(context, AnalyticsConstants.CONTEXT);
        LayoutInflater.from(context).inflate(C4718R.layout.layout_video_caller_id_avatar, this);
        int i = C4718R.C4720id.avatarXView;
        NoIconAvatarXView noIconAvatarXView = (NoIconAvatarXView) findViewById(i);
        if (noIconAvatarXView != null) {
            i = C4718R.C4720id.playerViewStub;
            ViewStub viewStub = (ViewStub) findViewById(i);
            if (viewStub != null) {
                C16142p c16142p = new C16142p(this, noIconAvatarXView, viewStub);
                l.d(c16142p, "LayoutVideoCallerIdAvata…ater.from(context), this)");
                this.f16067g = c16142p;
                this.f16068h = C25225a.m3978P1(new C15820b(this));
                C19813r1.C19820e c19820e = (C19813r1.C19820e) ((AbstractC16242c) C25225a.m3820x0(getContext(), AbstractC16242c.class)).mo12520V5();
                Objects.requireNonNull(c19820e);
                c19820e.f55955b = this;
                C25225a.m3846s(this, View.class);
                C19813r1 c19813r1 = c19820e.f55954a;
                C19813r1.C19821f c19821f = new C19813r1.C19821f(c19813r1, c19820e.f55955b, null);
                f m22570X = C12864a2.m22570X(c19813r1.f55467f);
                C16201f m12635Ma = c19821f.f55957b.m12635Ma();
                AbstractC16090u0 abstractC16090u0 = (AbstractC16090u0) c19821f.f55957b.f55854y6.get();
                C16109f m12799A9 = c19821f.f55957b.m12799A9();
                AbstractC15875c abstractC15875c = (AbstractC15875c) c19821f.f55963h.get();
                C19813r1 c19813r12 = c19821f.f55957b;
                int i2 = C19813r1.f54862Ni;
                this.f44625a = new C15850r(m22570X, m12635Ma, abstractC16090u0, m12799A9, abstractC15875c, new C15844q(c19813r12.m12635Ma(), c19821f.f55957b.m12177ub(), c19821f.f55957b.m12633Mc()), c19821f.f55957b.m12714Gc(), new C19224d());
                this.f44626b = (AbstractC16044q) c19821f.f55957b.f55714r6.get();
                this.f44627c = C12864a2.m22570X(c19821f.f55957b.f55467f);
                this.f44628d = (AbstractC15875c) c19821f.f55963h.get();
                this.f16066f = c19821f.f55964i;
                return;
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(getResources().getResourceName(i)));
    }

    /* renamed from: g */
    public static /* synthetic */ void m34449g(AvatarVideoPlayerView avatarVideoPlayerView, AbstractC15816a abstractC15816a, String str, int i) {
        avatarVideoPlayerView.m34450f(abstractC15816a, (i & 2) != 0 ? "" : null);
    }

    public static /* synthetic */ void getAvatarXPresenterProvider$video_caller_id_release$annotations() {
    }

    private final C8243a getOrInitAvatarXPresenter() {
        AbstractC8247c presenter = this.f16067g.f45536b.getPresenter();
        AbstractC8247c abstractC8247c = presenter;
        if (!(presenter instanceof C8243a)) {
            abstractC8247c = null;
        }
        C8243a c8243a = (C8243a) abstractC8247c;
        if (c8243a == null) {
            Provider<C8243a> provider = this.f16066f;
            if (provider == null) {
                l.l("avatarXPresenterProvider");
                throw null;
            }
            c8243a = (C8243a) provider.get();
            this.f16067g.f45536b.setPresenter(c8243a);
            l.d(c8243a, "run {\n            // No …              }\n        }");
        }
        return c8243a;
    }

    private final PlayerView getPlayerView() {
        return (PlayerView) this.f16068h.getValue();
    }

    @Override // p193e.p194a.p947k.p948a.p964k.AbstractC15821c, p193e.p194a.p947k.p948a.p964k.AbstractC15862x
    /* renamed from: E */
    public void mo18220E(boolean z) {
        this.f16067g.f45536b.mo28718E(z);
    }

    @Override // p193e.p194a.p947k.p948a.p964k.AbstractC15821c, p193e.p194a.p947k.p948a.p964k.AbstractC15862x
    /* renamed from: c */
    public void mo18217c(AvatarXConfig avatarXConfig, boolean z) {
        l.e(avatarXConfig, DTBMetricsConfiguration.CONFIG_DIR);
        this.f16067g.f45536b.setNoIcon(z);
        getOrInitAvatarXPresenter().m28740nk(avatarXConfig, true);
    }

    @Override // p193e.p194a.p947k.p948a.p964k.AbstractC15821c
    /* renamed from: e */
    public PlayerView mo18279e(SimpleExoPlayer simpleExoPlayer) {
        l.e(simpleExoPlayer, "player");
        PlayerView playerView = getPlayerView();
        playerView.setPlayer(simpleExoPlayer);
        playerView.setOutlineProvider(new C4740b());
        playerView.setClipToOutline(true);
        m34448h();
        return playerView;
    }

    /* renamed from: f */
    public final void m34450f(AbstractC15816a abstractC15816a, String str) {
        l.e(abstractC15816a, DTBMetricsConfiguration.CONFIG_DIR);
        l.e(str, "analyticsContext");
        C19286f.m13656w(this, new C4739a(abstractC15816a, str));
    }

    public final Provider<C8243a> getAvatarXPresenterProvider$video_caller_id_release() {
        Provider<C8243a> provider = this.f16066f;
        if (provider != null) {
            return provider;
        }
        l.l("avatarXPresenterProvider");
        throw null;
    }

    @Override // p193e.p194a.p947k.p948a.p964k.AbstractC15821c
    public PlayerView getVideoPlayerView() {
        ViewStub viewStub = this.f16067g.f45537c;
        l.d(viewStub, "binding.playerViewStub");
        l.e(viewStub, "$this$isInflated");
        return viewStub.getParent() == null ? getPlayerView() : null;
    }

    public final String getVideoUrl() {
        return ((C15850r) getPresenter$video_caller_id_release()).f44712p.getUrl();
    }

    /* renamed from: h */
    public final void m34448h() {
        if (this.f16069i != 0) {
            ViewStub viewStub = this.f16067g.f45537c;
            l.d(viewStub, "binding.playerViewStub");
            l.e(viewStub, "$this$isInflated");
            if (!(viewStub.getParent() == null)) {
                return;
            }
            ViewGroup.LayoutParams layoutParams = getPlayerView().getLayoutParams();
            Objects.requireNonNull(layoutParams, "null cannot be cast to non-null type android.widget.FrameLayout.LayoutParams");
            FrameLayout.LayoutParams layoutParams2 = (FrameLayout.LayoutParams) layoutParams;
            int i = this.f16069i;
            layoutParams2.width = i;
            layoutParams2.height = i;
            layoutParams2.gravity = 17;
            getPlayerView().setLayoutParams(layoutParams2);
        }
    }

    /* renamed from: i */
    public final void m34447i(int i) {
        int m4001J2 = C25225a.m4001J2(((i * 1.0f) / 44.0f) * 39);
        if (m4001J2 != this.f16069i) {
            this.f16069i = m4001J2;
            m34448h();
        }
    }

    @Override // android.widget.FrameLayout, android.view.View
    public void onMeasure(int i, int i2) {
        super.onMeasure(i, i2);
        m34447i(getMeasuredWidth());
    }

    @Override // android.view.View
    public void onSizeChanged(int i, int i2, int i3, int i4) {
        super.onSizeChanged(i, i2, i3, i4);
        m34447i(i);
    }

    @Override // p193e.p194a.p947k.p948a.p964k.AbstractC15821c, p193e.p194a.p947k.p948a.p964k.AbstractC15862x
    public void setAvatarXConfig(AvatarXConfig avatarXConfig) {
        l.e(avatarXConfig, DTBMetricsConfiguration.CONFIG_DIR);
        getOrInitAvatarXPresenter().m28740nk(avatarXConfig, true);
    }

    public final void setAvatarXPresenter(C8243a c8243a) {
        l.e(c8243a, "presenter");
        this.f16067g.f45536b.setPresenter(c8243a);
    }

    public final void setAvatarXPresenterProvider$video_caller_id_release(Provider<C8243a> provider) {
        l.e(provider, "<set-?>");
        this.f16066f = provider;
    }

    @Override // p193e.p194a.p947k.p948a.p964k.AbstractC15821c, p193e.p194a.p947k.p948a.p964k.AbstractC15862x
    public void setVisibility(boolean z) {
        C19286f.m13683U(getPlayerView(), z);
    }
}
