package com.google.android.exoplayer2.p346ui;

import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
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
import androidx.core.content.C0790b;
import com.google.android.exoplayer2.AbstractC10841ab;
import com.google.android.exoplayer2.AbstractC10842ac;
import com.google.android.exoplayer2.AbstractC10864al;
import com.google.android.exoplayer2.AbstractC11159g;
import com.google.android.exoplayer2.C10840aa;
import com.google.android.exoplayer2.ExoPlaybackException;
import com.google.android.exoplayer2.MediaItem;
import com.google.android.exoplayer2.metadata.Metadata;
import com.google.android.exoplayer2.metadata.flac.PictureFrame;
import com.google.android.exoplayer2.metadata.id3.ApicFrame;
import com.google.android.exoplayer2.p346ui.AspectRatioFrameLayout;
import com.google.android.exoplayer2.p346ui.C11479c;
import com.google.android.exoplayer2.p346ui.PlayerControlView;
import com.google.android.exoplayer2.p346ui.spherical.AbstractC11518d;
import com.google.android.exoplayer2.p346ui.spherical.SphericalGLSurfaceView;
import com.google.android.exoplayer2.source.TrackGroupArray;
import com.google.android.exoplayer2.source.ads.AbstractC11280b;
import com.google.android.exoplayer2.text.AbstractC11420j;
import com.google.android.exoplayer2.text.C11356b;
import com.google.android.exoplayer2.trackselection.C11443g;
import com.google.android.exoplayer2.util.AbstractC11609i;
import com.google.android.exoplayer2.util.C11593a;
import com.google.android.exoplayer2.util.C11599af;
import com.google.android.exoplayer2.video.AbstractC11662k;
import com.google.android.exoplayer2.video.VideoDecoderGLSurfaceView;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import java.util.List;
import org.checkerframework.checker.nullness.qual.EnsuresNonNullIf;
import org.checkerframework.checker.nullness.qual.RequiresNonNull;
/* renamed from: com.google.android.exoplayer2.ui.PlayerView */
/* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/ui/PlayerView.class */
public class PlayerView extends FrameLayout implements AbstractC11280b.AbstractC11281a {

    /* renamed from: A */
    private boolean f37963A;

    /* renamed from: a */
    public final FrameLayout f37964a;

    /* renamed from: b */
    private final View$OnLayoutChangeListenerC11455a f37965b;

    /* renamed from: c */
    private final AspectRatioFrameLayout f37966c;

    /* renamed from: d */
    private final View f37967d;

    /* renamed from: e */
    private final View f37968e;

    /* renamed from: f */
    private final ImageView f37969f;

    /* renamed from: g */
    private final SubtitleView f37970g;

    /* renamed from: h */
    private final View f37971h;

    /* renamed from: i */
    private final TextView f37972i;

    /* renamed from: j */
    private final PlayerControlView f37973j;

    /* renamed from: k */
    private final FrameLayout f37974k;

    /* renamed from: l */
    private AbstractC10842ac f37975l;

    /* renamed from: m */
    private boolean f37976m;

    /* renamed from: n */
    private PlayerControlView.AbstractC11454c f37977n;

    /* renamed from: o */
    private boolean f37978o;

    /* renamed from: p */
    private Drawable f37979p;

    /* renamed from: q */
    private int f37980q;

    /* renamed from: r */
    private boolean f37981r;

    /* renamed from: s */
    private boolean f37982s;

    /* renamed from: t */
    private AbstractC11609i<? super ExoPlaybackException> f37983t;

    /* renamed from: u */
    private CharSequence f37984u;

    /* renamed from: v */
    private int f37985v;

    /* renamed from: w */
    private boolean f37986w;

    /* renamed from: x */
    private boolean f37987x;

    /* renamed from: y */
    private boolean f37988y;

    /* renamed from: z */
    private int f37989z;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.google.android.exoplayer2.ui.PlayerView$a */
    /* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/ui/PlayerView$a.class */
    public final class View$OnLayoutChangeListenerC11455a implements View.OnLayoutChangeListener, AbstractC10842ac.AbstractC10843a, AbstractC11420j, PlayerControlView.AbstractC11454c, AbstractC11518d, AbstractC11662k {

        /* renamed from: b */
        private final AbstractC10864al.C10866a f37991b = new AbstractC10864al.C10866a();

        /* renamed from: c */
        private Object f37992c;

        public View$OnLayoutChangeListenerC11455a() {
            PlayerView.this = r5;
        }

        @Override // com.google.android.exoplayer2.p346ui.PlayerControlView.AbstractC11454c
        /* renamed from: a */
        public final void mo20437a() {
            PlayerView.this.m20442k();
        }

        /* JADX WARN: Code restructure failed: missing block: B:13:0x003a, code lost:
            if (r7 == 270) goto L14;
         */
        @Override // com.google.android.exoplayer2.video.AbstractC11662k
        /* renamed from: a */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final void mo19669a(int r5, int r6, int r7, float r8) {
            /*
                r4 = this;
                r0 = r6
                if (r0 == 0) goto L18
                r0 = r5
                if (r0 != 0) goto Lb
                goto L18
            Lb:
                r0 = r5
                float r0 = (float) r0
                r1 = r8
                float r0 = r0 * r1
                r1 = r6
                float r1 = (float) r1
                float r0 = r0 / r1
                r8 = r0
                goto L1b
            L18:
                r0 = 1065353216(0x3f800000, float:1.0)
                r8 = r0
            L1b:
                r0 = r8
                r9 = r0
                r0 = r4
                com.google.android.exoplayer2.ui.PlayerView r0 = com.google.android.exoplayer2.p346ui.PlayerView.this
                android.view.View r0 = com.google.android.exoplayer2.p346ui.PlayerView.m20461b(r0)
                boolean r0 = r0 instanceof android.view.TextureView
                if (r0 == 0) goto L8a
                r0 = r7
                r1 = 90
                if (r0 == r1) goto L3d
                r0 = r8
                r9 = r0
                r0 = r7
                r1 = 270(0x10e, float:3.78E-43)
                if (r0 != r1) goto L43
            L3d:
                r0 = 1065353216(0x3f800000, float:1.0)
                r1 = r8
                float r0 = r0 / r1
                r9 = r0
            L43:
                r0 = r4
                com.google.android.exoplayer2.ui.PlayerView r0 = com.google.android.exoplayer2.p346ui.PlayerView.this
                int r0 = com.google.android.exoplayer2.p346ui.PlayerView.m20458c(r0)
                if (r0 == 0) goto L58
                r0 = r4
                com.google.android.exoplayer2.ui.PlayerView r0 = com.google.android.exoplayer2.p346ui.PlayerView.this
                android.view.View r0 = com.google.android.exoplayer2.p346ui.PlayerView.m20461b(r0)
                r1 = r4
                r0.removeOnLayoutChangeListener(r1)
            L58:
                r0 = r4
                com.google.android.exoplayer2.ui.PlayerView r0 = com.google.android.exoplayer2.p346ui.PlayerView.this
                r1 = r7
                int r0 = com.google.android.exoplayer2.p346ui.PlayerView.m20464a(r0, r1)
                r0 = r4
                com.google.android.exoplayer2.ui.PlayerView r0 = com.google.android.exoplayer2.p346ui.PlayerView.this
                int r0 = com.google.android.exoplayer2.p346ui.PlayerView.m20458c(r0)
                if (r0 == 0) goto L76
                r0 = r4
                com.google.android.exoplayer2.ui.PlayerView r0 = com.google.android.exoplayer2.p346ui.PlayerView.this
                android.view.View r0 = com.google.android.exoplayer2.p346ui.PlayerView.m20461b(r0)
                r1 = r4
                r0.addOnLayoutChangeListener(r1)
            L76:
                r0 = r4
                com.google.android.exoplayer2.ui.PlayerView r0 = com.google.android.exoplayer2.p346ui.PlayerView.this
                android.view.View r0 = com.google.android.exoplayer2.p346ui.PlayerView.m20461b(r0)
                android.view.TextureView r0 = (android.view.TextureView) r0
                r1 = r4
                com.google.android.exoplayer2.ui.PlayerView r1 = com.google.android.exoplayer2.p346ui.PlayerView.this
                int r1 = com.google.android.exoplayer2.p346ui.PlayerView.m20458c(r1)
                com.google.android.exoplayer2.p346ui.PlayerView.m20467a(r0, r1)
            L8a:
                r0 = r9
                r1 = r4
                com.google.android.exoplayer2.ui.PlayerView r1 = com.google.android.exoplayer2.p346ui.PlayerView.this
                com.google.android.exoplayer2.ui.AspectRatioFrameLayout r1 = com.google.android.exoplayer2.p346ui.PlayerView.m20455d(r1)
                r2 = r4
                com.google.android.exoplayer2.ui.PlayerView r2 = com.google.android.exoplayer2.p346ui.PlayerView.this
                android.view.View r2 = com.google.android.exoplayer2.p346ui.PlayerView.m20461b(r2)
                com.google.android.exoplayer2.p346ui.PlayerView.m20469a(r0, r1, r2)
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.p346ui.PlayerView.View$OnLayoutChangeListenerC11455a.mo19669a(int, int, int, float):void");
        }

        @Override // com.google.android.exoplayer2.AbstractC10842ac.AbstractC10843a
        /* renamed from: a */
        public /* synthetic */ void mo20311a(ExoPlaybackException exoPlaybackException) {
            AbstractC10842ac.AbstractC10843a._CC.$default$a(this, exoPlaybackException);
        }

        @Override // com.google.android.exoplayer2.AbstractC10842ac.AbstractC10843a
        /* renamed from: a */
        public /* synthetic */ void mo20310a(MediaItem mediaItem, int i) {
            AbstractC10842ac.AbstractC10843a._CC.$default$a(this, mediaItem, i);
        }

        @Override // com.google.android.exoplayer2.AbstractC10842ac.AbstractC10843a
        /* renamed from: a */
        public /* synthetic */ void mo20309a(C10840aa c10840aa) {
            AbstractC10842ac.AbstractC10843a._CC.$default$a(this, c10840aa);
        }

        @Override // com.google.android.exoplayer2.AbstractC10842ac.AbstractC10843a
        /* renamed from: a */
        public /* synthetic */ void mo20308a(AbstractC10842ac.C10844b c10844b) {
            AbstractC10842ac.AbstractC10843a._CC.$default$a(this, c10844b);
        }

        @Override // com.google.android.exoplayer2.AbstractC10842ac.AbstractC10843a
        /* renamed from: a */
        public /* synthetic */ void mo20307a(AbstractC10864al abstractC10864al, int i) {
            AbstractC10842ac.AbstractC10843a._CC.$default$a(this, abstractC10864al, i);
        }

        @Override // com.google.android.exoplayer2.AbstractC10842ac.AbstractC10843a
        /* renamed from: a */
        public final void mo20306a(TrackGroupArray trackGroupArray, C11443g c11443g) {
            AbstractC10842ac abstractC10842ac = (AbstractC10842ac) C11593a.m20020b(PlayerView.this.f37975l);
            AbstractC10864al mo21176K = abstractC10842ac.mo21176K();
            if (!mo21176K.m22178c()) {
                if (!abstractC10842ac.mo21179H().isEmpty()) {
                    this.f37992c = mo21176K.mo20947a(abstractC10842ac.mo21112x(), this.f37991b, true).f34999b;
                } else {
                    Object obj = this.f37992c;
                    if (obj != null) {
                        int mo20945c = mo21176K.mo20945c(obj);
                        if (mo20945c != -1) {
                            if (abstractC10842ac.mo21111y() == mo21176K.mo20947a(mo20945c, this.f37991b, false).f35000c) {
                                return;
                            }
                        }
                    }
                }
                PlayerView.this.m20457c(false);
            }
            this.f37992c = null;
            PlayerView.this.m20457c(false);
        }

        @Override // com.google.android.exoplayer2.text.AbstractC11420j
        /* renamed from: a */
        public final void mo20289a(List<C11356b> list) {
            if (PlayerView.this.f37970g != null) {
                PlayerView.this.f37970g.setCues(list);
            }
        }

        @Override // com.google.android.exoplayer2.AbstractC10842ac.AbstractC10843a
        /* renamed from: a */
        public /* synthetic */ void mo20305a(boolean z) {
            AbstractC10842ac.AbstractC10843a._CC.$default$a(this, z);
        }

        @Override // com.google.android.exoplayer2.video.AbstractC11662k
        /* renamed from: b */
        public final void mo19668b() {
            if (PlayerView.this.f37967d != null) {
                PlayerView.this.f37967d.setVisibility(4);
            }
        }

        @Override // com.google.android.exoplayer2.AbstractC10842ac.AbstractC10843a
        /* renamed from: b */
        public final void mo20304b(int i) {
            PlayerView.this.m20446i();
            PlayerView.this.m20444j();
            PlayerView.m20443j(PlayerView.this);
        }

        @Override // com.google.android.exoplayer2.AbstractC10842ac.AbstractC10843a
        /* renamed from: b */
        public /* synthetic */ void mo20303b(boolean z) {
            AbstractC10842ac.AbstractC10843a._CC.$default$b(this, z);
        }

        @Override // com.google.android.exoplayer2.AbstractC10842ac.AbstractC10843a
        /* renamed from: b */
        public /* synthetic */ void mo20302b(boolean z, int i) {
            AbstractC10842ac.AbstractC10843a._CC.$default$b(this, z, i);
        }

        @Override // com.google.android.exoplayer2.AbstractC10842ac.AbstractC10843a
        /* renamed from: c */
        public /* synthetic */ void mo20301c(List list) {
            AbstractC10842ac.AbstractC10843a._CC.$default$c(this, list);
        }

        @Override // com.google.android.exoplayer2.AbstractC10842ac.AbstractC10843a
        /* renamed from: c */
        public /* synthetic */ void mo20300c(boolean z) {
            AbstractC10842ac.AbstractC10843a._CC.$default$c(this, z);
        }

        @Override // com.google.android.exoplayer2.AbstractC10842ac.AbstractC10843a
        /* renamed from: c */
        public final void mo20299c(boolean z, int i) {
            PlayerView.this.m20446i();
            PlayerView.m20443j(PlayerView.this);
        }

        @Override // com.google.android.exoplayer2.AbstractC10842ac.AbstractC10843a
        /* renamed from: d */
        public /* synthetic */ void mo20298d(int i) {
            AbstractC10842ac.AbstractC10843a._CC.$default$d(this, i);
        }

        @Override // com.google.android.exoplayer2.p346ui.spherical.AbstractC11518d
        /* renamed from: d */
        public final boolean mo20216d() {
            return PlayerView.this.m20456d();
        }

        @Override // com.google.android.exoplayer2.AbstractC10842ac.AbstractC10843a
        /* renamed from: e */
        public /* synthetic */ void mo20297e(int i) {
            AbstractC10842ac.AbstractC10843a._CC.$default$e(this, i);
        }

        @Override // com.google.android.exoplayer2.AbstractC10842ac.AbstractC10843a
        /* renamed from: f */
        public final void mo20296f(int i) {
            if (!PlayerView.this.m20452f() || !PlayerView.this.f37987x) {
                return;
            }
            PlayerView.this.m20470a();
        }

        @Override // android.view.View.OnLayoutChangeListener
        public final void onLayoutChange(View view, int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8) {
            PlayerView.m20467a((TextureView) view, PlayerView.this.f37989z);
        }

        @Override // com.google.android.exoplayer2.AbstractC10842ac.AbstractC10843a
        /* renamed from: p_ */
        public /* synthetic */ void mo20295p_() {
            AbstractC10842ac.AbstractC10843a._CC.$default$p_(this);
        }

        @Override // com.google.android.exoplayer2.AbstractC10842ac.AbstractC10843a
        /* renamed from: q_ */
        public /* synthetic */ void mo20294q_() {
            AbstractC10842ac.AbstractC10843a._CC.$default$q_(this);
        }
    }

    public PlayerView(Context context) {
        this(context, null);
    }

    public PlayerView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public PlayerView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        boolean z;
        int i2;
        boolean z2;
        boolean z3;
        int i3;
        int i4;
        boolean z4;
        int i5;
        boolean z5;
        int i6;
        boolean z6;
        int i7;
        View$OnLayoutChangeListenerC11455a view$OnLayoutChangeListenerC11455a = new View$OnLayoutChangeListenerC11455a();
        this.f37965b = view$OnLayoutChangeListenerC11455a;
        if (isInEditMode()) {
            this.f37966c = null;
            this.f37967d = null;
            this.f37968e = null;
            this.f37969f = null;
            this.f37970g = null;
            this.f37971h = null;
            this.f37972i = null;
            this.f37973j = null;
            this.f37974k = null;
            this.f37964a = null;
            ImageView imageView = new ImageView(context);
            if (C11599af.f38648a >= 23) {
                Resources resources = getResources();
                imageView.setImageDrawable(resources.getDrawable(C11479c.C11483d.exo_edit_mode_logo, null));
                imageView.setBackgroundColor(resources.getColor(C11479c.C11481b.exo_edit_mode_background_color, null));
            } else {
                Resources resources2 = getResources();
                imageView.setImageDrawable(resources2.getDrawable(C11479c.C11483d.exo_edit_mode_logo));
                imageView.setBackgroundColor(resources2.getColor(C11479c.C11481b.exo_edit_mode_background_color));
            }
            addView(imageView);
            return;
        }
        int i8 = C11479c.C11487h.exo_player_view;
        this.f37982s = true;
        if (attributeSet != null) {
            TypedArray obtainStyledAttributes = context.getTheme().obtainStyledAttributes(attributeSet, C11479c.C11491l.PlayerView, 0, 0);
            try {
                z6 = obtainStyledAttributes.hasValue(C11479c.C11491l.PlayerView_shutter_background_color);
                i6 = obtainStyledAttributes.getColor(C11479c.C11491l.PlayerView_shutter_background_color, 0);
                i8 = obtainStyledAttributes.getResourceId(C11479c.C11491l.PlayerView_player_layout_id, i8);
                z5 = obtainStyledAttributes.getBoolean(C11479c.C11491l.PlayerView_use_artwork, true);
                i5 = obtainStyledAttributes.getResourceId(C11479c.C11491l.PlayerView_default_artwork, 0);
                z4 = obtainStyledAttributes.getBoolean(C11479c.C11491l.PlayerView_use_controller, true);
                i4 = obtainStyledAttributes.getInt(C11479c.C11491l.PlayerView_surface_type, 1);
                i3 = obtainStyledAttributes.getInt(C11479c.C11491l.PlayerView_resize_mode, 0);
                i7 = obtainStyledAttributes.getInt(C11479c.C11491l.PlayerView_show_timeout, 5000);
                z3 = obtainStyledAttributes.getBoolean(C11479c.C11491l.PlayerView_hide_on_touch, true);
                z2 = obtainStyledAttributes.getBoolean(C11479c.C11491l.PlayerView_auto_show, true);
                i2 = obtainStyledAttributes.getInteger(C11479c.C11491l.PlayerView_show_buffering, 0);
                this.f37981r = obtainStyledAttributes.getBoolean(C11479c.C11491l.PlayerView_keep_content_on_player_reset, this.f37981r);
                z = obtainStyledAttributes.getBoolean(C11479c.C11491l.PlayerView_hide_during_ads, true);
                this.f37982s = obtainStyledAttributes.getBoolean(C11479c.C11491l.PlayerView_use_sensor_rotation, this.f37982s);
            } finally {
                obtainStyledAttributes.recycle();
            }
        } else {
            z2 = true;
            i2 = 0;
            z = true;
            i3 = 0;
            i4 = 1;
            z3 = true;
            z6 = false;
            i6 = 0;
            z5 = true;
            i5 = 0;
            i7 = 5000;
            z4 = true;
        }
        LayoutInflater.from(context).inflate(i8, this);
        setDescendantFocusability(262144);
        AspectRatioFrameLayout aspectRatioFrameLayout = (AspectRatioFrameLayout) findViewById(C11479c.C11485f.exo_content_frame);
        this.f37966c = aspectRatioFrameLayout;
        if (aspectRatioFrameLayout != null) {
            aspectRatioFrameLayout.setResizeMode(i3);
        }
        View findViewById = findViewById(C11479c.C11485f.exo_shutter);
        this.f37967d = findViewById;
        if (findViewById != null && z6) {
            findViewById.setBackgroundColor(i6);
        }
        if (aspectRatioFrameLayout == null || i4 == 0) {
            this.f37968e = null;
        } else {
            ViewGroup.LayoutParams layoutParams = new ViewGroup.LayoutParams(-1, -1);
            if (i4 == 2) {
                this.f37968e = new TextureView(context);
            } else if (i4 == 3) {
                SphericalGLSurfaceView sphericalGLSurfaceView = new SphericalGLSurfaceView(context);
                sphericalGLSurfaceView.setSingleTapListener(view$OnLayoutChangeListenerC11455a);
                sphericalGLSurfaceView.setUseSensorRotation(this.f37982s);
                this.f37968e = sphericalGLSurfaceView;
            } else if (i4 != 4) {
                this.f37968e = new SurfaceView(context);
            } else {
                this.f37968e = new VideoDecoderGLSurfaceView(context);
            }
            this.f37968e.setLayoutParams(layoutParams);
            aspectRatioFrameLayout.addView(this.f37968e, 0);
        }
        this.f37974k = (FrameLayout) findViewById(C11479c.C11485f.exo_ad_overlay);
        this.f37964a = (FrameLayout) findViewById(C11479c.C11485f.exo_overlay);
        ImageView imageView2 = (ImageView) findViewById(C11479c.C11485f.exo_artwork);
        this.f37969f = imageView2;
        this.f37978o = z5 && imageView2 != null;
        if (i5 != 0) {
            this.f37979p = C0790b.m44502a(getContext(), i5);
        }
        SubtitleView subtitleView = (SubtitleView) findViewById(C11479c.C11485f.exo_subtitles);
        this.f37970g = subtitleView;
        if (subtitleView != null) {
            subtitleView.setUserDefaultStyle();
            subtitleView.setUserDefaultTextSize();
        }
        View findViewById2 = findViewById(C11479c.C11485f.exo_buffering);
        this.f37971h = findViewById2;
        if (findViewById2 != null) {
            findViewById2.setVisibility(8);
        }
        this.f37980q = i2;
        TextView textView = (TextView) findViewById(C11479c.C11485f.exo_error_message);
        this.f37972i = textView;
        if (textView != null) {
            textView.setVisibility(8);
        }
        PlayerControlView playerControlView = (PlayerControlView) findViewById(C11479c.C11485f.exo_controller);
        View findViewById3 = findViewById(C11479c.C11485f.exo_controller_placeholder);
        if (playerControlView != null) {
            this.f37973j = playerControlView;
        } else if (findViewById3 != null) {
            PlayerControlView playerControlView2 = new PlayerControlView(context, null, 0, attributeSet);
            this.f37973j = playerControlView2;
            playerControlView2.setId(C11479c.C11485f.exo_controller);
            playerControlView2.setLayoutParams(findViewById3.getLayoutParams());
            ViewGroup viewGroup = (ViewGroup) findViewById3.getParent();
            int indexOfChild = viewGroup.indexOfChild(findViewById3);
            viewGroup.removeView(findViewById3);
            viewGroup.addView(playerControlView2, indexOfChild);
        } else {
            this.f37973j = null;
        }
        PlayerControlView playerControlView3 = this.f37973j;
        this.f37985v = playerControlView3 == null ? 0 : i7;
        this.f37988y = z3;
        this.f37986w = z2;
        this.f37987x = z;
        this.f37976m = z4 && playerControlView3 != null;
        m20470a();
        m20442k();
        PlayerControlView playerControlView4 = this.f37973j;
        if (playerControlView4 == null) {
            return;
        }
        playerControlView4.m20510a(view$OnLayoutChangeListenerC11455a);
    }

    /* renamed from: a */
    protected static void m20469a(float f, AspectRatioFrameLayout aspectRatioFrameLayout, View view) {
        if (aspectRatioFrameLayout != null) {
            if (view instanceof SphericalGLSurfaceView) {
                f = 0.0f;
            }
            aspectRatioFrameLayout.setAspectRatio(f);
        }
    }

    /* renamed from: a */
    static /* synthetic */ void m20467a(TextureView textureView, int i) {
        Matrix matrix = new Matrix();
        float width = textureView.getWidth();
        float height = textureView.getHeight();
        if (width != BitmapDescriptorFactory.HUE_RED && height != BitmapDescriptorFactory.HUE_RED && i != 0) {
            float f = width / 2.0f;
            float f2 = height / 2.0f;
            matrix.postRotate(i, f, f2);
            RectF rectF = new RectF(BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, width, height);
            RectF rectF2 = new RectF();
            matrix.mapRect(rectF2, rectF);
            matrix.postScale(width / rectF2.width(), height / rectF2.height(), f, f2);
        }
        textureView.setTransform(matrix);
    }

    /* renamed from: a */
    private void m20463a(boolean z) {
        if ((!m20452f() || !this.f37987x) && m20462b()) {
            boolean z2 = this.f37973j.m20500c() && this.f37973j.f37937b <= 0;
            boolean m20454e = m20454e();
            if (!z && !z2 && !m20454e) {
                return;
            }
            m20460b(m20454e);
        }
    }

    @RequiresNonNull({"artworkView"})
    /* renamed from: a */
    private boolean m20468a(Drawable drawable) {
        if (drawable != null) {
            int intrinsicWidth = drawable.getIntrinsicWidth();
            int intrinsicHeight = drawable.getIntrinsicHeight();
            if (intrinsicWidth <= 0 || intrinsicHeight <= 0) {
                return false;
            }
            m20469a(intrinsicWidth / intrinsicHeight, this.f37966c, this.f37969f);
            this.f37969f.setImageDrawable(drawable);
            this.f37969f.setVisibility(0);
            return true;
        }
        return false;
    }

    @RequiresNonNull({"artworkView"})
    /* renamed from: a */
    private boolean m20466a(Metadata metadata) {
        boolean z;
        int i;
        boolean z2;
        int i2;
        byte[] bArr;
        int i3 = 0;
        int i4 = -1;
        boolean z3 = false;
        while (true) {
            boolean z4 = z3;
            z = z4;
            if (i3 >= metadata.length()) {
                break;
            }
            Metadata.Entry entry = metadata.get(i3);
            if (entry instanceof ApicFrame) {
                ApicFrame apicFrame = (ApicFrame) entry;
                bArr = apicFrame.pictureData;
                i2 = apicFrame.pictureType;
            } else {
                i = i4;
                z2 = z4;
                if (entry instanceof PictureFrame) {
                    PictureFrame pictureFrame = (PictureFrame) entry;
                    bArr = pictureFrame.pictureData;
                    i2 = pictureFrame.pictureType;
                } else {
                    continue;
                    i3++;
                    i4 = i;
                    z3 = z2;
                }
            }
            if (i4 != -1) {
                i = i4;
                z2 = z4;
                if (i2 != 3) {
                    continue;
                    i3++;
                    i4 = i;
                    z3 = z2;
                }
            }
            boolean m20468a = m20468a(new BitmapDrawable(getResources(), BitmapFactory.decodeByteArray(bArr, 0, bArr.length)));
            z = m20468a;
            if (i2 == 3) {
                break;
            }
            z2 = m20468a;
            i = i2;
            i3++;
            i4 = i;
            z3 = z2;
        }
        return z;
    }

    /* renamed from: b */
    private void m20460b(boolean z) {
        if (!m20462b()) {
            return;
        }
        this.f37973j.setShowTimeoutMs(z ? 0 : this.f37985v);
        this.f37973j.m20516a();
    }

    @EnsuresNonNullIf(expression = {"controller"}, result = true)
    /* renamed from: b */
    private boolean m20462b() {
        if (this.f37976m) {
            C11593a.m20024a(this.f37973j);
            return true;
        }
        return false;
    }

    /* renamed from: c */
    public void m20457c(boolean z) {
        AbstractC10842ac abstractC10842ac = this.f37975l;
        if (abstractC10842ac == null || abstractC10842ac.mo21179H().isEmpty()) {
            if (this.f37981r) {
                return;
            }
            m20450g();
            m20448h();
            return;
        }
        if (z && !this.f37981r) {
            m20448h();
        }
        C11443g mo21178I = abstractC10842ac.mo21178I();
        for (int i = 0; i < mo21178I.f37828a; i++) {
            if (abstractC10842ac.mo21146b(i) == 2 && mo21178I.f37829b[i] != null) {
                m20450g();
                return;
            }
        }
        m20448h();
        if (m20459c()) {
            for (Metadata metadata : abstractC10842ac.mo21177J()) {
                if (m20466a(metadata)) {
                    return;
                }
            }
            if (m20468a(this.f37979p)) {
                return;
            }
        }
        m20450g();
    }

    @EnsuresNonNullIf(expression = {"artworkView"}, result = true)
    /* renamed from: c */
    private boolean m20459c() {
        if (this.f37978o) {
            C11593a.m20024a(this.f37969f);
            return true;
        }
        return false;
    }

    /* renamed from: d */
    public boolean m20456d() {
        if (!m20462b() || this.f37975l == null) {
            return false;
        }
        if (!this.f37973j.m20500c()) {
            m20463a(true);
            return true;
        } else if (!this.f37988y) {
            return true;
        } else {
            this.f37973j.m20504b();
            return true;
        }
    }

    /* renamed from: e */
    private boolean m20454e() {
        AbstractC10842ac abstractC10842ac = this.f37975l;
        if (abstractC10842ac == null) {
            return true;
        }
        int mo21122n = abstractC10842ac.mo21122n();
        if (!this.f37986w) {
            return false;
        }
        return mo21122n == 1 || mo21122n == 4 || !this.f37975l.mo21118r();
    }

    /* renamed from: f */
    public boolean m20452f() {
        AbstractC10842ac abstractC10842ac = this.f37975l;
        return abstractC10842ac != null && abstractC10842ac.mo21184C() && this.f37975l.mo21118r();
    }

    /* renamed from: g */
    private void m20450g() {
        ImageView imageView = this.f37969f;
        if (imageView != null) {
            imageView.setImageResource(17170445);
            this.f37969f.setVisibility(4);
        }
    }

    /* renamed from: h */
    private void m20448h() {
        View view = this.f37967d;
        if (view != null) {
            view.setVisibility(0);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:18:0x0052  */
    /* JADX WARN: Removed duplicated region for block: B:19:0x0058  */
    /* renamed from: i */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void m20446i() {
        /*
            r3 = this;
            r0 = r3
            android.view.View r0 = r0.f37971h
            if (r0 == 0) goto L62
            r0 = r3
            com.google.android.exoplayer2.ac r0 = r0.f37975l
            r4 = r0
            r0 = 1
            r5 = r0
            r0 = 0
            r6 = r0
            r0 = r4
            if (r0 == 0) goto L45
            r0 = r4
            int r0 = r0.mo21122n()
            r1 = 2
            if (r0 != r1) goto L45
            r0 = r3
            int r0 = r0.f37980q
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
            com.google.android.exoplayer2.ac r0 = r0.f37975l
            boolean r0 = r0.mo21118r()
            if (r0 == 0) goto L45
            r0 = r5
            r8 = r0
            goto L48
        L45:
            r0 = 0
            r8 = r0
        L48:
            r0 = r3
            android.view.View r0 = r0.f37971h
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
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.p346ui.PlayerView.m20446i():void");
    }

    /* renamed from: j */
    public void m20444j() {
        AbstractC11609i<? super ExoPlaybackException> abstractC11609i;
        TextView textView = this.f37972i;
        if (textView != null) {
            CharSequence charSequence = this.f37984u;
            if (charSequence != null) {
                textView.setText(charSequence);
                this.f37972i.setVisibility(0);
                return;
            }
            AbstractC10842ac abstractC10842ac = this.f37975l;
            ExoPlaybackException mo21120p = abstractC10842ac != null ? abstractC10842ac.mo21120p() : null;
            if (mo21120p == null || (abstractC11609i = this.f37983t) == null) {
                this.f37972i.setVisibility(8);
                return;
            }
            this.f37972i.setText((CharSequence) abstractC11609i.mo19893a(mo21120p).second);
            this.f37972i.setVisibility(0);
        }
    }

    /* renamed from: j */
    static /* synthetic */ void m20443j(PlayerView playerView) {
        if (!playerView.m20452f() || !playerView.f37987x) {
            playerView.m20463a(false);
        } else {
            playerView.m20470a();
        }
    }

    /* renamed from: k */
    public void m20442k() {
        PlayerControlView playerControlView = this.f37973j;
        String str = null;
        if (playerControlView == null || !this.f37976m) {
            setContentDescription(null);
        } else if (playerControlView.getVisibility() != 0) {
            setContentDescription(getResources().getString(C11479c.C11489j.exo_controls_show));
        } else {
            if (this.f37988y) {
                str = getResources().getString(C11479c.C11489j.exo_controls_hide);
            }
            setContentDescription(str);
        }
    }

    /* renamed from: a */
    public final void m20470a() {
        PlayerControlView playerControlView = this.f37973j;
        if (playerControlView != null) {
            playerControlView.m20504b();
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public boolean dispatchKeyEvent(KeyEvent keyEvent) {
        boolean z;
        AbstractC10842ac abstractC10842ac = this.f37975l;
        if (abstractC10842ac == null || !abstractC10842ac.mo21184C()) {
            int keyCode = keyEvent.getKeyCode();
            boolean z2 = keyCode == 19 || keyCode == 270 || keyCode == 22 || keyCode == 271 || keyCode == 20 || keyCode == 269 || keyCode == 21 || keyCode == 268 || keyCode == 23;
            if (!z2 || !m20462b() || this.f37973j.m20500c()) {
                if (!(m20462b() && this.f37973j.m20514a(keyEvent)) && !super.dispatchKeyEvent(keyEvent)) {
                    z = false;
                    if (z2) {
                        z = false;
                        if (m20462b()) {
                            m20463a(true);
                            z = false;
                        }
                    }
                    return z;
                }
                m20463a(true);
            } else {
                m20463a(true);
            }
            z = true;
            return z;
        }
        return super.dispatchKeyEvent(keyEvent);
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        if (!m20462b() || this.f37975l == null) {
            return false;
        }
        int action = motionEvent.getAction();
        if (action == 0) {
            this.f37963A = true;
            return true;
        } else if (action != 1 || !this.f37963A) {
            return false;
        } else {
            this.f37963A = false;
            performClick();
            return true;
        }
    }

    @Override // android.view.View
    public boolean onTrackballEvent(MotionEvent motionEvent) {
        if (!m20462b() || this.f37975l == null) {
            return false;
        }
        m20463a(true);
        return true;
    }

    @Override // android.view.View
    public boolean performClick() {
        super.performClick();
        return m20456d();
    }

    public void setAspectRatioListener(AspectRatioFrameLayout.AbstractC11449a abstractC11449a) {
        C11593a.m20024a(this.f37966c);
        this.f37966c.setAspectRatioListener(abstractC11449a);
    }

    public void setControlDispatcher(AbstractC11159g abstractC11159g) {
        C11593a.m20024a(this.f37973j);
        this.f37973j.setControlDispatcher(abstractC11159g);
    }

    public void setControllerAutoShow(boolean z) {
        this.f37986w = z;
    }

    public void setControllerHideDuringAds(boolean z) {
        this.f37987x = z;
    }

    public void setControllerHideOnTouch(boolean z) {
        C11593a.m20024a(this.f37973j);
        this.f37988y = z;
        m20442k();
    }

    public void setControllerShowTimeoutMs(int i) {
        C11593a.m20024a(this.f37973j);
        this.f37985v = i;
        if (this.f37973j.m20500c()) {
            m20460b(m20454e());
        }
    }

    public void setControllerVisibilityListener(PlayerControlView.AbstractC11454c abstractC11454c) {
        C11593a.m20024a(this.f37973j);
        PlayerControlView.AbstractC11454c abstractC11454c2 = this.f37977n;
        if (abstractC11454c2 == abstractC11454c) {
            return;
        }
        if (abstractC11454c2 != null) {
            this.f37973j.f37931a.remove(abstractC11454c2);
        }
        this.f37977n = abstractC11454c;
        if (abstractC11454c == null) {
            return;
        }
        this.f37973j.m20510a(abstractC11454c);
    }

    public void setCustomErrorMessage(CharSequence charSequence) {
        C11593a.m20019b(this.f37972i != null);
        this.f37984u = charSequence;
        m20444j();
    }

    public void setDefaultArtwork(Drawable drawable) {
        if (this.f37979p != drawable) {
            this.f37979p = drawable;
            m20457c(false);
        }
    }

    public void setErrorMessageProvider(AbstractC11609i<? super ExoPlaybackException> abstractC11609i) {
        if (this.f37983t != abstractC11609i) {
            this.f37983t = abstractC11609i;
            m20444j();
        }
    }

    public void setExtraAdGroupMarkers(long[] jArr, boolean[] zArr) {
        C11593a.m20024a(this.f37973j);
        this.f37973j.setExtraAdGroupMarkers(jArr, zArr);
    }

    @Deprecated
    public void setFastForwardIncrementMs(int i) {
        C11593a.m20024a(this.f37973j);
        this.f37973j.setFastForwardIncrementMs(i);
    }

    public void setKeepContentOnPlayerReset(boolean z) {
        if (this.f37981r != z) {
            this.f37981r = z;
            m20457c(false);
        }
    }

    @Deprecated
    public void setPlaybackPreparer(AbstractC10841ab abstractC10841ab) {
        C11593a.m20024a(this.f37973j);
        this.f37973j.setPlaybackPreparer(abstractC10841ab);
    }

    public void setPlayer(AbstractC10842ac abstractC10842ac) {
        C11593a.m20019b(Looper.myLooper() == Looper.getMainLooper());
        C11593a.m20022a(abstractC10842ac == null || abstractC10842ac.mo21123m() == Looper.getMainLooper());
        AbstractC10842ac abstractC10842ac2 = this.f37975l;
        if (abstractC10842ac2 == abstractC10842ac) {
            return;
        }
        if (abstractC10842ac2 != null) {
            abstractC10842ac2.mo21144b(this.f37965b);
            AbstractC10842ac.AbstractC10846d mo21125k = abstractC10842ac2.mo21125k();
            if (mo21125k != null) {
                mo21125k.mo22194b(this.f37965b);
                View view = this.f37968e;
                if (view instanceof TextureView) {
                    mo21125k.mo22199b((TextureView) view);
                } else if (view instanceof SphericalGLSurfaceView) {
                    ((SphericalGLSurfaceView) view).setVideoComponent(null);
                } else if (view instanceof SurfaceView) {
                    mo21125k.mo22200b((SurfaceView) view);
                }
            }
            AbstractC10842ac.AbstractC10845c mo21124l = abstractC10842ac2.mo21124l();
            if (mo21124l != null) {
                mo21124l.mo22197b(this.f37965b);
            }
        }
        SubtitleView subtitleView = this.f37970g;
        if (subtitleView != null) {
            subtitleView.setCues(null);
        }
        this.f37975l = abstractC10842ac;
        if (m20462b()) {
            this.f37973j.setPlayer(abstractC10842ac);
        }
        m20446i();
        m20444j();
        m20457c(true);
        if (abstractC10842ac == null) {
            m20470a();
            return;
        }
        AbstractC10842ac.AbstractC10846d mo21125k2 = abstractC10842ac.mo21125k();
        if (mo21125k2 != null) {
            View view2 = this.f37968e;
            if (view2 instanceof TextureView) {
                mo21125k2.mo22213a((TextureView) view2);
            } else if (view2 instanceof SphericalGLSurfaceView) {
                ((SphericalGLSurfaceView) view2).setVideoComponent(mo21125k2);
            } else if (view2 instanceof SurfaceView) {
                mo21125k2.mo22214a((SurfaceView) view2);
            }
            mo21125k2.mo22204a(this.f37965b);
        }
        AbstractC10842ac.AbstractC10845c mo21124l2 = abstractC10842ac.mo21124l();
        if (mo21124l2 != null) {
            mo21124l2.mo22208a(this.f37965b);
            SubtitleView subtitleView2 = this.f37970g;
            if (subtitleView2 != null) {
                subtitleView2.setCues(mo21124l2.mo22220a());
            }
        }
        abstractC10842ac.mo21167a(this.f37965b);
        m20463a(false);
    }

    public void setRepeatToggleModes(int i) {
        C11593a.m20024a(this.f37973j);
        this.f37973j.setRepeatToggleModes(i);
    }

    public void setResizeMode(int i) {
        C11593a.m20024a(this.f37966c);
        this.f37966c.setResizeMode(i);
    }

    @Deprecated
    public void setRewindIncrementMs(int i) {
        C11593a.m20024a(this.f37973j);
        this.f37973j.setRewindIncrementMs(i);
    }

    public void setShowBuffering(int i) {
        if (this.f37980q != i) {
            this.f37980q = i;
            m20446i();
        }
    }

    public void setShowFastForwardButton(boolean z) {
        C11593a.m20024a(this.f37973j);
        this.f37973j.setShowFastForwardButton(z);
    }

    public void setShowMultiWindowTimeBar(boolean z) {
        C11593a.m20024a(this.f37973j);
        this.f37973j.setShowMultiWindowTimeBar(z);
    }

    public void setShowNextButton(boolean z) {
        C11593a.m20024a(this.f37973j);
        this.f37973j.setShowNextButton(z);
    }

    public void setShowPreviousButton(boolean z) {
        C11593a.m20024a(this.f37973j);
        this.f37973j.setShowPreviousButton(z);
    }

    public void setShowRewindButton(boolean z) {
        C11593a.m20024a(this.f37973j);
        this.f37973j.setShowRewindButton(z);
    }

    public void setShowShuffleButton(boolean z) {
        C11593a.m20024a(this.f37973j);
        this.f37973j.setShowShuffleButton(z);
    }

    public void setShutterBackgroundColor(int i) {
        View view = this.f37967d;
        if (view != null) {
            view.setBackgroundColor(i);
        }
    }

    public void setUseArtwork(boolean z) {
        C11593a.m20019b(!z || this.f37969f != null);
        if (this.f37978o != z) {
            this.f37978o = z;
            m20457c(false);
        }
    }

    public void setUseController(boolean z) {
        C11593a.m20019b(!z || this.f37973j != null);
        if (this.f37976m == z) {
            return;
        }
        this.f37976m = z;
        if (m20462b()) {
            this.f37973j.setPlayer(this.f37975l);
        } else {
            PlayerControlView playerControlView = this.f37973j;
            if (playerControlView != null) {
                playerControlView.m20504b();
                this.f37973j.setPlayer(null);
            }
        }
        m20442k();
    }

    public void setUseSensorRotation(boolean z) {
        if (this.f37982s != z) {
            this.f37982s = z;
            View view = this.f37968e;
            if (!(view instanceof SphericalGLSurfaceView)) {
                return;
            }
            ((SphericalGLSurfaceView) view).setUseSensorRotation(z);
        }
    }

    @Override // android.view.View
    public void setVisibility(int i) {
        super.setVisibility(i);
        View view = this.f37968e;
        if (view instanceof SurfaceView) {
            view.setVisibility(i);
        }
    }
}
