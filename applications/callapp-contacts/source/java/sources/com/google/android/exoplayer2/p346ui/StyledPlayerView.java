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
import com.google.android.exoplayer2.p346ui.StyledPlayerControlView;
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
/* renamed from: com.google.android.exoplayer2.ui.StyledPlayerView */
/* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/ui/StyledPlayerView.class */
public class StyledPlayerView extends FrameLayout implements AbstractC11280b.AbstractC11281a {

    /* renamed from: A */
    private boolean f38097A;

    /* renamed from: a */
    private final View$OnLayoutChangeListenerC11469a f38098a;

    /* renamed from: b */
    private final AspectRatioFrameLayout f38099b;

    /* renamed from: c */
    private final View f38100c;

    /* renamed from: d */
    private final View f38101d;

    /* renamed from: e */
    private final ImageView f38102e;

    /* renamed from: f */
    private final SubtitleView f38103f;

    /* renamed from: g */
    private final View f38104g;

    /* renamed from: h */
    private final TextView f38105h;

    /* renamed from: i */
    private final StyledPlayerControlView f38106i;

    /* renamed from: j */
    private final FrameLayout f38107j;

    /* renamed from: k */
    private final FrameLayout f38108k;

    /* renamed from: l */
    private AbstractC10842ac f38109l;

    /* renamed from: m */
    private boolean f38110m;

    /* renamed from: n */
    private StyledPlayerControlView.AbstractC11468l f38111n;

    /* renamed from: o */
    private boolean f38112o;

    /* renamed from: p */
    private Drawable f38113p;

    /* renamed from: q */
    private int f38114q;

    /* renamed from: r */
    private boolean f38115r;

    /* renamed from: s */
    private boolean f38116s;

    /* renamed from: t */
    private AbstractC11609i<? super ExoPlaybackException> f38117t;

    /* renamed from: u */
    private CharSequence f38118u;

    /* renamed from: v */
    private int f38119v;

    /* renamed from: w */
    private boolean f38120w;

    /* renamed from: x */
    private boolean f38121x;

    /* renamed from: y */
    private boolean f38122y;

    /* renamed from: z */
    private int f38123z;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.google.android.exoplayer2.ui.StyledPlayerView$a */
    /* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/ui/StyledPlayerView$a.class */
    public final class View$OnLayoutChangeListenerC11469a implements View.OnLayoutChangeListener, AbstractC10842ac.AbstractC10843a, AbstractC11420j, StyledPlayerControlView.AbstractC11468l, AbstractC11518d, AbstractC11662k {

        /* renamed from: b */
        private final AbstractC10864al.C10866a f38125b = new AbstractC10864al.C10866a();

        /* renamed from: c */
        private Object f38126c;

        public View$OnLayoutChangeListenerC11469a() {
            StyledPlayerView.this = r5;
        }

        @Override // com.google.android.exoplayer2.p346ui.StyledPlayerControlView.AbstractC11468l
        /* renamed from: a */
        public final void mo20312a() {
            StyledPlayerView.this.m20317k();
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
                com.google.android.exoplayer2.ui.StyledPlayerView r0 = com.google.android.exoplayer2.p346ui.StyledPlayerView.this
                android.view.View r0 = com.google.android.exoplayer2.p346ui.StyledPlayerView.m20336b(r0)
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
                com.google.android.exoplayer2.ui.StyledPlayerView r0 = com.google.android.exoplayer2.p346ui.StyledPlayerView.this
                int r0 = com.google.android.exoplayer2.p346ui.StyledPlayerView.m20333c(r0)
                if (r0 == 0) goto L58
                r0 = r4
                com.google.android.exoplayer2.ui.StyledPlayerView r0 = com.google.android.exoplayer2.p346ui.StyledPlayerView.this
                android.view.View r0 = com.google.android.exoplayer2.p346ui.StyledPlayerView.m20336b(r0)
                r1 = r4
                r0.removeOnLayoutChangeListener(r1)
            L58:
                r0 = r4
                com.google.android.exoplayer2.ui.StyledPlayerView r0 = com.google.android.exoplayer2.p346ui.StyledPlayerView.this
                r1 = r7
                int r0 = com.google.android.exoplayer2.p346ui.StyledPlayerView.m20339a(r0, r1)
                r0 = r4
                com.google.android.exoplayer2.ui.StyledPlayerView r0 = com.google.android.exoplayer2.p346ui.StyledPlayerView.this
                int r0 = com.google.android.exoplayer2.p346ui.StyledPlayerView.m20333c(r0)
                if (r0 == 0) goto L76
                r0 = r4
                com.google.android.exoplayer2.ui.StyledPlayerView r0 = com.google.android.exoplayer2.p346ui.StyledPlayerView.this
                android.view.View r0 = com.google.android.exoplayer2.p346ui.StyledPlayerView.m20336b(r0)
                r1 = r4
                r0.addOnLayoutChangeListener(r1)
            L76:
                r0 = r4
                com.google.android.exoplayer2.ui.StyledPlayerView r0 = com.google.android.exoplayer2.p346ui.StyledPlayerView.this
                android.view.View r0 = com.google.android.exoplayer2.p346ui.StyledPlayerView.m20336b(r0)
                android.view.TextureView r0 = (android.view.TextureView) r0
                r1 = r4
                com.google.android.exoplayer2.ui.StyledPlayerView r1 = com.google.android.exoplayer2.p346ui.StyledPlayerView.this
                int r1 = com.google.android.exoplayer2.p346ui.StyledPlayerView.m20333c(r1)
                com.google.android.exoplayer2.p346ui.StyledPlayerView.m20342a(r0, r1)
            L8a:
                r0 = r9
                r1 = r4
                com.google.android.exoplayer2.ui.StyledPlayerView r1 = com.google.android.exoplayer2.p346ui.StyledPlayerView.this
                com.google.android.exoplayer2.ui.AspectRatioFrameLayout r1 = com.google.android.exoplayer2.p346ui.StyledPlayerView.m20330d(r1)
                r2 = r4
                com.google.android.exoplayer2.ui.StyledPlayerView r2 = com.google.android.exoplayer2.p346ui.StyledPlayerView.this
                android.view.View r2 = com.google.android.exoplayer2.p346ui.StyledPlayerView.m20336b(r2)
                com.google.android.exoplayer2.p346ui.StyledPlayerView.m20344a(r0, r1, r2)
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.p346ui.StyledPlayerView.View$OnLayoutChangeListenerC11469a.mo19669a(int, int, int, float):void");
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
            AbstractC10842ac abstractC10842ac = (AbstractC10842ac) C11593a.m20020b(StyledPlayerView.this.f38109l);
            AbstractC10864al mo21176K = abstractC10842ac.mo21176K();
            if (!mo21176K.m22178c()) {
                if (!abstractC10842ac.mo21179H().isEmpty()) {
                    this.f38126c = mo21176K.mo20947a(abstractC10842ac.mo21112x(), this.f38125b, true).f34999b;
                } else {
                    Object obj = this.f38126c;
                    if (obj != null) {
                        int mo20945c = mo21176K.mo20945c(obj);
                        if (mo20945c != -1) {
                            if (abstractC10842ac.mo21111y() == mo21176K.mo20947a(mo20945c, this.f38125b, false).f35000c) {
                                return;
                            }
                        }
                    }
                }
                StyledPlayerView.this.m20332c(false);
            }
            this.f38126c = null;
            StyledPlayerView.this.m20332c(false);
        }

        @Override // com.google.android.exoplayer2.text.AbstractC11420j
        /* renamed from: a */
        public final void mo20289a(List<C11356b> list) {
            if (StyledPlayerView.this.f38103f != null) {
                StyledPlayerView.this.f38103f.setCues(list);
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
            if (StyledPlayerView.this.f38100c != null) {
                StyledPlayerView.this.f38100c.setVisibility(4);
            }
        }

        @Override // com.google.android.exoplayer2.AbstractC10842ac.AbstractC10843a
        /* renamed from: b */
        public final void mo20304b(int i) {
            StyledPlayerView.this.m20321i();
            StyledPlayerView.this.m20319j();
            StyledPlayerView.m20318j(StyledPlayerView.this);
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
            StyledPlayerView.this.m20321i();
            StyledPlayerView.m20318j(StyledPlayerView.this);
        }

        @Override // com.google.android.exoplayer2.AbstractC10842ac.AbstractC10843a
        /* renamed from: d */
        public /* synthetic */ void mo20298d(int i) {
            AbstractC10842ac.AbstractC10843a._CC.$default$d(this, i);
        }

        @Override // com.google.android.exoplayer2.p346ui.spherical.AbstractC11518d
        /* renamed from: d */
        public final boolean mo20216d() {
            return StyledPlayerView.this.m20331d();
        }

        @Override // com.google.android.exoplayer2.AbstractC10842ac.AbstractC10843a
        /* renamed from: e */
        public /* synthetic */ void mo20297e(int i) {
            AbstractC10842ac.AbstractC10843a._CC.$default$e(this, i);
        }

        @Override // com.google.android.exoplayer2.AbstractC10842ac.AbstractC10843a
        /* renamed from: f */
        public final void mo20296f(int i) {
            if (!StyledPlayerView.this.m20327f() || !StyledPlayerView.this.f38121x) {
                return;
            }
            StyledPlayerView.this.m20345a();
        }

        @Override // android.view.View.OnLayoutChangeListener
        public final void onLayoutChange(View view, int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8) {
            StyledPlayerView.m20342a((TextureView) view, StyledPlayerView.this.f38123z);
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

    public StyledPlayerView(Context context) {
        this(context, null);
    }

    public StyledPlayerView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public StyledPlayerView(Context context, AttributeSet attributeSet, int i) {
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
        View$OnLayoutChangeListenerC11469a view$OnLayoutChangeListenerC11469a = new View$OnLayoutChangeListenerC11469a();
        this.f38098a = view$OnLayoutChangeListenerC11469a;
        if (isInEditMode()) {
            this.f38099b = null;
            this.f38100c = null;
            this.f38101d = null;
            this.f38102e = null;
            this.f38103f = null;
            this.f38104g = null;
            this.f38105h = null;
            this.f38106i = null;
            this.f38107j = null;
            this.f38108k = null;
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
        int i8 = C11479c.C11487h.exo_styled_player_view;
        this.f38116s = true;
        if (attributeSet != null) {
            TypedArray obtainStyledAttributes = context.getTheme().obtainStyledAttributes(attributeSet, C11479c.C11491l.StyledPlayerView, 0, 0);
            try {
                z6 = obtainStyledAttributes.hasValue(C11479c.C11491l.StyledPlayerView_shutter_background_color);
                i6 = obtainStyledAttributes.getColor(C11479c.C11491l.StyledPlayerView_shutter_background_color, 0);
                i8 = obtainStyledAttributes.getResourceId(C11479c.C11491l.StyledPlayerView_player_layout_id, i8);
                z5 = obtainStyledAttributes.getBoolean(C11479c.C11491l.StyledPlayerView_use_artwork, true);
                i5 = obtainStyledAttributes.getResourceId(C11479c.C11491l.StyledPlayerView_default_artwork, 0);
                z4 = obtainStyledAttributes.getBoolean(C11479c.C11491l.StyledPlayerView_use_controller, true);
                i4 = obtainStyledAttributes.getInt(C11479c.C11491l.StyledPlayerView_surface_type, 1);
                i3 = obtainStyledAttributes.getInt(C11479c.C11491l.StyledPlayerView_resize_mode, 0);
                i7 = obtainStyledAttributes.getInt(C11479c.C11491l.StyledPlayerView_show_timeout, 5000);
                z3 = obtainStyledAttributes.getBoolean(C11479c.C11491l.StyledPlayerView_hide_on_touch, true);
                z2 = obtainStyledAttributes.getBoolean(C11479c.C11491l.StyledPlayerView_auto_show, true);
                i2 = obtainStyledAttributes.getInteger(C11479c.C11491l.StyledPlayerView_show_buffering, 0);
                this.f38115r = obtainStyledAttributes.getBoolean(C11479c.C11491l.StyledPlayerView_keep_content_on_player_reset, this.f38115r);
                z = obtainStyledAttributes.getBoolean(C11479c.C11491l.StyledPlayerView_hide_during_ads, true);
                this.f38116s = obtainStyledAttributes.getBoolean(C11479c.C11491l.StyledPlayerView_use_sensor_rotation, this.f38116s);
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
        this.f38099b = aspectRatioFrameLayout;
        if (aspectRatioFrameLayout != null) {
            aspectRatioFrameLayout.setResizeMode(i3);
        }
        View findViewById = findViewById(C11479c.C11485f.exo_shutter);
        this.f38100c = findViewById;
        if (findViewById != null && z6) {
            findViewById.setBackgroundColor(i6);
        }
        if (aspectRatioFrameLayout == null || i4 == 0) {
            this.f38101d = null;
        } else {
            ViewGroup.LayoutParams layoutParams = new ViewGroup.LayoutParams(-1, -1);
            if (i4 == 2) {
                this.f38101d = new TextureView(context);
            } else if (i4 == 3) {
                SphericalGLSurfaceView sphericalGLSurfaceView = new SphericalGLSurfaceView(context);
                sphericalGLSurfaceView.setSingleTapListener(view$OnLayoutChangeListenerC11469a);
                sphericalGLSurfaceView.setUseSensorRotation(this.f38116s);
                this.f38101d = sphericalGLSurfaceView;
            } else if (i4 != 4) {
                this.f38101d = new SurfaceView(context);
            } else {
                this.f38101d = new VideoDecoderGLSurfaceView(context);
            }
            this.f38101d.setLayoutParams(layoutParams);
            aspectRatioFrameLayout.addView(this.f38101d, 0);
        }
        this.f38107j = (FrameLayout) findViewById(C11479c.C11485f.exo_ad_overlay);
        this.f38108k = (FrameLayout) findViewById(C11479c.C11485f.exo_overlay);
        ImageView imageView2 = (ImageView) findViewById(C11479c.C11485f.exo_artwork);
        this.f38102e = imageView2;
        this.f38112o = z5 && imageView2 != null;
        if (i5 != 0) {
            this.f38113p = C0790b.m44502a(getContext(), i5);
        }
        SubtitleView subtitleView = (SubtitleView) findViewById(C11479c.C11485f.exo_subtitles);
        this.f38103f = subtitleView;
        if (subtitleView != null) {
            subtitleView.setUserDefaultStyle();
            subtitleView.setUserDefaultTextSize();
        }
        View findViewById2 = findViewById(C11479c.C11485f.exo_buffering);
        this.f38104g = findViewById2;
        if (findViewById2 != null) {
            findViewById2.setVisibility(8);
        }
        this.f38114q = i2;
        TextView textView = (TextView) findViewById(C11479c.C11485f.exo_error_message);
        this.f38105h = textView;
        if (textView != null) {
            textView.setVisibility(8);
        }
        StyledPlayerControlView styledPlayerControlView = (StyledPlayerControlView) findViewById(C11479c.C11485f.exo_controller);
        View findViewById3 = findViewById(C11479c.C11485f.exo_controller_placeholder);
        if (styledPlayerControlView != null) {
            this.f38106i = styledPlayerControlView;
        } else if (findViewById3 != null) {
            StyledPlayerControlView styledPlayerControlView2 = new StyledPlayerControlView(context, null, 0, attributeSet);
            this.f38106i = styledPlayerControlView2;
            styledPlayerControlView2.setId(C11479c.C11485f.exo_controller);
            styledPlayerControlView2.setLayoutParams(findViewById3.getLayoutParams());
            ViewGroup viewGroup = (ViewGroup) findViewById3.getParent();
            int indexOfChild = viewGroup.indexOfChild(findViewById3);
            viewGroup.removeView(findViewById3);
            viewGroup.addView(styledPlayerControlView2, indexOfChild);
        } else {
            this.f38106i = null;
        }
        StyledPlayerControlView styledPlayerControlView3 = this.f38106i;
        this.f38119v = styledPlayerControlView3 == null ? 0 : i7;
        this.f38122y = z3;
        this.f38120w = z2;
        this.f38121x = z;
        this.f38110m = z4 && styledPlayerControlView3 != null;
        if (styledPlayerControlView3 != null) {
            C11497e c11497e = styledPlayerControlView3.f38047c;
            if (c11497e.f38190j != 3 && c11497e.f38190j != 2) {
                c11497e.m20249b();
                c11497e.m20237g();
            }
            this.f38106i.m20412a(view$OnLayoutChangeListenerC11469a);
        }
        m20317k();
    }

    /* renamed from: a */
    protected static void m20344a(float f, AspectRatioFrameLayout aspectRatioFrameLayout, View view) {
        if (aspectRatioFrameLayout != null) {
            if (view instanceof SphericalGLSurfaceView) {
                f = 0.0f;
            }
            aspectRatioFrameLayout.setAspectRatio(f);
        }
    }

    /* renamed from: a */
    static /* synthetic */ void m20342a(TextureView textureView, int i) {
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
    private void m20338a(boolean z) {
        if ((!m20327f() || !this.f38121x) && m20337b()) {
            boolean z2 = this.f38106i.f38047c.m20246c() && this.f38106i.f38046b <= 0;
            boolean m20329e = m20329e();
            if (!z && !z2 && !m20329e) {
                return;
            }
            m20335b(m20329e);
        }
    }

    @RequiresNonNull({"artworkView"})
    /* renamed from: a */
    private boolean m20343a(Drawable drawable) {
        if (drawable != null) {
            int intrinsicWidth = drawable.getIntrinsicWidth();
            int intrinsicHeight = drawable.getIntrinsicHeight();
            if (intrinsicWidth <= 0 || intrinsicHeight <= 0) {
                return false;
            }
            m20344a(intrinsicWidth / intrinsicHeight, this.f38099b, this.f38102e);
            this.f38102e.setImageDrawable(drawable);
            this.f38102e.setVisibility(0);
            return true;
        }
        return false;
    }

    @RequiresNonNull({"artworkView"})
    /* renamed from: a */
    private boolean m20341a(Metadata metadata) {
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
            boolean m20343a = m20343a(new BitmapDrawable(getResources(), BitmapFactory.decodeByteArray(bArr, 0, bArr.length)));
            z = m20343a;
            if (i2 == 3) {
                break;
            }
            z2 = m20343a;
            i = i2;
            i3++;
            i4 = i;
            z3 = z2;
        }
        return z;
    }

    /* renamed from: b */
    private void m20335b(boolean z) {
        if (!m20337b()) {
            return;
        }
        this.f38106i.setShowTimeoutMs(z ? 0 : this.f38119v);
        this.f38106i.m20425a();
    }

    @EnsuresNonNullIf(expression = {"controller"}, result = true)
    /* renamed from: b */
    private boolean m20337b() {
        if (this.f38110m) {
            C11593a.m20024a(this.f38106i);
            return true;
        }
        return false;
    }

    /* renamed from: c */
    public void m20332c(boolean z) {
        AbstractC10842ac abstractC10842ac = this.f38109l;
        if (abstractC10842ac == null || abstractC10842ac.mo21179H().isEmpty()) {
            if (this.f38115r) {
                return;
            }
            m20325g();
            m20323h();
            return;
        }
        if (z && !this.f38115r) {
            m20323h();
        }
        C11443g mo21178I = abstractC10842ac.mo21178I();
        for (int i = 0; i < mo21178I.f37828a; i++) {
            if (abstractC10842ac.mo21146b(i) == 2 && mo21178I.f37829b[i] != null) {
                m20325g();
                return;
            }
        }
        m20323h();
        if (m20334c()) {
            for (Metadata metadata : abstractC10842ac.mo21177J()) {
                if (m20341a(metadata)) {
                    return;
                }
            }
            if (m20343a(this.f38113p)) {
                return;
            }
        }
        m20325g();
    }

    @EnsuresNonNullIf(expression = {"artworkView"}, result = true)
    /* renamed from: c */
    private boolean m20334c() {
        if (this.f38112o) {
            C11593a.m20024a(this.f38102e);
            return true;
        }
        return false;
    }

    /* renamed from: d */
    public boolean m20331d() {
        if (!m20337b() || this.f38109l == null) {
            return false;
        }
        if (!this.f38106i.f38047c.m20246c()) {
            m20338a(true);
            return true;
        } else if (!this.f38122y) {
            return false;
        } else {
            this.f38106i.m20403b();
            return true;
        }
    }

    /* renamed from: e */
    private boolean m20329e() {
        AbstractC10842ac abstractC10842ac = this.f38109l;
        if (abstractC10842ac == null) {
            return true;
        }
        int mo21122n = abstractC10842ac.mo21122n();
        if (!this.f38120w || this.f38109l.mo21176K().m22178c()) {
            return false;
        }
        return mo21122n == 1 || mo21122n == 4 || !((AbstractC10842ac) C11593a.m20020b(this.f38109l)).mo21118r();
    }

    /* renamed from: f */
    public boolean m20327f() {
        AbstractC10842ac abstractC10842ac = this.f38109l;
        return abstractC10842ac != null && abstractC10842ac.mo21184C() && this.f38109l.mo21118r();
    }

    /* renamed from: g */
    private void m20325g() {
        ImageView imageView = this.f38102e;
        if (imageView != null) {
            imageView.setImageResource(17170445);
            this.f38102e.setVisibility(4);
        }
    }

    /* renamed from: h */
    private void m20323h() {
        View view = this.f38100c;
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
    public void m20321i() {
        /*
            r3 = this;
            r0 = r3
            android.view.View r0 = r0.f38104g
            if (r0 == 0) goto L62
            r0 = r3
            com.google.android.exoplayer2.ac r0 = r0.f38109l
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
            int r0 = r0.f38114q
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
            com.google.android.exoplayer2.ac r0 = r0.f38109l
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
            android.view.View r0 = r0.f38104g
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
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.p346ui.StyledPlayerView.m20321i():void");
    }

    /* renamed from: j */
    public void m20319j() {
        AbstractC11609i<? super ExoPlaybackException> abstractC11609i;
        TextView textView = this.f38105h;
        if (textView != null) {
            CharSequence charSequence = this.f38118u;
            if (charSequence != null) {
                textView.setText(charSequence);
                this.f38105h.setVisibility(0);
                return;
            }
            AbstractC10842ac abstractC10842ac = this.f38109l;
            ExoPlaybackException mo21120p = abstractC10842ac != null ? abstractC10842ac.mo21120p() : null;
            if (mo21120p == null || (abstractC11609i = this.f38117t) == null) {
                this.f38105h.setVisibility(8);
                return;
            }
            this.f38105h.setText((CharSequence) abstractC11609i.mo19893a(mo21120p).second);
            this.f38105h.setVisibility(0);
        }
    }

    /* renamed from: j */
    static /* synthetic */ void m20318j(StyledPlayerView styledPlayerView) {
        if (!styledPlayerView.m20327f() || !styledPlayerView.f38121x) {
            styledPlayerView.m20338a(false);
        } else {
            styledPlayerView.m20345a();
        }
    }

    /* renamed from: k */
    public void m20317k() {
        StyledPlayerControlView styledPlayerControlView = this.f38106i;
        String str = null;
        if (styledPlayerControlView == null || !this.f38110m) {
            setContentDescription(null);
        } else if (!styledPlayerControlView.f38047c.m20246c()) {
            setContentDescription(getResources().getString(C11479c.C11489j.exo_controls_show));
        } else {
            if (this.f38122y) {
                str = getResources().getString(C11479c.C11489j.exo_controls_hide);
            }
            setContentDescription(str);
        }
    }

    /* renamed from: a */
    public final void m20345a() {
        StyledPlayerControlView styledPlayerControlView = this.f38106i;
        if (styledPlayerControlView != null) {
            styledPlayerControlView.m20403b();
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public boolean dispatchKeyEvent(KeyEvent keyEvent) {
        boolean z;
        AbstractC10842ac abstractC10842ac = this.f38109l;
        if (abstractC10842ac == null || !abstractC10842ac.mo21184C()) {
            int keyCode = keyEvent.getKeyCode();
            boolean z2 = keyCode == 19 || keyCode == 270 || keyCode == 22 || keyCode == 271 || keyCode == 20 || keyCode == 269 || keyCode == 21 || keyCode == 268 || keyCode == 23;
            if (!z2 || !m20337b() || this.f38106i.f38047c.m20246c()) {
                if (!(m20337b() && this.f38106i.m20423a(keyEvent)) && !super.dispatchKeyEvent(keyEvent)) {
                    z = false;
                    if (z2) {
                        z = false;
                        if (m20337b()) {
                            m20338a(true);
                            z = false;
                        }
                    }
                    return z;
                }
                m20338a(true);
            } else {
                m20338a(true);
            }
            z = true;
            return z;
        }
        return super.dispatchKeyEvent(keyEvent);
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        if (!m20337b() || this.f38109l == null) {
            return false;
        }
        int action = motionEvent.getAction();
        if (action == 0) {
            this.f38097A = true;
            return true;
        } else if (action != 1 || !this.f38097A) {
            return false;
        } else {
            this.f38097A = false;
            return performClick();
        }
    }

    @Override // android.view.View
    public boolean onTrackballEvent(MotionEvent motionEvent) {
        if (!m20337b() || this.f38109l == null) {
            return false;
        }
        m20338a(true);
        return true;
    }

    @Override // android.view.View
    public boolean performClick() {
        super.performClick();
        return m20331d();
    }

    public void setAspectRatioListener(AspectRatioFrameLayout.AbstractC11449a abstractC11449a) {
        C11593a.m20024a(this.f38099b);
        this.f38099b.setAspectRatioListener(abstractC11449a);
    }

    public void setControlDispatcher(AbstractC11159g abstractC11159g) {
        C11593a.m20024a(this.f38106i);
        this.f38106i.setControlDispatcher(abstractC11159g);
    }

    public void setControllerAutoShow(boolean z) {
        this.f38120w = z;
    }

    public void setControllerHideDuringAds(boolean z) {
        this.f38121x = z;
    }

    public void setControllerHideOnTouch(boolean z) {
        C11593a.m20024a(this.f38106i);
        this.f38122y = z;
        m20317k();
    }

    public void setControllerOnFullScreenModeChangedListener(StyledPlayerControlView.AbstractC11459c abstractC11459c) {
        C11593a.m20024a(this.f38106i);
        this.f38106i.setOnFullScreenModeChangedListener(abstractC11459c);
    }

    public void setControllerShowTimeoutMs(int i) {
        C11593a.m20024a(this.f38106i);
        this.f38119v = i;
        if (this.f38106i.f38047c.m20246c()) {
            m20335b(m20329e());
        }
    }

    public void setControllerVisibilityListener(StyledPlayerControlView.AbstractC11468l abstractC11468l) {
        C11593a.m20024a(this.f38106i);
        StyledPlayerControlView.AbstractC11468l abstractC11468l2 = this.f38111n;
        if (abstractC11468l2 == abstractC11468l) {
            return;
        }
        if (abstractC11468l2 != null) {
            this.f38106i.f38016a.remove(abstractC11468l2);
        }
        this.f38111n = abstractC11468l;
        if (abstractC11468l == null) {
            return;
        }
        this.f38106i.m20412a(abstractC11468l);
    }

    public void setCustomErrorMessage(CharSequence charSequence) {
        C11593a.m20019b(this.f38105h != null);
        this.f38118u = charSequence;
        m20319j();
    }

    public void setDefaultArtwork(Drawable drawable) {
        if (this.f38113p != drawable) {
            this.f38113p = drawable;
            m20332c(false);
        }
    }

    public void setErrorMessageProvider(AbstractC11609i<? super ExoPlaybackException> abstractC11609i) {
        if (this.f38117t != abstractC11609i) {
            this.f38117t = abstractC11609i;
            m20319j();
        }
    }

    public void setExtraAdGroupMarkers(long[] jArr, boolean[] zArr) {
        C11593a.m20024a(this.f38106i);
        this.f38106i.setExtraAdGroupMarkers(jArr, zArr);
    }

    public void setKeepContentOnPlayerReset(boolean z) {
        if (this.f38115r != z) {
            this.f38115r = z;
            m20332c(false);
        }
    }

    @Deprecated
    public void setPlaybackPreparer(AbstractC10841ab abstractC10841ab) {
        C11593a.m20024a(this.f38106i);
        this.f38106i.setPlaybackPreparer(abstractC10841ab);
    }

    public void setPlayer(AbstractC10842ac abstractC10842ac) {
        C11593a.m20019b(Looper.myLooper() == Looper.getMainLooper());
        C11593a.m20022a(abstractC10842ac == null || abstractC10842ac.mo21123m() == Looper.getMainLooper());
        AbstractC10842ac abstractC10842ac2 = this.f38109l;
        if (abstractC10842ac2 == abstractC10842ac) {
            return;
        }
        if (abstractC10842ac2 != null) {
            abstractC10842ac2.mo21144b(this.f38098a);
            AbstractC10842ac.AbstractC10846d mo21125k = abstractC10842ac2.mo21125k();
            if (mo21125k != null) {
                mo21125k.mo22194b(this.f38098a);
                View view = this.f38101d;
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
                mo21124l.mo22197b(this.f38098a);
            }
        }
        SubtitleView subtitleView = this.f38103f;
        if (subtitleView != null) {
            subtitleView.setCues(null);
        }
        this.f38109l = abstractC10842ac;
        if (m20337b()) {
            this.f38106i.setPlayer(abstractC10842ac);
        }
        m20321i();
        m20319j();
        m20332c(true);
        if (abstractC10842ac == null) {
            m20345a();
            return;
        }
        AbstractC10842ac.AbstractC10846d mo21125k2 = abstractC10842ac.mo21125k();
        if (mo21125k2 != null) {
            View view2 = this.f38101d;
            if (view2 instanceof TextureView) {
                mo21125k2.mo22213a((TextureView) view2);
            } else if (view2 instanceof SphericalGLSurfaceView) {
                ((SphericalGLSurfaceView) view2).setVideoComponent(mo21125k2);
            } else if (view2 instanceof SurfaceView) {
                mo21125k2.mo22214a((SurfaceView) view2);
            }
            mo21125k2.mo22204a(this.f38098a);
        }
        AbstractC10842ac.AbstractC10845c mo21124l2 = abstractC10842ac.mo21124l();
        if (mo21124l2 != null) {
            mo21124l2.mo22208a(this.f38098a);
            SubtitleView subtitleView2 = this.f38103f;
            if (subtitleView2 != null) {
                subtitleView2.setCues(mo21124l2.mo22220a());
            }
        }
        abstractC10842ac.mo21167a(this.f38098a);
        m20338a(false);
    }

    public void setRepeatToggleModes(int i) {
        C11593a.m20024a(this.f38106i);
        this.f38106i.setRepeatToggleModes(i);
    }

    public void setResizeMode(int i) {
        C11593a.m20024a(this.f38099b);
        this.f38099b.setResizeMode(i);
    }

    public void setShowBuffering(int i) {
        if (this.f38114q != i) {
            this.f38114q = i;
            m20321i();
        }
    }

    public void setShowFastForwardButton(boolean z) {
        C11593a.m20024a(this.f38106i);
        this.f38106i.setShowFastForwardButton(z);
    }

    public void setShowMultiWindowTimeBar(boolean z) {
        C11593a.m20024a(this.f38106i);
        this.f38106i.setShowMultiWindowTimeBar(z);
    }

    public void setShowNextButton(boolean z) {
        C11593a.m20024a(this.f38106i);
        this.f38106i.setShowNextButton(z);
    }

    public void setShowPreviousButton(boolean z) {
        C11593a.m20024a(this.f38106i);
        this.f38106i.setShowPreviousButton(z);
    }

    public void setShowRewindButton(boolean z) {
        C11593a.m20024a(this.f38106i);
        this.f38106i.setShowRewindButton(z);
    }

    public void setShowShuffleButton(boolean z) {
        C11593a.m20024a(this.f38106i);
        this.f38106i.setShowShuffleButton(z);
    }

    public void setShowSubtitleButton(boolean z) {
        C11593a.m20024a(this.f38106i);
        this.f38106i.setShowSubtitleButton(z);
    }

    public void setShowVrButton(boolean z) {
        C11593a.m20024a(this.f38106i);
        this.f38106i.setShowVrButton(z);
    }

    public void setShutterBackgroundColor(int i) {
        View view = this.f38100c;
        if (view != null) {
            view.setBackgroundColor(i);
        }
    }

    public void setUseArtwork(boolean z) {
        C11593a.m20019b(!z || this.f38102e != null);
        if (this.f38112o != z) {
            this.f38112o = z;
            m20332c(false);
        }
    }

    public void setUseController(boolean z) {
        C11593a.m20019b(!z || this.f38106i != null);
        if (this.f38110m == z) {
            return;
        }
        this.f38110m = z;
        if (m20337b()) {
            this.f38106i.setPlayer(this.f38109l);
        } else {
            StyledPlayerControlView styledPlayerControlView = this.f38106i;
            if (styledPlayerControlView != null) {
                styledPlayerControlView.m20403b();
                this.f38106i.setPlayer(null);
            }
        }
        m20317k();
    }

    public void setUseSensorRotation(boolean z) {
        if (this.f38116s != z) {
            this.f38116s = z;
            View view = this.f38101d;
            if (!(view instanceof SphericalGLSurfaceView)) {
                return;
            }
            ((SphericalGLSurfaceView) view).setUseSensorRotation(z);
        }
    }

    @Override // android.view.View
    public void setVisibility(int i) {
        super.setVisibility(i);
        View view = this.f38101d;
        if (view instanceof SurfaceView) {
            view.setVisibility(i);
        }
    }
}
