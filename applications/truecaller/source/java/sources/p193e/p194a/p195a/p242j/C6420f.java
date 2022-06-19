package p193e.p194a.p195a.p242j;

import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.TextView;
import com.google.android.exoplayer2.SimpleExoPlayer;
import com.google.android.exoplayer2.p070ui.AspectRatioFrameLayout;
import com.google.android.exoplayer2.p070ui.PlayerControlView;
import com.google.android.exoplayer2.p070ui.PlayerView;
import com.huawei.hms.opendevice.AbstractC2405c;
import com.tenor.android.core.constant.ViewAction;
import com.truecaller.messaging.mediaviewer.MediaViewerActivity;
import java.util.Set;
import kotlin.Metadata;
import p193e.p1425c.p1426a.p1427a.p1429c.C22021b;
import p193e.p1451f.p1452a.ComponentCallbacks2C22222c;
import p193e.p1577m.p1578a.p1596c.AbstractC24760q0;
import p193e.p1577m.p1578a.p1596c.p1601f1.AbstractC24279e;
import p193e.p1577m.p1578a.p1596c.p1602g1.C24399f;
import p193e.p1577m.p1578a.p1596c.p1620l1.C24547t;
import p193e.p1577m.p1578a.p1596c.p1634p1.AbstractC24739l;
import p193e.p1577m.p1578a.p1596c.p1634p1.C24701h;
import p193e.p1577m.p1578a.p1596c.p1634p1.C24751u;
import p193e.p194a.p1129p5.p1132s0.C19286f;
import s1.z.c.l;
@Metadata(bv = {1, 0, 3}, d1 = {"��t\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010\u0007\n��\n\u0002\u0010\t\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u000b\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010#\n\u0002\b\u0005\u0018��2\u00020\u0001J\u000f\u0010\u0003\u001a\u00020\u0002H\u0002¢\u0006\u0004\b\u0003\u0010\u0004J\r\u0010\u0006\u001a\u00020\u0005¢\u0006\u0004\b\u0006\u0010\u0007J\r\u0010\b\u001a\u00020\u0005¢\u0006\u0004\b\b\u0010\u0007J\r\u0010\n\u001a\u00020\t¢\u0006\u0004\b\n\u0010\u000bJ%\u0010\u0012\u001a\u00020\u00052\u0006\u0010\r\u001a\u00020\f2\u0006\u0010\u000f\u001a\u00020\u000e2\u0006\u0010\u0011\u001a\u00020\u0010¢\u0006\u0004\b\u0012\u0010\u0013J\u0017\u0010\u0016\u001a\u00020\u00052\b\u0010\u0015\u001a\u0004\u0018\u00010\u0014¢\u0006\u0004\b\u0016\u0010\u0017J\u0015\u0010\u001a\u001a\u00020\u00052\u0006\u0010\u0019\u001a\u00020\u0018¢\u0006\u0004\b\u001a\u0010\u001bJ\u000f\u0010\u001d\u001a\u0004\u0018\u00010\u001c¢\u0006\u0004\b\u001d\u0010\u001eJ\u000f\u0010\u001f\u001a\u0004\u0018\u00010\u001c¢\u0006\u0004\b\u001f\u0010\u001eJ\u0015\u0010!\u001a\u00020\u00052\u0006\u0010 \u001a\u00020\t¢\u0006\u0004\b!\u0010\"J\r\u0010#\u001a\u00020\u0010¢\u0006\u0004\b#\u0010$R\u0018\u0010'\u001a\u0004\u0018\u00010\u00148\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b%\u0010&R\u0016\u0010+\u001a\u00020(8\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b)\u0010*R\u0016\u0010.\u001a\u00020,8\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u001a\u0010-R\u0016\u00101\u001a\u00020/8\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\b\u00100R\u0016\u00102\u001a\u00020,8\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0006\u0010-R\u0016\u00104\u001a\u00020(8\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b3\u0010*R\u0016\u00107\u001a\u0002058\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0012\u00106R\u0018\u0010:\u001a\u0004\u0018\u00010\u00028\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b8\u00109R\u001c\u0010>\u001a\b\u0012\u0004\u0012\u00020\u00180;8\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b<\u0010=R\u0016\u0010?\u001a\u0002058\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\n\u00106¨\u0006@"}, d2 = {"Le/a/a/j/f;", "Landroid/widget/FrameLayout;", "Lcom/google/android/exoplayer2/SimpleExoPlayer;", "getOrCreatePlayer", "()Lcom/google/android/exoplayer2/SimpleExoPlayer;", "Ls1/s;", "d", "()V", C22021b.f61237c, "", "a", "()Z", "Landroid/net/Uri;", "uri", "", "aspectRatio", "", "entityId", "e", "(Landroid/net/Uri;FJ)V", "Lcom/google/android/exoplayer2/ui/PlayerControlView;", ViewAction.VIEW, "setPlayerControlView", "(Lcom/google/android/exoplayer2/ui/PlayerControlView;)V", "Le/m/a/c/q0$b;", "listener", AbstractC2405c.f7629a, "(Le/m/a/c/q0$b;)V", "", "getDrawableWidth", "()Ljava/lang/Integer;", "getDrawableHeight", "playWhenReady", "setPlayWhenReady", "(Z)V", "getPlaybackPosition", "()J", "h", "Lcom/google/android/exoplayer2/ui/PlayerControlView;", "controlView", "Landroid/widget/TextView;", "g", "Landroid/widget/TextView;", "fileSubtitleView", "Landroid/view/View;", "Landroid/view/View;", "unavailableView", "Lcom/google/android/exoplayer2/ui/PlayerView;", "Lcom/google/android/exoplayer2/ui/PlayerView;", "playerView", "fileView", "f", "fileTitleView", "Landroid/widget/ImageView;", "Landroid/widget/ImageView;", "fileImageView", "i", "Lcom/google/android/exoplayer2/SimpleExoPlayer;", "player", "", "j", "Ljava/util/Set;", "eventListeners", "imageView", "truecaller_googlePlayRelease"}, k = 1, mv = {1, 4, 1})
/* renamed from: e.a.a.j.f */
/* loaded from: classes7-dex2jar.jar:e/a/a/j/f.class */
public final class C6420f extends FrameLayout {

    /* renamed from: a */
    public final ImageView f21345a;

    /* renamed from: b */
    public final PlayerView f21346b;

    /* renamed from: c */
    public final View f21347c;

    /* renamed from: d */
    public final View f21348d;

    /* renamed from: e */
    public final ImageView f21349e;

    /* renamed from: f */
    public final TextView f21350f;

    /* renamed from: g */
    public final TextView f21351g;

    /* renamed from: h */
    public PlayerControlView f21352h;

    /* renamed from: i */
    public SimpleExoPlayer f21353i;

    /* renamed from: j */
    public final Set<AbstractC24760q0.AbstractC24762b> f21354j;

    /* renamed from: e.a.a.j.f$a */
    /* loaded from: classes7-dex2jar.jar:e/a/a/j/f$a.class */
    public static final class C6421a implements AbstractC24739l.AbstractC24740a {
        public C6421a() {
            C6420f.this = r4;
        }

        @Override // p193e.p1577m.p1578a.p1596c.p1634p1.AbstractC24739l.AbstractC24740a
        /* renamed from: a */
        public final AbstractC24739l mo4656a() {
            return new C24701h(C6420f.this.getContext());
        }
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public C6420f(android.content.Context r6, android.util.AttributeSet r7, int r8, int r9) {
        /*
            r5 = this;
            r0 = r9
            r1 = 4
            r0 = r0 & r1
            if (r0 == 0) goto L9
            r0 = 0
            r8 = r0
        L9:
            r0 = r6
            java.lang.String r1 = "context"
            s1.z.c.l.e(r0, r1)
            r0 = r5
            r1 = r6
            r2 = 0
            r3 = r8
            r0.<init>(r1, r2, r3)
            r0 = r5
            java.util.LinkedHashSet r1 = new java.util.LinkedHashSet
            r2 = r1
            r2.<init>()
            r0.f21354j = r1
            r0 = r6
            r1 = 2131559651(0x7f0d04e3, float:1.8744652E38)
            r2 = r5
            android.view.View r0 = android.widget.FrameLayout.inflate(r0, r1, r2)
            r0 = r5
            r1 = 2131364277(0x7f0a09b5, float:1.8348387E38)
            android.view.View r0 = r0.findViewById(r1)
            r6 = r0
            r0 = r6
            java.lang.String r1 = "findViewById(R.id.imageView)"
            s1.z.c.l.d(r0, r1)
            r0 = r5
            r1 = r6
            android.widget.ImageView r1 = (android.widget.ImageView) r1
            r0.f21345a = r1
            r0 = r5
            r1 = 2131365188(0x7f0a0d44, float:1.8350234E38)
            android.view.View r0 = r0.findViewById(r1)
            r6 = r0
            r0 = r6
            java.lang.String r1 = "findViewById(R.id.playerView)"
            s1.z.c.l.d(r0, r1)
            r0 = r5
            r1 = r6
            com.google.android.exoplayer2.ui.PlayerView r1 = (com.google.android.exoplayer2.p070ui.PlayerView) r1
            r0.f21346b = r1
            r0 = r5
            r1 = 2131366696(0x7f0a1328, float:1.8353293E38)
            android.view.View r0 = r0.findViewById(r1)
            r6 = r0
            r0 = r6
            java.lang.String r1 = "findViewById(R.id.unavailableView)"
            s1.z.c.l.d(r0, r1)
            r0 = r5
            r1 = r6
            r0.f21347c = r1
            r0 = r5
            r1 = 2131363687(0x7f0a0767, float:1.834719E38)
            android.view.View r0 = r0.findViewById(r1)
            r6 = r0
            r0 = r6
            java.lang.String r1 = "findViewById(R.id.fileView)"
            s1.z.c.l.d(r0, r1)
            r0 = r5
            r1 = r6
            r0.f21348d = r1
            r0 = r5
            r1 = 2131363684(0x7f0a0764, float:1.8347184E38)
            android.view.View r0 = r0.findViewById(r1)
            r6 = r0
            r0 = r6
            java.lang.String r1 = "findViewById(R.id.fileImageView)"
            s1.z.c.l.d(r0, r1)
            r0 = r5
            r1 = r6
            android.widget.ImageView r1 = (android.widget.ImageView) r1
            r0.f21349e = r1
            r0 = r5
            r1 = 2131363686(0x7f0a0766, float:1.8347188E38)
            android.view.View r0 = r0.findViewById(r1)
            r6 = r0
            r0 = r6
            java.lang.String r1 = "findViewById(R.id.fileTitleView)"
            s1.z.c.l.d(r0, r1)
            r0 = r5
            r1 = r6
            android.widget.TextView r1 = (android.widget.TextView) r1
            r0.f21350f = r1
            r0 = r5
            r1 = 2131363685(0x7f0a0765, float:1.8347186E38)
            android.view.View r0 = r0.findViewById(r1)
            r6 = r0
            r0 = r6
            java.lang.String r1 = "findViewById(R.id.fileSubtitleView)"
            s1.z.c.l.d(r0, r1)
            r0 = r5
            r1 = r6
            android.widget.TextView r1 = (android.widget.TextView) r1
            r0.f21351g = r1
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p195a.p242j.C6420f.<init>(android.content.Context, android.util.AttributeSet, int, int):void");
    }

    private final SimpleExoPlayer getOrCreatePlayer() {
        SimpleExoPlayer simpleExoPlayer = this.f21353i;
        if (simpleExoPlayer != null) {
            return simpleExoPlayer;
        }
        SimpleExoPlayer m39243a = new SimpleExoPlayer.C1964b(getContext()).m39243a();
        l.d(m39243a, "SimpleExoPlayer.Builder(context).build()");
        this.f21346b.setPlayer(m39243a);
        PlayerControlView playerControlView = this.f21352h;
        if (playerControlView != null) {
            playerControlView.setPlayer(m39243a);
        }
        for (AbstractC24760q0.AbstractC24762b abstractC24762b : this.f21354j) {
            m39243a.addListener(abstractC24762b);
        }
        this.f21353i = m39243a;
        return m39243a;
    }

    /* renamed from: a */
    public final boolean m31290a() {
        return C19286f.m13663p(this.f21345a) || C19286f.m13663p(this.f21346b) || C19286f.m13663p(this.f21347c) || C19286f.m13663p(this.f21348d);
    }

    /* renamed from: b */
    public final void m31289b() {
        this.f21346b.setPlayer(null);
        PlayerControlView playerControlView = this.f21352h;
        if (playerControlView != null) {
            playerControlView.setPlayer(null);
        }
        SimpleExoPlayer simpleExoPlayer = this.f21353i;
        if (simpleExoPlayer != null) {
            simpleExoPlayer.release();
        }
        for (AbstractC24760q0.AbstractC24762b abstractC24762b : this.f21354j) {
            SimpleExoPlayer simpleExoPlayer2 = this.f21353i;
            if (simpleExoPlayer2 != null) {
                simpleExoPlayer2.removeListener(abstractC24762b);
            }
        }
        this.f21353i = null;
    }

    /* renamed from: c */
    public final void m31288c(AbstractC24760q0.AbstractC24762b abstractC24762b) {
        l.e(abstractC24762b, "listener");
        SimpleExoPlayer simpleExoPlayer = this.f21353i;
        if (simpleExoPlayer != null) {
            simpleExoPlayer.removeListener(abstractC24762b);
        }
        this.f21354j.remove(abstractC24762b);
    }

    /* renamed from: d */
    public final void m31287d() {
        ComponentCallbacks2C22222c.m8445f(this).m8412m(this.f21345a);
        this.f21345a.setImageDrawable(null);
        this.f21345a.setVisibility(4);
        SimpleExoPlayer simpleExoPlayer = this.f21353i;
        if (simpleExoPlayer != null) {
            simpleExoPlayer.stop(true);
        }
        this.f21346b.setVisibility(4);
        this.f21347c.setVisibility(8);
        this.f21348d.setVisibility(8);
    }

    /* renamed from: e */
    public final void m31286e(Uri uri, float f, long j) {
        l.e(uri, "uri");
        m31287d();
        this.f21346b.setVisibility(0);
        View findViewById = this.f21346b.findViewById(2131363564);
        View view = findViewById;
        if (!(findViewById instanceof AspectRatioFrameLayout)) {
            view = null;
        }
        AspectRatioFrameLayout aspectRatioFrameLayout = (AspectRatioFrameLayout) view;
        if (aspectRatioFrameLayout != null) {
            aspectRatioFrameLayout.setAspectRatio(f);
        }
        View videoSurfaceView = this.f21346b.getVideoSurfaceView();
        if (videoSurfaceView != null) {
            videoSurfaceView.setTransitionName(MediaViewerActivity.m34952qa(j));
        }
        getOrCreatePlayer().prepare(new C24547t(uri, new C6421a(), new C24399f(), AbstractC24279e.f67328a, new C24751u(), null, 1048576, null));
    }

    public final Integer getDrawableHeight() {
        Drawable drawable = this.f21345a.getDrawable();
        return drawable != null ? Integer.valueOf(drawable.getIntrinsicHeight()) : null;
    }

    public final Integer getDrawableWidth() {
        Drawable drawable = this.f21345a.getDrawable();
        return drawable != null ? Integer.valueOf(drawable.getIntrinsicWidth()) : null;
    }

    /* JADX WARN: Type inference failed for: r0v6, types: [long] */
    public final long getPlaybackPosition() {
        SimpleExoPlayer simpleExoPlayer = this.f21353i;
        return simpleExoPlayer != null ? simpleExoPlayer.getCurrentPosition() : (char) 0;
    }

    public final void setPlayWhenReady(boolean z) {
        SimpleExoPlayer simpleExoPlayer = this.f21353i;
        if (simpleExoPlayer != null) {
            simpleExoPlayer.setPlayWhenReady(z);
        }
    }

    public final void setPlayerControlView(PlayerControlView playerControlView) {
        if (playerControlView != null) {
            playerControlView.setPlayer(this.f21353i);
        }
        this.f21352h = playerControlView;
    }
}
