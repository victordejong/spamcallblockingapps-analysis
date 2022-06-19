package com.google.android.exoplayer2.p260ui;

import android.annotation.SuppressLint;
import android.annotation.TargetApi;
import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Matrix;
import android.graphics.RectF;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.os.Looper;
import android.util.AttributeSet;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.SurfaceView;
import android.view.TextureView;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.core.content.C0586a;
import com.google.android.exoplayer2.AbstractC5104m0;
import com.google.android.exoplayer2.AbstractC5162o0;
import com.google.android.exoplayer2.AbstractC5578w;
import com.google.android.exoplayer2.AbstractC5585y0;
import com.google.android.exoplayer2.C5102l0;
import com.google.android.exoplayer2.C5160n0;
import com.google.android.exoplayer2.ExoPlaybackException;
import com.google.android.exoplayer2.metadata.Metadata;
import com.google.android.exoplayer2.metadata.flac.PictureFrame;
import com.google.android.exoplayer2.metadata.id3.ApicFrame;
import com.google.android.exoplayer2.p260ui.AspectRatioFrameLayout;
import com.google.android.exoplayer2.p260ui.PlayerControlView;
import com.google.android.exoplayer2.p260ui.spherical.AbstractC5456g;
import com.google.android.exoplayer2.p260ui.spherical.SphericalGLSurfaceView;
import com.google.android.exoplayer2.source.TrackGroupArray;
import com.google.android.exoplayer2.text.AbstractC5326j;
import com.google.android.exoplayer2.text.C5317b;
import com.google.android.exoplayer2.trackselection.AbstractC5408f;
import com.google.android.exoplayer2.trackselection.C5411g;
import com.google.android.exoplayer2.util.AbstractC5518j;
import com.google.android.exoplayer2.util.C5508e;
import com.google.android.exoplayer2.util.C5515h0;
import com.google.android.exoplayer2.video.AbstractC5568p;
import com.google.android.exoplayer2.video.C5567o;
import com.google.android.exoplayer2.video.VideoDecoderGLSurfaceView;
import java.util.ArrayList;
import java.util.List;
import org.checkerframework.checker.nullness.qual.EnsuresNonNullIf;
import org.checkerframework.checker.nullness.qual.RequiresNonNull;
/* renamed from: com.google.android.exoplayer2.ui.PlayerView */
/* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/ui/PlayerView.class */
public class PlayerView extends FrameLayout {

    /* renamed from: A */
    private boolean f17507A;

    /* renamed from: B */
    private int f17508B;

    /* renamed from: C */
    private boolean f17509C;

    /* renamed from: d */
    private final View$OnLayoutChangeListenerC5428b f17510d;

    /* renamed from: e */
    private final AspectRatioFrameLayout f17511e;

    /* renamed from: f */
    private final View f17512f;

    /* renamed from: g */
    private final View f17513g;

    /* renamed from: h */
    private final ImageView f17514h;

    /* renamed from: i */
    private final SubtitleView f17515i;

    /* renamed from: j */
    private final View f17516j;

    /* renamed from: k */
    private final TextView f17517k;

    /* renamed from: l */
    private final PlayerControlView f17518l;

    /* renamed from: m */
    private final FrameLayout f17519m;

    /* renamed from: n */
    private final FrameLayout f17520n;

    /* renamed from: o */
    private AbstractC5162o0 f17521o;

    /* renamed from: p */
    private boolean f17522p;

    /* renamed from: q */
    private PlayerControlView.AbstractC5426d f17523q;

    /* renamed from: r */
    private boolean f17524r;

    /* renamed from: s */
    private Drawable f17525s;

    /* renamed from: t */
    private int f17526t;

    /* renamed from: u */
    private boolean f17527u;

    /* renamed from: v */
    private AbstractC5518j<? super ExoPlaybackException> f17528v;

    /* renamed from: w */
    private CharSequence f17529w;

    /* renamed from: x */
    private int f17530x;

    /* renamed from: y */
    private boolean f17531y;

    /* renamed from: z */
    private boolean f17532z;

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: com.google.android.exoplayer2.ui.PlayerView$b */
    /* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/ui/PlayerView$b.class */
    public final class View$OnLayoutChangeListenerC5428b implements AbstractC5162o0.AbstractC5163a, AbstractC5326j, AbstractC5568p, View.OnLayoutChangeListener, AbstractC5456g, PlayerControlView.AbstractC5426d {
        private View$OnLayoutChangeListenerC5428b() {
            PlayerView.this = r4;
        }

        @Override // com.google.android.exoplayer2.p260ui.PlayerControlView.AbstractC5426d
        /* renamed from: a */
        public void mo19126a(int i) {
            PlayerView.this.m19157I();
        }

        @Override // com.google.android.exoplayer2.text.AbstractC5326j
        /* renamed from: h */
        public void mo18392h(List<C5317b> list) {
            if (PlayerView.this.f17515i != null) {
                PlayerView.this.f17515i.mo18392h(list);
            }
        }

        @Override // com.google.android.exoplayer2.AbstractC5162o0.AbstractC5163a
        public /* synthetic */ void onIsPlayingChanged(boolean z) {
            C5160n0.m20286a(this, z);
        }

        @Override // android.view.View.OnLayoutChangeListener
        public void onLayoutChange(View view, int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8) {
            PlayerView.m19137p((TextureView) view, PlayerView.this.f17508B);
        }

        @Override // com.google.android.exoplayer2.AbstractC5162o0.AbstractC5163a
        public /* synthetic */ void onLoadingChanged(boolean z) {
            C5160n0.m20285b(this, z);
        }

        @Override // com.google.android.exoplayer2.AbstractC5162o0.AbstractC5163a
        public /* synthetic */ void onPlaybackParametersChanged(C5102l0 c5102l0) {
            C5160n0.m20284c(this, c5102l0);
        }

        @Override // com.google.android.exoplayer2.AbstractC5162o0.AbstractC5163a
        public /* synthetic */ void onPlaybackSuppressionReasonChanged(int i) {
            C5160n0.m20283d(this, i);
        }

        @Override // com.google.android.exoplayer2.AbstractC5162o0.AbstractC5163a
        public /* synthetic */ void onPlayerError(ExoPlaybackException exoPlaybackException) {
            C5160n0.m20282e(this, exoPlaybackException);
        }

        @Override // com.google.android.exoplayer2.AbstractC5162o0.AbstractC5163a
        public void onPlayerStateChanged(boolean z, int i) {
            PlayerView.this.m19158H();
            PlayerView.this.m19156J();
            if (!PlayerView.this.m19129x() || !PlayerView.this.f17532z) {
                PlayerView.this.m19128y(false);
            } else {
                PlayerView.this.m19131v();
            }
        }

        @Override // com.google.android.exoplayer2.AbstractC5162o0.AbstractC5163a
        public void onPositionDiscontinuity(int i) {
            if (!PlayerView.this.m19129x() || !PlayerView.this.f17532z) {
                return;
            }
            PlayerView.this.m19131v();
        }

        @Override // com.google.android.exoplayer2.video.AbstractC5568p
        public void onRenderedFirstFrame() {
            if (PlayerView.this.f17512f != null) {
                PlayerView.this.f17512f.setVisibility(4);
            }
        }

        @Override // com.google.android.exoplayer2.AbstractC5162o0.AbstractC5163a
        public /* synthetic */ void onRepeatModeChanged(int i) {
            C5160n0.m20280g(this, i);
        }

        @Override // com.google.android.exoplayer2.AbstractC5162o0.AbstractC5163a
        public /* synthetic */ void onSeekProcessed() {
            C5160n0.m20279h(this);
        }

        @Override // com.google.android.exoplayer2.AbstractC5162o0.AbstractC5163a
        public /* synthetic */ void onShuffleModeEnabledChanged(boolean z) {
            C5160n0.m20278i(this, z);
        }

        @Override // com.google.android.exoplayer2.p260ui.spherical.AbstractC5456g
        public boolean onSingleTapUp(MotionEvent motionEvent) {
            return PlayerView.this.m19159G();
        }

        @Override // com.google.android.exoplayer2.video.AbstractC5568p
        public /* synthetic */ void onSurfaceSizeChanged(int i, int i2) {
            C5567o.m18536a(this, i, i2);
        }

        @Override // com.google.android.exoplayer2.AbstractC5162o0.AbstractC5163a
        public /* synthetic */ void onTimelineChanged(AbstractC5585y0 abstractC5585y0, int i) {
            C5160n0.m20277j(this, abstractC5585y0, i);
        }

        @Override // com.google.android.exoplayer2.AbstractC5162o0.AbstractC5163a
        public /* synthetic */ void onTimelineChanged(AbstractC5585y0 abstractC5585y0, Object obj, int i) {
            C5160n0.m20276k(this, abstractC5585y0, obj, i);
        }

        @Override // com.google.android.exoplayer2.AbstractC5162o0.AbstractC5163a
        public void onTracksChanged(TrackGroupArray trackGroupArray, C5411g c5411g) {
            PlayerView.this.m19155K(false);
        }

        /* JADX WARN: Code restructure failed: missing block: B:13:0x003a, code lost:
            if (r8 == 270) goto L14;
         */
        @Override // com.google.android.exoplayer2.video.AbstractC5568p
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public void onVideoSizeChanged(int r6, int r7, int r8, float r9) {
            /*
                r5 = this;
                r0 = r7
                if (r0 == 0) goto L18
                r0 = r6
                if (r0 != 0) goto Lb
                goto L18
            Lb:
                r0 = r6
                float r0 = (float) r0
                r1 = r9
                float r0 = r0 * r1
                r1 = r7
                float r1 = (float) r1
                float r0 = r0 / r1
                r9 = r0
                goto L1b
            L18:
                r0 = 1065353216(0x3f800000, float:1.0)
                r9 = r0
            L1b:
                r0 = r9
                r10 = r0
                r0 = r5
                com.google.android.exoplayer2.ui.PlayerView r0 = com.google.android.exoplayer2.p260ui.PlayerView.this
                android.view.View r0 = com.google.android.exoplayer2.p260ui.PlayerView.m19146g(r0)
                boolean r0 = r0 instanceof android.view.TextureView
                if (r0 == 0) goto L8a
                r0 = r8
                r1 = 90
                if (r0 == r1) goto L3d
                r0 = r9
                r10 = r0
                r0 = r8
                r1 = 270(0x10e, float:3.78E-43)
                if (r0 != r1) goto L43
            L3d:
                r0 = 1065353216(0x3f800000, float:1.0)
                r1 = r9
                float r0 = r0 / r1
                r10 = r0
            L43:
                r0 = r5
                com.google.android.exoplayer2.ui.PlayerView r0 = com.google.android.exoplayer2.p260ui.PlayerView.this
                int r0 = com.google.android.exoplayer2.p260ui.PlayerView.m19145h(r0)
                if (r0 == 0) goto L58
                r0 = r5
                com.google.android.exoplayer2.ui.PlayerView r0 = com.google.android.exoplayer2.p260ui.PlayerView.this
                android.view.View r0 = com.google.android.exoplayer2.p260ui.PlayerView.m19146g(r0)
                r1 = r5
                r0.removeOnLayoutChangeListener(r1)
            L58:
                r0 = r5
                com.google.android.exoplayer2.ui.PlayerView r0 = com.google.android.exoplayer2.p260ui.PlayerView.this
                r1 = r8
                int r0 = com.google.android.exoplayer2.p260ui.PlayerView.m19144i(r0, r1)
                r0 = r5
                com.google.android.exoplayer2.ui.PlayerView r0 = com.google.android.exoplayer2.p260ui.PlayerView.this
                int r0 = com.google.android.exoplayer2.p260ui.PlayerView.m19145h(r0)
                if (r0 == 0) goto L76
                r0 = r5
                com.google.android.exoplayer2.ui.PlayerView r0 = com.google.android.exoplayer2.p260ui.PlayerView.this
                android.view.View r0 = com.google.android.exoplayer2.p260ui.PlayerView.m19146g(r0)
                r1 = r5
                r0.addOnLayoutChangeListener(r1)
            L76:
                r0 = r5
                com.google.android.exoplayer2.ui.PlayerView r0 = com.google.android.exoplayer2.p260ui.PlayerView.this
                android.view.View r0 = com.google.android.exoplayer2.p260ui.PlayerView.m19146g(r0)
                android.view.TextureView r0 = (android.view.TextureView) r0
                r1 = r5
                com.google.android.exoplayer2.ui.PlayerView r1 = com.google.android.exoplayer2.p260ui.PlayerView.this
                int r1 = com.google.android.exoplayer2.p260ui.PlayerView.m19145h(r1)
                com.google.android.exoplayer2.p260ui.PlayerView.m19143j(r0, r1)
            L8a:
                r0 = r5
                com.google.android.exoplayer2.ui.PlayerView r0 = com.google.android.exoplayer2.p260ui.PlayerView.this
                r11 = r0
                r0 = r11
                r1 = r10
                r2 = r11
                com.google.android.exoplayer2.ui.AspectRatioFrameLayout r2 = com.google.android.exoplayer2.p260ui.PlayerView.m19142k(r2)
                r3 = r5
                com.google.android.exoplayer2.ui.PlayerView r3 = com.google.android.exoplayer2.p260ui.PlayerView.this
                android.view.View r3 = com.google.android.exoplayer2.p260ui.PlayerView.m19146g(r3)
                r0.m19127z(r1, r2, r3)
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.p260ui.PlayerView.View$OnLayoutChangeListenerC5428b.onVideoSizeChanged(int, int, int, float):void");
        }
    }

    public PlayerView(Context context) {
        this(context, null);
    }

    public PlayerView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    /* JADX WARN: Finally extract failed */
    public PlayerView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        int i2;
        boolean z;
        int i3;
        boolean z2;
        boolean z3;
        int i4;
        int i5;
        boolean z4;
        boolean z5;
        int i6;
        boolean z6;
        int i7;
        View$OnLayoutChangeListenerC5428b view$OnLayoutChangeListenerC5428b = new View$OnLayoutChangeListenerC5428b();
        this.f17510d = view$OnLayoutChangeListenerC5428b;
        if (isInEditMode()) {
            this.f17511e = null;
            this.f17512f = null;
            this.f17513g = null;
            this.f17514h = null;
            this.f17515i = null;
            this.f17516j = null;
            this.f17517k = null;
            this.f17518l = null;
            this.f17519m = null;
            this.f17520n = null;
            ImageView imageView = new ImageView(context);
            if (C5515h0.f17876a >= 23) {
                m19134s(getResources(), imageView);
            } else {
                m19135r(getResources(), imageView);
            }
            addView(imageView);
            return;
        }
        int i8 = C5440i.exo_player_view;
        if (attributeSet != null) {
            TypedArray obtainStyledAttributes = context.getTheme().obtainStyledAttributes(attributeSet, C5442k.PlayerView, 0, 0);
            try {
                int i9 = C5442k.PlayerView_shutter_background_color;
                z6 = obtainStyledAttributes.hasValue(i9);
                int color = obtainStyledAttributes.getColor(i9, 0);
                i8 = obtainStyledAttributes.getResourceId(C5442k.PlayerView_player_layout_id, i8);
                z5 = obtainStyledAttributes.getBoolean(C5442k.PlayerView_use_artwork, true);
                int resourceId = obtainStyledAttributes.getResourceId(C5442k.PlayerView_default_artwork, 0);
                z4 = obtainStyledAttributes.getBoolean(C5442k.PlayerView_use_controller, true);
                i5 = obtainStyledAttributes.getInt(C5442k.PlayerView_surface_type, 1);
                i4 = obtainStyledAttributes.getInt(C5442k.PlayerView_resize_mode, 0);
                int i10 = obtainStyledAttributes.getInt(C5442k.PlayerView_show_timeout, 5000);
                z3 = obtainStyledAttributes.getBoolean(C5442k.PlayerView_hide_on_touch, true);
                z2 = obtainStyledAttributes.getBoolean(C5442k.PlayerView_auto_show, true);
                i3 = obtainStyledAttributes.getInteger(C5442k.PlayerView_show_buffering, 0);
                this.f17527u = obtainStyledAttributes.getBoolean(C5442k.PlayerView_keep_content_on_player_reset, this.f17527u);
                z = obtainStyledAttributes.getBoolean(C5442k.PlayerView_hide_during_ads, true);
                obtainStyledAttributes.recycle();
                i2 = color;
                i6 = resourceId;
                i7 = i10;
            } catch (Throwable th) {
                obtainStyledAttributes.recycle();
                throw th;
            }
        } else {
            i5 = 1;
            i4 = 0;
            z2 = true;
            i3 = 0;
            z = true;
            z3 = true;
            i2 = 0;
            z6 = false;
            z5 = true;
            i6 = 0;
            z4 = true;
            i7 = 5000;
        }
        LayoutInflater.from(context).inflate(i8, this);
        setDescendantFocusability(262144);
        AspectRatioFrameLayout aspectRatioFrameLayout = (AspectRatioFrameLayout) findViewById(C5438g.exo_content_frame);
        this.f17511e = aspectRatioFrameLayout;
        if (aspectRatioFrameLayout != null) {
            m19163C(aspectRatioFrameLayout, i4);
        }
        View findViewById = findViewById(C5438g.exo_shutter);
        this.f17512f = findViewById;
        if (findViewById != null && z6) {
            findViewById.setBackgroundColor(i2);
        }
        if (aspectRatioFrameLayout == null || i5 == 0) {
            this.f17513g = null;
        } else {
            ViewGroup.LayoutParams layoutParams = new ViewGroup.LayoutParams(-1, -1);
            if (i5 == 2) {
                this.f17513g = new TextureView(context);
            } else if (i5 == 3) {
                SphericalGLSurfaceView sphericalGLSurfaceView = new SphericalGLSurfaceView(context);
                sphericalGLSurfaceView.setSingleTapListener(view$OnLayoutChangeListenerC5428b);
                this.f17513g = sphericalGLSurfaceView;
            } else if (i5 != 4) {
                this.f17513g = new SurfaceView(context);
            } else {
                this.f17513g = new VideoDecoderGLSurfaceView(context);
            }
            this.f17513g.setLayoutParams(layoutParams);
            aspectRatioFrameLayout.addView(this.f17513g, 0);
        }
        this.f17519m = (FrameLayout) findViewById(C5438g.exo_ad_overlay);
        this.f17520n = (FrameLayout) findViewById(C5438g.exo_overlay);
        ImageView imageView2 = (ImageView) findViewById(C5438g.exo_artwork);
        this.f17514h = imageView2;
        this.f17524r = z5 && imageView2 != null;
        if (i6 != 0) {
            this.f17525s = C0586a.m33348f(getContext(), i6);
        }
        SubtitleView subtitleView = (SubtitleView) findViewById(C5438g.exo_subtitles);
        this.f17515i = subtitleView;
        if (subtitleView != null) {
            subtitleView.setUserDefaultStyle();
            subtitleView.setUserDefaultTextSize();
        }
        View findViewById2 = findViewById(C5438g.exo_buffering);
        this.f17516j = findViewById2;
        if (findViewById2 != null) {
            findViewById2.setVisibility(8);
        }
        this.f17526t = i3;
        TextView textView = (TextView) findViewById(C5438g.exo_error_message);
        this.f17517k = textView;
        if (textView != null) {
            textView.setVisibility(8);
        }
        int i11 = C5438g.exo_controller;
        PlayerControlView playerControlView = (PlayerControlView) findViewById(i11);
        View findViewById3 = findViewById(C5438g.exo_controller_placeholder);
        if (playerControlView != null) {
            this.f17518l = playerControlView;
        } else if (findViewById3 != null) {
            PlayerControlView playerControlView2 = new PlayerControlView(context, null, 0, attributeSet);
            this.f17518l = playerControlView2;
            playerControlView2.setId(i11);
            playerControlView2.setLayoutParams(findViewById3.getLayoutParams());
            ViewGroup viewGroup = (ViewGroup) findViewById3.getParent();
            int indexOfChild = viewGroup.indexOfChild(findViewById3);
            viewGroup.removeView(findViewById3);
            viewGroup.addView(playerControlView2, indexOfChild);
        } else {
            this.f17518l = null;
        }
        PlayerControlView playerControlView3 = this.f17518l;
        this.f17530x = playerControlView3 == null ? 0 : i7;
        this.f17507A = z3;
        this.f17531y = z2;
        this.f17532z = z;
        this.f17522p = z4 && playerControlView3 != null;
        m19131v();
        m19157I();
        PlayerControlView playerControlView4 = this.f17518l;
        if (playerControlView4 == null) {
            return;
        }
        playerControlView4.m19220C(view$OnLayoutChangeListenerC5428b);
    }

    @RequiresNonNull({"artworkView"})
    /* renamed from: A */
    private boolean m19165A(Metadata metadata) {
        boolean z;
        int i;
        int i2;
        byte[] bArr;
        int i3 = 0;
        int i4 = -1;
        boolean z2 = false;
        while (true) {
            boolean z3 = z2;
            z = z3;
            if (i3 >= metadata.m20392d()) {
                break;
            }
            Metadata.Entry m20393c = metadata.m20393c(i3);
            if (m20393c instanceof ApicFrame) {
                ApicFrame apicFrame = (ApicFrame) m20393c;
                bArr = apicFrame.f16134h;
                i2 = apicFrame.f16133g;
            } else {
                i = i4;
                z = z3;
                if (m20393c instanceof PictureFrame) {
                    PictureFrame pictureFrame = (PictureFrame) m20393c;
                    bArr = pictureFrame.f16116k;
                    i2 = pictureFrame.f16109d;
                } else {
                    continue;
                    i3++;
                    i4 = i;
                    z2 = z;
                }
            }
            if (i4 != -1) {
                i = i4;
                z = z3;
                if (i2 != 3) {
                    continue;
                    i3++;
                    i4 = i;
                    z2 = z;
                }
            }
            z = m19164B(new BitmapDrawable(getResources(), BitmapFactory.decodeByteArray(bArr, 0, bArr.length)));
            if (i2 == 3) {
                break;
            }
            i = i2;
            i3++;
            i4 = i;
            z2 = z;
        }
        return z;
    }

    @RequiresNonNull({"artworkView"})
    /* renamed from: B */
    private boolean m19164B(Drawable drawable) {
        if (drawable != null) {
            int intrinsicWidth = drawable.getIntrinsicWidth();
            int intrinsicHeight = drawable.getIntrinsicHeight();
            if (intrinsicWidth <= 0 || intrinsicHeight <= 0) {
                return false;
            }
            m19127z(intrinsicWidth / intrinsicHeight, this.f17511e, this.f17514h);
            this.f17514h.setImageDrawable(drawable);
            this.f17514h.setVisibility(0);
            return true;
        }
        return false;
    }

    /* renamed from: C */
    private static void m19163C(AspectRatioFrameLayout aspectRatioFrameLayout, int i) {
        aspectRatioFrameLayout.setResizeMode(i);
    }

    /* renamed from: D */
    private boolean m19162D() {
        boolean z;
        AbstractC5162o0 abstractC5162o0 = this.f17521o;
        if (abstractC5162o0 == null) {
            return true;
        }
        int mo18479B = abstractC5162o0.mo18479B();
        if (this.f17531y) {
            z = true;
            if (mo18479B != 1) {
                z = true;
                if (mo18479B != 4) {
                    if (!this.f17521o.mo18435h()) {
                        z = true;
                    }
                }
            }
            return z;
        }
        z = false;
        return z;
    }

    /* renamed from: F */
    private void m19160F(boolean z) {
        if (!m19153M()) {
            return;
        }
        this.f17518l.setShowTimeoutMs(z ? 0 : this.f17530x);
        this.f17518l.m19200W();
    }

    /* renamed from: G */
    public boolean m19159G() {
        if (!m19153M() || this.f17521o == null) {
            return false;
        }
        if (!this.f17518l.m19212K()) {
            m19128y(true);
            return true;
        } else if (!this.f17507A) {
            return true;
        } else {
            this.f17518l.m19215H();
            return true;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:18:0x0052  */
    /* JADX WARN: Removed duplicated region for block: B:19:0x0058  */
    /* renamed from: H */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void m19158H() {
        /*
            r3 = this;
            r0 = r3
            android.view.View r0 = r0.f17516j
            if (r0 == 0) goto L62
            r0 = r3
            com.google.android.exoplayer2.o0 r0 = r0.f17521o
            r4 = r0
            r0 = 1
            r5 = r0
            r0 = 0
            r6 = r0
            r0 = r4
            if (r0 == 0) goto L45
            r0 = r4
            int r0 = r0.mo18479B()
            r1 = 2
            if (r0 != r1) goto L45
            r0 = r3
            int r0 = r0.f17526t
            r7 = r0
            r0 = r5
            r8 = r0
            r0 = r7
            r1 = 2
            if (r0 == r1) goto L48
            r0 = r7
            r1 = 1
            if (r0 != r1) goto L45
            r0 = r3
            com.google.android.exoplayer2.o0 r0 = r0.f17521o
            boolean r0 = r0.mo18435h()
            if (r0 == 0) goto L45
            r0 = r5
            r8 = r0
            goto L48
        L45:
            r0 = 0
            r8 = r0
        L48:
            r0 = r3
            android.view.View r0 = r0.f17516j
            r4 = r0
            r0 = r8
            if (r0 == 0) goto L58
            r0 = r6
            r8 = r0
            goto L5c
        L58:
            r0 = 8
            r8 = r0
        L5c:
            r0 = r4
            r1 = r8
            r0.setVisibility(r1)
        L62:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.p260ui.PlayerView.m19158H():void");
    }

    /* renamed from: I */
    public void m19157I() {
        PlayerControlView playerControlView = this.f17518l;
        String str = null;
        if (playerControlView == null || !this.f17522p) {
            setContentDescription(null);
        } else if (playerControlView.getVisibility() != 0) {
            setContentDescription(getResources().getString(C5441j.exo_controls_show));
        } else {
            if (this.f17507A) {
                str = getResources().getString(C5441j.exo_controls_hide);
            }
            setContentDescription(str);
        }
    }

    /* renamed from: J */
    public void m19156J() {
        AbstractC5518j<? super ExoPlaybackException> abstractC5518j;
        TextView textView = this.f17517k;
        if (textView != null) {
            CharSequence charSequence = this.f17529w;
            if (charSequence != null) {
                textView.setText(charSequence);
                this.f17517k.setVisibility(0);
                return;
            }
            AbstractC5162o0 abstractC5162o0 = this.f17521o;
            ExoPlaybackException mo18429k = abstractC5162o0 != null ? abstractC5162o0.mo18429k() : null;
            if (mo18429k == null || (abstractC5518j = this.f17528v) == null) {
                this.f17517k.setVisibility(8);
                return;
            }
            this.f17517k.setText((CharSequence) abstractC5518j.m18786a(mo18429k).second);
            this.f17517k.setVisibility(0);
        }
    }

    /* renamed from: K */
    public void m19155K(boolean z) {
        AbstractC5162o0 abstractC5162o0 = this.f17521o;
        if (abstractC5162o0 == null || abstractC5162o0.mo18464J().m20153c()) {
            if (this.f17527u) {
                return;
            }
            m19132u();
            m19136q();
            return;
        }
        if (z && !this.f17527u) {
            m19136q();
        }
        C5411g mo18455Q = abstractC5162o0.mo18455Q();
        for (int i = 0; i < mo18455Q.f17384a; i++) {
            if (abstractC5162o0.mo18454R(i) == 2 && mo18455Q.m19279a(i) != null) {
                m19132u();
                return;
            }
        }
        m19136q();
        if (m19154L()) {
            for (int i2 = 0; i2 < mo18455Q.f17384a; i2++) {
                AbstractC5408f m19279a = mo18455Q.m19279a(i2);
                if (m19279a != null) {
                    for (int i3 = 0; i3 < m19279a.length(); i3++) {
                        Metadata metadata = m19279a.mo19292d(i3).f14459j;
                        if (metadata != null && m19165A(metadata)) {
                            return;
                        }
                    }
                    continue;
                }
            }
            if (m19164B(this.f17525s)) {
                return;
            }
        }
        m19132u();
    }

    @EnsuresNonNullIf(expression = {"artworkView"}, result = true)
    /* renamed from: L */
    private boolean m19154L() {
        if (this.f17524r) {
            C5508e.m18908h(this.f17514h);
            return true;
        }
        return false;
    }

    @EnsuresNonNullIf(expression = {"controller"}, result = true)
    /* renamed from: M */
    private boolean m19153M() {
        if (this.f17522p) {
            C5508e.m18908h(this.f17518l);
            return true;
        }
        return false;
    }

    /* renamed from: p */
    public static void m19137p(TextureView textureView, int i) {
        Matrix matrix = new Matrix();
        float width = textureView.getWidth();
        float height = textureView.getHeight();
        if (width != 0.0f && height != 0.0f && i != 0) {
            float f = width / 2.0f;
            float f2 = height / 2.0f;
            matrix.postRotate(i, f, f2);
            RectF rectF = new RectF(0.0f, 0.0f, width, height);
            RectF rectF2 = new RectF();
            matrix.mapRect(rectF2, rectF);
            matrix.postScale(width / rectF2.width(), height / rectF2.height(), f, f2);
        }
        textureView.setTransform(matrix);
    }

    /* renamed from: q */
    private void m19136q() {
        View view = this.f17512f;
        if (view != null) {
            view.setVisibility(0);
        }
    }

    /* renamed from: r */
    private static void m19135r(Resources resources, ImageView imageView) {
        imageView.setImageDrawable(resources.getDrawable(C5437f.exo_edit_mode_logo));
        imageView.setBackgroundColor(resources.getColor(C5436e.exo_edit_mode_background_color));
    }

    @TargetApi(23)
    /* renamed from: s */
    private static void m19134s(Resources resources, ImageView imageView) {
        imageView.setImageDrawable(resources.getDrawable(C5437f.exo_edit_mode_logo, null));
        imageView.setBackgroundColor(resources.getColor(C5436e.exo_edit_mode_background_color, null));
    }

    /* renamed from: u */
    private void m19132u() {
        ImageView imageView = this.f17514h;
        if (imageView != null) {
            imageView.setImageResource(17170445);
            this.f17514h.setVisibility(4);
        }
    }

    @SuppressLint({"InlinedApi"})
    /* renamed from: w */
    private boolean m19130w(int i) {
        return i == 19 || i == 270 || i == 22 || i == 271 || i == 20 || i == 269 || i == 21 || i == 268 || i == 23;
    }

    /* renamed from: x */
    public boolean m19129x() {
        AbstractC5162o0 abstractC5162o0 = this.f17521o;
        return abstractC5162o0 != null && abstractC5162o0.mo18441e() && this.f17521o.mo18435h();
    }

    /* renamed from: y */
    public void m19128y(boolean z) {
        if ((!m19129x() || !this.f17532z) && m19153M()) {
            boolean z2 = this.f17518l.m19212K() && this.f17518l.getShowTimeoutMs() <= 0;
            boolean m19162D = m19162D();
            if (!z && !z2 && !m19162D) {
                return;
            }
            m19160F(m19162D);
        }
    }

    /* renamed from: E */
    public void m19161E() {
        m19160F(m19162D());
    }

    @Override // android.view.ViewGroup, android.view.View
    public boolean dispatchKeyEvent(KeyEvent keyEvent) {
        boolean z;
        AbstractC5162o0 abstractC5162o0 = this.f17521o;
        if (abstractC5162o0 == null || !abstractC5162o0.mo18441e()) {
            boolean m19130w = m19130w(keyEvent.getKeyCode());
            if (m19130w && m19153M() && !this.f17518l.m19212K()) {
                m19128y(true);
            } else if (!m19133t(keyEvent) && !super.dispatchKeyEvent(keyEvent)) {
                z = false;
                if (m19130w) {
                    z = false;
                    if (m19153M()) {
                        m19128y(true);
                        z = false;
                    }
                }
                return z;
            } else {
                m19128y(true);
            }
            z = true;
            return z;
        }
        return super.dispatchKeyEvent(keyEvent);
    }

    public View[] getAdOverlayViews() {
        ArrayList arrayList = new ArrayList();
        FrameLayout frameLayout = this.f17520n;
        if (frameLayout != null) {
            arrayList.add(frameLayout);
        }
        PlayerControlView playerControlView = this.f17518l;
        if (playerControlView != null) {
            arrayList.add(playerControlView);
        }
        return (View[]) arrayList.toArray(new View[0]);
    }

    public ViewGroup getAdViewGroup() {
        return (ViewGroup) C5508e.m18907i(this.f17519m, "exo_ad_overlay must be present for ad playback");
    }

    public boolean getControllerAutoShow() {
        return this.f17531y;
    }

    public boolean getControllerHideOnTouch() {
        return this.f17507A;
    }

    public int getControllerShowTimeoutMs() {
        return this.f17530x;
    }

    public Drawable getDefaultArtwork() {
        return this.f17525s;
    }

    public FrameLayout getOverlayFrameLayout() {
        return this.f17520n;
    }

    public AbstractC5162o0 getPlayer() {
        return this.f17521o;
    }

    public int getResizeMode() {
        C5508e.m18908h(this.f17511e);
        return this.f17511e.getResizeMode();
    }

    public SubtitleView getSubtitleView() {
        return this.f17515i;
    }

    public boolean getUseArtwork() {
        return this.f17524r;
    }

    public boolean getUseController() {
        return this.f17522p;
    }

    public View getVideoSurfaceView() {
        return this.f17513g;
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        if (!m19153M() || this.f17521o == null) {
            return false;
        }
        int action = motionEvent.getAction();
        if (action == 0) {
            this.f17509C = true;
            return true;
        } else if (action != 1 || !this.f17509C) {
            return false;
        } else {
            this.f17509C = false;
            performClick();
            return true;
        }
    }

    @Override // android.view.View
    public boolean onTrackballEvent(MotionEvent motionEvent) {
        if (!m19153M() || this.f17521o == null) {
            return false;
        }
        m19128y(true);
        return true;
    }

    @Override // android.view.View
    public boolean performClick() {
        super.performClick();
        return m19159G();
    }

    public void setAspectRatioListener(AspectRatioFrameLayout.AbstractC5418b abstractC5418b) {
        C5508e.m18908h(this.f17511e);
        this.f17511e.setAspectRatioListener(abstractC5418b);
    }

    public void setControlDispatcher(AbstractC5578w abstractC5578w) {
        C5508e.m18908h(this.f17518l);
        this.f17518l.setControlDispatcher(abstractC5578w);
    }

    public void setControllerAutoShow(boolean z) {
        this.f17531y = z;
    }

    public void setControllerHideDuringAds(boolean z) {
        this.f17532z = z;
    }

    public void setControllerHideOnTouch(boolean z) {
        C5508e.m18908h(this.f17518l);
        this.f17507A = z;
        m19157I();
    }

    public void setControllerShowTimeoutMs(int i) {
        C5508e.m18908h(this.f17518l);
        this.f17530x = i;
        if (this.f17518l.m19212K()) {
            m19161E();
        }
    }

    public void setControllerVisibilityListener(PlayerControlView.AbstractC5426d abstractC5426d) {
        C5508e.m18908h(this.f17518l);
        PlayerControlView.AbstractC5426d abstractC5426d2 = this.f17523q;
        if (abstractC5426d2 == abstractC5426d) {
            return;
        }
        if (abstractC5426d2 != null) {
            this.f17518l.m19208O(abstractC5426d2);
        }
        this.f17523q = abstractC5426d;
        if (abstractC5426d == null) {
            return;
        }
        this.f17518l.m19220C(abstractC5426d);
    }

    public void setCustomErrorMessage(CharSequence charSequence) {
        C5508e.m18910f(this.f17517k != null);
        this.f17529w = charSequence;
        m19156J();
    }

    @Deprecated
    public void setDefaultArtwork(Bitmap bitmap) {
        setDefaultArtwork(bitmap == null ? null : new BitmapDrawable(getResources(), bitmap));
    }

    public void setDefaultArtwork(Drawable drawable) {
        if (this.f17525s != drawable) {
            this.f17525s = drawable;
            m19155K(false);
        }
    }

    public void setErrorMessageProvider(AbstractC5518j<? super ExoPlaybackException> abstractC5518j) {
        if (this.f17528v != abstractC5518j) {
            this.f17528v = abstractC5518j;
            m19156J();
        }
    }

    public void setExtraAdGroupMarkers(long[] jArr, boolean[] zArr) {
        C5508e.m18908h(this.f17518l);
        this.f17518l.setExtraAdGroupMarkers(jArr, zArr);
    }

    public void setFastForwardIncrementMs(int i) {
        C5508e.m18908h(this.f17518l);
        this.f17518l.setFastForwardIncrementMs(i);
    }

    public void setKeepContentOnPlayerReset(boolean z) {
        if (this.f17527u != z) {
            this.f17527u = z;
            m19155K(false);
        }
    }

    public void setPlaybackPreparer(AbstractC5104m0 abstractC5104m0) {
        C5508e.m18908h(this.f17518l);
        this.f17518l.setPlaybackPreparer(abstractC5104m0);
    }

    public void setPlayer(AbstractC5162o0 abstractC5162o0) {
        C5508e.m18910f(Looper.myLooper() == Looper.getMainLooper());
        C5508e.m18915a(abstractC5162o0 == null || abstractC5162o0.mo18459M() == Looper.getMainLooper());
        AbstractC5162o0 abstractC5162o02 = this.f17521o;
        if (abstractC5162o02 == abstractC5162o0) {
            return;
        }
        if (abstractC5162o02 != null) {
            abstractC5162o02.mo18412t(this.f17510d);
            AbstractC5162o0.AbstractC5165c mo18404x = abstractC5162o02.mo18404x();
            if (mo18404x != null) {
                mo18404x.mo18453S(this.f17510d);
                View view = this.f17513g;
                if (view instanceof TextureView) {
                    mo18404x.mo18424n((TextureView) view);
                } else if (view instanceof SphericalGLSurfaceView) {
                    ((SphericalGLSurfaceView) view).setVideoComponent(null);
                } else if (view instanceof VideoDecoderGLSurfaceView) {
                    mo18404x.mo18420p(null);
                } else if (view instanceof SurfaceView) {
                    mo18404x.mo18470G((SurfaceView) view);
                }
            }
            AbstractC5162o0.AbstractC5164b mo18452T = abstractC5162o02.mo18452T();
            if (mo18452T != null) {
                mo18452T.mo18414s(this.f17510d);
            }
        }
        this.f17521o = abstractC5162o0;
        if (m19153M()) {
            this.f17518l.setPlayer(abstractC5162o0);
        }
        SubtitleView subtitleView = this.f17515i;
        if (subtitleView != null) {
            subtitleView.setCues(null);
        }
        m19158H();
        m19156J();
        m19155K(true);
        if (abstractC5162o0 == null) {
            m19131v();
            return;
        }
        AbstractC5162o0.AbstractC5165c mo18404x2 = abstractC5162o0.mo18404x();
        if (mo18404x2 != null) {
            View view2 = this.f17513g;
            if (view2 instanceof TextureView) {
                mo18404x2.mo18456P((TextureView) view2);
            } else if (view2 instanceof SphericalGLSurfaceView) {
                ((SphericalGLSurfaceView) view2).setVideoComponent(mo18404x2);
            } else if (view2 instanceof VideoDecoderGLSurfaceView) {
                mo18404x2.mo18420p(((VideoDecoderGLSurfaceView) view2).getVideoDecoderOutputBufferRenderer());
            } else if (view2 instanceof SurfaceView) {
                mo18404x2.mo18416r((SurfaceView) view2);
            }
            mo18404x2.mo18408v(this.f17510d);
        }
        AbstractC5162o0.AbstractC5164b mo18452T2 = abstractC5162o0.mo18452T();
        if (mo18452T2 != null) {
            mo18452T2.mo18468H(this.f17510d);
        }
        abstractC5162o0.mo18422o(this.f17510d);
        m19128y(false);
    }

    public void setRepeatToggleModes(int i) {
        C5508e.m18908h(this.f17518l);
        this.f17518l.setRepeatToggleModes(i);
    }

    public void setResizeMode(int i) {
        C5508e.m18908h(this.f17511e);
        this.f17511e.setResizeMode(i);
    }

    public void setRewindIncrementMs(int i) {
        C5508e.m18908h(this.f17518l);
        this.f17518l.setRewindIncrementMs(i);
    }

    public void setShowBuffering(int i) {
        if (this.f17526t != i) {
            this.f17526t = i;
            m19158H();
        }
    }

    @Deprecated
    public void setShowBuffering(boolean z) {
        setShowBuffering(z ? 1 : 0);
    }

    public void setShowMultiWindowTimeBar(boolean z) {
        C5508e.m18908h(this.f17518l);
        this.f17518l.setShowMultiWindowTimeBar(z);
    }

    public void setShowShuffleButton(boolean z) {
        C5508e.m18908h(this.f17518l);
        this.f17518l.setShowShuffleButton(z);
    }

    public void setShutterBackgroundColor(int i) {
        View view = this.f17512f;
        if (view != null) {
            view.setBackgroundColor(i);
        }
    }

    public void setUseArtwork(boolean z) {
        C5508e.m18910f(!z || this.f17514h != null);
        if (this.f17524r != z) {
            this.f17524r = z;
            m19155K(false);
        }
    }

    public void setUseController(boolean z) {
        C5508e.m18910f(!z || this.f17518l != null);
        if (this.f17522p == z) {
            return;
        }
        this.f17522p = z;
        if (m19153M()) {
            this.f17518l.setPlayer(this.f17521o);
        } else {
            PlayerControlView playerControlView = this.f17518l;
            if (playerControlView != null) {
                playerControlView.m19215H();
                this.f17518l.setPlayer(null);
            }
        }
        m19157I();
    }

    @Override // android.view.View
    public void setVisibility(int i) {
        super.setVisibility(i);
        View view = this.f17513g;
        if (view instanceof SurfaceView) {
            view.setVisibility(i);
        }
    }

    /* renamed from: t */
    public boolean m19133t(KeyEvent keyEvent) {
        return m19153M() && this.f17518l.m19218E(keyEvent);
    }

    /* renamed from: v */
    public void m19131v() {
        PlayerControlView playerControlView = this.f17518l;
        if (playerControlView != null) {
            playerControlView.m19215H();
        }
    }

    /* renamed from: z */
    protected void m19127z(float f, AspectRatioFrameLayout aspectRatioFrameLayout, View view) {
        if (aspectRatioFrameLayout != null) {
            if (view instanceof SphericalGLSurfaceView) {
                f = 0.0f;
            }
            aspectRatioFrameLayout.setAspectRatio(f);
        }
    }
}
