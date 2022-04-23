package com.google.android.exoplayer2.ui;

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
import com.google.android.exoplayer2.ExoPlaybackException;
import com.google.android.exoplayer2.MediaItem;
import com.google.android.exoplayer2.aa;
import com.google.android.exoplayer2.ab;
import com.google.android.exoplayer2.ac;
import com.google.android.exoplayer2.al;
import com.google.android.exoplayer2.metadata.Metadata;
import com.google.android.exoplayer2.metadata.flac.PictureFrame;
import com.google.android.exoplayer2.metadata.id3.ApicFrame;
import com.google.android.exoplayer2.source.TrackGroupArray;
import com.google.android.exoplayer2.source.ads.b;
import com.google.android.exoplayer2.text.j;
import com.google.android.exoplayer2.trackselection.g;
import com.google.android.exoplayer2.ui.AspectRatioFrameLayout;
import com.google.android.exoplayer2.ui.StyledPlayerControlView;
import com.google.android.exoplayer2.ui.c;
import com.google.android.exoplayer2.ui.spherical.SphericalGLSurfaceView;
import com.google.android.exoplayer2.ui.spherical.d;
import com.google.android.exoplayer2.util.af;
import com.google.android.exoplayer2.util.i;
import com.google.android.exoplayer2.video.VideoDecoderGLSurfaceView;
import com.google.android.exoplayer2.video.k;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import java.util.List;
import org.checkerframework.checker.nullness.qual.EnsuresNonNullIf;
import org.checkerframework.checker.nullness.qual.RequiresNonNull;
/* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/ui/StyledPlayerView.class */
public class StyledPlayerView extends FrameLayout implements b.a {
    private boolean A;

    /* renamed from: a  reason: collision with root package name */
    private final a f22004a;

    /* renamed from: b  reason: collision with root package name */
    private final AspectRatioFrameLayout f22005b;

    /* renamed from: c  reason: collision with root package name */
    private final View f22006c;

    /* renamed from: d  reason: collision with root package name */
    private final View f22007d;
    private final ImageView e;
    private final SubtitleView f;
    private final View g;
    private final TextView h;
    private final StyledPlayerControlView i;
    private final FrameLayout j;
    private final FrameLayout k;
    private ac l;
    private boolean m;
    private StyledPlayerControlView.l n;
    private boolean o;
    private Drawable p;
    private int q;
    private boolean r;
    private boolean s;
    private i<? super ExoPlaybackException> t;
    private CharSequence u;
    private int v;
    private boolean w;
    private boolean x;
    private boolean y;
    private int z;

    /* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/ui/StyledPlayerView$a.class */
    final class a implements View.OnLayoutChangeListener, ac.a, j, StyledPlayerControlView.l, d, k {

        /* renamed from: b  reason: collision with root package name */
        private final al.a f22009b = new al.a();

        /* renamed from: c  reason: collision with root package name */
        private Object f22010c;

        public a() {
        }

        @Override // com.google.android.exoplayer2.ui.StyledPlayerControlView.l
        public final void a() {
            StyledPlayerView.this.k();
        }

        /* JADX WARN: Code restructure failed: missing block: B:13:0x003a, code lost:
            if (r7 == 270) goto L_0x003d;
         */
        @Override // com.google.android.exoplayer2.video.k
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final void a(int r5, int r6, int r7, float r8) {
            /*
                r4 = this;
                r0 = r6
                if (r0 == 0) goto L_0x0018
                r0 = r5
                if (r0 != 0) goto L_0x000b
                goto L_0x0018
            L_0x000b:
                r0 = r5
                float r0 = (float) r0
                r1 = r8
                float r0 = r0 * r1
                r1 = r6
                float r1 = (float) r1
                float r0 = r0 / r1
                r8 = r0
                goto L_0x001b
            L_0x0018:
                r0 = 1065353216(0x3f800000, float:1.0)
                r8 = r0
            L_0x001b:
                r0 = r8
                r9 = r0
                r0 = r4
                com.google.android.exoplayer2.ui.StyledPlayerView r0 = com.google.android.exoplayer2.ui.StyledPlayerView.this
                android.view.View r0 = com.google.android.exoplayer2.ui.StyledPlayerView.b(r0)
                boolean r0 = r0 instanceof android.view.TextureView
                if (r0 == 0) goto L_0x008a
                r0 = r7
                r1 = 90
                if (r0 == r1) goto L_0x003d
                r0 = r8
                r9 = r0
                r0 = r7
                r1 = 270(0x10e, float:3.78E-43)
                if (r0 != r1) goto L_0x0043
            L_0x003d:
                r0 = 1065353216(0x3f800000, float:1.0)
                r1 = r8
                float r0 = r0 / r1
                r9 = r0
            L_0x0043:
                r0 = r4
                com.google.android.exoplayer2.ui.StyledPlayerView r0 = com.google.android.exoplayer2.ui.StyledPlayerView.this
                int r0 = com.google.android.exoplayer2.ui.StyledPlayerView.c(r0)
                if (r0 == 0) goto L_0x0058
                r0 = r4
                com.google.android.exoplayer2.ui.StyledPlayerView r0 = com.google.android.exoplayer2.ui.StyledPlayerView.this
                android.view.View r0 = com.google.android.exoplayer2.ui.StyledPlayerView.b(r0)
                r1 = r4
                r0.removeOnLayoutChangeListener(r1)
            L_0x0058:
                r0 = r4
                com.google.android.exoplayer2.ui.StyledPlayerView r0 = com.google.android.exoplayer2.ui.StyledPlayerView.this
                r1 = r7
                int r0 = com.google.android.exoplayer2.ui.StyledPlayerView.a(r0, r1)
                r0 = r4
                com.google.android.exoplayer2.ui.StyledPlayerView r0 = com.google.android.exoplayer2.ui.StyledPlayerView.this
                int r0 = com.google.android.exoplayer2.ui.StyledPlayerView.c(r0)
                if (r0 == 0) goto L_0x0076
                r0 = r4
                com.google.android.exoplayer2.ui.StyledPlayerView r0 = com.google.android.exoplayer2.ui.StyledPlayerView.this
                android.view.View r0 = com.google.android.exoplayer2.ui.StyledPlayerView.b(r0)
                r1 = r4
                r0.addOnLayoutChangeListener(r1)
            L_0x0076:
                r0 = r4
                com.google.android.exoplayer2.ui.StyledPlayerView r0 = com.google.android.exoplayer2.ui.StyledPlayerView.this
                android.view.View r0 = com.google.android.exoplayer2.ui.StyledPlayerView.b(r0)
                android.view.TextureView r0 = (android.view.TextureView) r0
                r1 = r4
                com.google.android.exoplayer2.ui.StyledPlayerView r1 = com.google.android.exoplayer2.ui.StyledPlayerView.this
                int r1 = com.google.android.exoplayer2.ui.StyledPlayerView.c(r1)
                com.google.android.exoplayer2.ui.StyledPlayerView.a(r0, r1)
            L_0x008a:
                r0 = r9
                r1 = r4
                com.google.android.exoplayer2.ui.StyledPlayerView r1 = com.google.android.exoplayer2.ui.StyledPlayerView.this
                com.google.android.exoplayer2.ui.AspectRatioFrameLayout r1 = com.google.android.exoplayer2.ui.StyledPlayerView.d(r1)
                r2 = r4
                com.google.android.exoplayer2.ui.StyledPlayerView r2 = com.google.android.exoplayer2.ui.StyledPlayerView.this
                android.view.View r2 = com.google.android.exoplayer2.ui.StyledPlayerView.b(r2)
                com.google.android.exoplayer2.ui.StyledPlayerView.a(r0, r1, r2)
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.ui.StyledPlayerView.a.a(int, int, int, float):void");
        }

        @Override // com.google.android.exoplayer2.ac.a
        public /* synthetic */ void a(ExoPlaybackException exoPlaybackException) {
            ac.a._CC.$default$a(this, exoPlaybackException);
        }

        @Override // com.google.android.exoplayer2.ac.a
        public /* synthetic */ void a(MediaItem mediaItem, int i) {
            ac.a._CC.$default$a(this, mediaItem, i);
        }

        @Override // com.google.android.exoplayer2.ac.a
        public /* synthetic */ void a(aa aaVar) {
            ac.a._CC.$default$a(this, aaVar);
        }

        @Override // com.google.android.exoplayer2.ac.a
        public /* synthetic */ void a(ac.b bVar) {
            ac.a._CC.$default$a(this, bVar);
        }

        @Override // com.google.android.exoplayer2.ac.a
        public /* synthetic */ void a(al alVar, int i) {
            ac.a._CC.$default$a(this, alVar, i);
        }

        @Override // com.google.android.exoplayer2.ac.a
        public final void a(TrackGroupArray trackGroupArray, g gVar) {
            ac acVar = (ac) com.google.android.exoplayer2.util.a.b(StyledPlayerView.this.l);
            al K = acVar.K();
            if (!K.c()) {
                if (!acVar.H().isEmpty()) {
                    this.f22010c = K.a(acVar.x(), this.f22009b, true).f20676b;
                } else {
                    Object obj = this.f22010c;
                    if (obj != null) {
                        int c2 = K.c(obj);
                        if (c2 != -1) {
                            if (acVar.y() == K.a(c2, this.f22009b, false).f20677c) {
                                return;
                            }
                        }
                    }
                }
                StyledPlayerView.this.c(false);
            }
            this.f22010c = null;
            StyledPlayerView.this.c(false);
        }

        @Override // com.google.android.exoplayer2.text.j
        public final void a(List<com.google.android.exoplayer2.text.b> list) {
            if (StyledPlayerView.this.f != null) {
                StyledPlayerView.this.f.setCues(list);
            }
        }

        @Override // com.google.android.exoplayer2.ac.a
        public /* synthetic */ void a(boolean z) {
            ac.a._CC.$default$a(this, z);
        }

        @Override // com.google.android.exoplayer2.video.k
        public final void b() {
            if (StyledPlayerView.this.f22006c != null) {
                StyledPlayerView.this.f22006c.setVisibility(4);
            }
        }

        @Override // com.google.android.exoplayer2.ac.a
        public final void b(int i) {
            StyledPlayerView.this.i();
            StyledPlayerView.this.j();
            StyledPlayerView.j(StyledPlayerView.this);
        }

        @Override // com.google.android.exoplayer2.ac.a
        public /* synthetic */ void b(boolean z) {
            ac.a._CC.$default$b(this, z);
        }

        @Override // com.google.android.exoplayer2.ac.a
        public /* synthetic */ void b(boolean z, int i) {
            ac.a._CC.$default$b(this, z, i);
        }

        @Override // com.google.android.exoplayer2.ac.a
        public /* synthetic */ void c(List list) {
            ac.a._CC.$default$c(this, list);
        }

        @Override // com.google.android.exoplayer2.ac.a
        public /* synthetic */ void c(boolean z) {
            ac.a._CC.$default$c(this, z);
        }

        @Override // com.google.android.exoplayer2.ac.a
        public final void c(boolean z, int i) {
            StyledPlayerView.this.i();
            StyledPlayerView.j(StyledPlayerView.this);
        }

        @Override // com.google.android.exoplayer2.ac.a
        public /* synthetic */ void d(int i) {
            ac.a._CC.$default$d(this, i);
        }

        @Override // com.google.android.exoplayer2.ui.spherical.d
        public final boolean d() {
            return StyledPlayerView.this.d();
        }

        @Override // com.google.android.exoplayer2.ac.a
        public /* synthetic */ void e(int i) {
            ac.a._CC.$default$e(this, i);
        }

        @Override // com.google.android.exoplayer2.ac.a
        public final void f(int i) {
            if (StyledPlayerView.this.f() && StyledPlayerView.this.x) {
                StyledPlayerView.this.a();
            }
        }

        @Override // android.view.View.OnLayoutChangeListener
        public final void onLayoutChange(View view, int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8) {
            StyledPlayerView.a((TextureView) view, StyledPlayerView.this.z);
        }

        @Override // com.google.android.exoplayer2.ac.a
        public /* synthetic */ void p_() {
            ac.a._CC.$default$p_(this);
        }

        @Override // com.google.android.exoplayer2.ac.a
        public /* synthetic */ void q_() {
            ac.a._CC.$default$q_(this);
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
        a aVar = new a();
        this.f22004a = aVar;
        if (isInEditMode()) {
            this.f22005b = null;
            this.f22006c = null;
            this.f22007d = null;
            this.e = null;
            this.f = null;
            this.g = null;
            this.h = null;
            this.i = null;
            this.j = null;
            this.k = null;
            ImageView imageView = new ImageView(context);
            if (af.f22275a >= 23) {
                Resources resources = getResources();
                imageView.setImageDrawable(resources.getDrawable(c.d.exo_edit_mode_logo, null));
                imageView.setBackgroundColor(resources.getColor(c.b.exo_edit_mode_background_color, null));
            } else {
                Resources resources2 = getResources();
                imageView.setImageDrawable(resources2.getDrawable(c.d.exo_edit_mode_logo));
                imageView.setBackgroundColor(resources2.getColor(c.b.exo_edit_mode_background_color));
            }
            addView(imageView);
            return;
        }
        int i8 = c.h.exo_styled_player_view;
        this.s = true;
        if (attributeSet != null) {
            TypedArray obtainStyledAttributes = context.getTheme().obtainStyledAttributes(attributeSet, c.l.StyledPlayerView, 0, 0);
            try {
                z6 = obtainStyledAttributes.hasValue(c.l.StyledPlayerView_shutter_background_color);
                i6 = obtainStyledAttributes.getColor(c.l.StyledPlayerView_shutter_background_color, 0);
                i8 = obtainStyledAttributes.getResourceId(c.l.StyledPlayerView_player_layout_id, i8);
                z5 = obtainStyledAttributes.getBoolean(c.l.StyledPlayerView_use_artwork, true);
                i5 = obtainStyledAttributes.getResourceId(c.l.StyledPlayerView_default_artwork, 0);
                z4 = obtainStyledAttributes.getBoolean(c.l.StyledPlayerView_use_controller, true);
                i4 = obtainStyledAttributes.getInt(c.l.StyledPlayerView_surface_type, 1);
                i3 = obtainStyledAttributes.getInt(c.l.StyledPlayerView_resize_mode, 0);
                i7 = obtainStyledAttributes.getInt(c.l.StyledPlayerView_show_timeout, 5000);
                z3 = obtainStyledAttributes.getBoolean(c.l.StyledPlayerView_hide_on_touch, true);
                z2 = obtainStyledAttributes.getBoolean(c.l.StyledPlayerView_auto_show, true);
                i2 = obtainStyledAttributes.getInteger(c.l.StyledPlayerView_show_buffering, 0);
                this.r = obtainStyledAttributes.getBoolean(c.l.StyledPlayerView_keep_content_on_player_reset, this.r);
                z = obtainStyledAttributes.getBoolean(c.l.StyledPlayerView_hide_during_ads, true);
                this.s = obtainStyledAttributes.getBoolean(c.l.StyledPlayerView_use_sensor_rotation, this.s);
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
        AspectRatioFrameLayout aspectRatioFrameLayout = (AspectRatioFrameLayout) findViewById(c.f.exo_content_frame);
        this.f22005b = aspectRatioFrameLayout;
        if (aspectRatioFrameLayout != null) {
            aspectRatioFrameLayout.setResizeMode(i3);
        }
        View findViewById = findViewById(c.f.exo_shutter);
        this.f22006c = findViewById;
        if (findViewById != null && z6) {
            findViewById.setBackgroundColor(i6);
        }
        if (aspectRatioFrameLayout == null || i4 == 0) {
            this.f22007d = null;
        } else {
            ViewGroup.LayoutParams layoutParams = new ViewGroup.LayoutParams(-1, -1);
            if (i4 == 2) {
                this.f22007d = new TextureView(context);
            } else if (i4 == 3) {
                SphericalGLSurfaceView sphericalGLSurfaceView = new SphericalGLSurfaceView(context);
                sphericalGLSurfaceView.setSingleTapListener(aVar);
                sphericalGLSurfaceView.setUseSensorRotation(this.s);
                this.f22007d = sphericalGLSurfaceView;
            } else if (i4 != 4) {
                this.f22007d = new SurfaceView(context);
            } else {
                this.f22007d = new VideoDecoderGLSurfaceView(context);
            }
            this.f22007d.setLayoutParams(layoutParams);
            aspectRatioFrameLayout.addView(this.f22007d, 0);
        }
        this.j = (FrameLayout) findViewById(c.f.exo_ad_overlay);
        this.k = (FrameLayout) findViewById(c.f.exo_overlay);
        ImageView imageView2 = (ImageView) findViewById(c.f.exo_artwork);
        this.e = imageView2;
        this.o = z5 && imageView2 != null;
        if (i5 != 0) {
            this.p = androidx.core.content.b.a(getContext(), i5);
        }
        SubtitleView subtitleView = (SubtitleView) findViewById(c.f.exo_subtitles);
        this.f = subtitleView;
        if (subtitleView != null) {
            subtitleView.setUserDefaultStyle();
            subtitleView.setUserDefaultTextSize();
        }
        View findViewById2 = findViewById(c.f.exo_buffering);
        this.g = findViewById2;
        if (findViewById2 != null) {
            findViewById2.setVisibility(8);
        }
        this.q = i2;
        TextView textView = (TextView) findViewById(c.f.exo_error_message);
        this.h = textView;
        if (textView != null) {
            textView.setVisibility(8);
        }
        StyledPlayerControlView styledPlayerControlView = (StyledPlayerControlView) findViewById(c.f.exo_controller);
        View findViewById3 = findViewById(c.f.exo_controller_placeholder);
        if (styledPlayerControlView != null) {
            this.i = styledPlayerControlView;
        } else if (findViewById3 != null) {
            StyledPlayerControlView styledPlayerControlView2 = new StyledPlayerControlView(context, null, 0, attributeSet);
            this.i = styledPlayerControlView2;
            styledPlayerControlView2.setId(c.f.exo_controller);
            styledPlayerControlView2.setLayoutParams(findViewById3.getLayoutParams());
            ViewGroup viewGroup = (ViewGroup) findViewById3.getParent();
            int indexOfChild = viewGroup.indexOfChild(findViewById3);
            viewGroup.removeView(findViewById3);
            viewGroup.addView(styledPlayerControlView2, indexOfChild);
        } else {
            this.i = null;
        }
        StyledPlayerControlView styledPlayerControlView3 = this.i;
        this.v = styledPlayerControlView3 == null ? 0 : i7;
        this.y = z3;
        this.w = z2;
        this.x = z;
        this.m = z4 && styledPlayerControlView3 != null;
        if (styledPlayerControlView3 != null) {
            e eVar = styledPlayerControlView3.f21984c;
            if (!(eVar.j == 3 || eVar.j == 2)) {
                eVar.b();
                eVar.g();
            }
            this.i.a(aVar);
        }
        k();
    }

    protected static void a(float f, AspectRatioFrameLayout aspectRatioFrameLayout, View view) {
        if (aspectRatioFrameLayout != null) {
            if (view instanceof SphericalGLSurfaceView) {
                f = BitmapDescriptorFactory.HUE_RED;
            }
            aspectRatioFrameLayout.setAspectRatio(f);
        }
    }

    static /* synthetic */ void a(TextureView textureView, int i) {
        Matrix matrix = new Matrix();
        float width = textureView.getWidth();
        float height = textureView.getHeight();
        if (!(width == BitmapDescriptorFactory.HUE_RED || height == BitmapDescriptorFactory.HUE_RED || i == 0)) {
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

    private void a(boolean z) {
        if ((!f() || !this.x) && b()) {
            boolean z2 = this.i.f21984c.c() && this.i.f21983b <= 0;
            boolean e = e();
            if (z || z2 || e) {
                b(e);
            }
        }
    }

    @RequiresNonNull({"artworkView"})
    private boolean a(Drawable drawable) {
        if (drawable == null) {
            return false;
        }
        int intrinsicWidth = drawable.getIntrinsicWidth();
        int intrinsicHeight = drawable.getIntrinsicHeight();
        if (intrinsicWidth <= 0 || intrinsicHeight <= 0) {
            return false;
        }
        a(intrinsicWidth / intrinsicHeight, this.f22005b, this.e);
        this.e.setImageDrawable(drawable);
        this.e.setVisibility(0);
        return true;
    }

    @RequiresNonNull({"artworkView"})
    private boolean a(Metadata metadata) {
        boolean z;
        int i;
        byte[] bArr;
        int i2 = 0;
        int i3 = -1;
        boolean z2 = false;
        while (true) {
            z = z2;
            if (i2 >= metadata.length()) {
                break;
            }
            Metadata.Entry entry = metadata.get(i2);
            if (entry instanceof ApicFrame) {
                ApicFrame apicFrame = (ApicFrame) entry;
                bArr = apicFrame.pictureData;
                i = apicFrame.pictureType;
            } else {
                i3 = i3;
                z2 = z2;
                if (entry instanceof PictureFrame) {
                    PictureFrame pictureFrame = (PictureFrame) entry;
                    bArr = pictureFrame.pictureData;
                    i = pictureFrame.pictureType;
                } else {
                    continue;
                    i2++;
                }
            }
            if (i3 != -1) {
                i3 = i3;
                z2 = z2;
                if (i != 3) {
                    continue;
                    i2++;
                }
            }
            boolean a2 = a(new BitmapDrawable(getResources(), BitmapFactory.decodeByteArray(bArr, 0, bArr.length)));
            z = a2;
            if (i == 3) {
                break;
            }
            z2 = a2;
            i3 = i;
            i2++;
        }
        return z;
    }

    private void b(boolean z) {
        if (b()) {
            this.i.setShowTimeoutMs(z ? 0 : this.v);
            this.i.a();
        }
    }

    @EnsuresNonNullIf(expression = {"controller"}, result = true)
    private boolean b() {
        if (!this.m) {
            return false;
        }
        com.google.android.exoplayer2.util.a.a(this.i);
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void c(boolean z) {
        ac acVar = this.l;
        if (acVar != null && !acVar.H().isEmpty()) {
            if (z && !this.r) {
                h();
            }
            g I = acVar.I();
            for (int i = 0; i < I.f21941a; i++) {
                if (acVar.b(i) == 2 && I.f21942b[i] != null) {
                    g();
                    return;
                }
            }
            h();
            if (c()) {
                for (Metadata metadata : acVar.J()) {
                    if (a(metadata)) {
                        return;
                    }
                }
                if (a(this.p)) {
                    return;
                }
            }
            g();
        } else if (!this.r) {
            g();
            h();
        }
    }

    @EnsuresNonNullIf(expression = {"artworkView"}, result = true)
    private boolean c() {
        if (!this.o) {
            return false;
        }
        com.google.android.exoplayer2.util.a.a(this.e);
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean d() {
        if (!b() || this.l == null) {
            return false;
        }
        if (!this.i.f21984c.c()) {
            a(true);
            return true;
        } else if (!this.y) {
            return false;
        } else {
            this.i.b();
            return true;
        }
    }

    private boolean e() {
        ac acVar = this.l;
        if (acVar == null) {
            return true;
        }
        int n = acVar.n();
        if (!this.w || this.l.K().c()) {
            return false;
        }
        return n == 1 || n == 4 || !((ac) com.google.android.exoplayer2.util.a.b(this.l)).r();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean f() {
        ac acVar = this.l;
        return acVar != null && acVar.C() && this.l.r();
    }

    private void g() {
        ImageView imageView = this.e;
        if (imageView != null) {
            imageView.setImageResource(17170445);
            this.e.setVisibility(4);
        }
    }

    private void h() {
        View view = this.f22006c;
        if (view != null) {
            view.setVisibility(0);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:18:0x0052  */
    /* JADX WARN: Removed duplicated region for block: B:19:0x0058  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void i() {
        /*
            r3 = this;
            r0 = r3
            android.view.View r0 = r0.g
            if (r0 == 0) goto L_0x0062
            r0 = r3
            com.google.android.exoplayer2.ac r0 = r0.l
            r4 = r0
            r0 = 1
            r5 = r0
            r0 = 0
            r6 = r0
            r0 = r4
            if (r0 == 0) goto L_0x0045
            r0 = r4
            int r0 = r0.n()
            r1 = 2
            if (r0 != r1) goto L_0x0045
            r0 = r3
            int r0 = r0.q
            r7 = r0
            r0 = r5
            r8 = r0
            r0 = r7
            r1 = 2
            if (r0 == r1) goto L_0x0048
            r0 = r7
            r1 = 1
            if (r0 != r1) goto L_0x0045
            r0 = r3
            com.google.android.exoplayer2.ac r0 = r0.l
            boolean r0 = r0.r()
            if (r0 == 0) goto L_0x0045
            r0 = r5
            r8 = r0
            goto L_0x0048
        L_0x0045:
            r0 = 0
            r8 = r0
        L_0x0048:
            r0 = r3
            android.view.View r0 = r0.g
            r4 = r0
            r0 = r8
            if (r0 == 0) goto L_0x0058
            r0 = r6
            r8 = r0
            goto L_0x005c
        L_0x0058:
            r0 = 8
            r8 = r0
        L_0x005c:
            r0 = r4
            r1 = r8
            r0.setVisibility(r1)
        L_0x0062:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.ui.StyledPlayerView.i():void");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void j() {
        i<? super ExoPlaybackException> iVar;
        TextView textView = this.h;
        if (textView != null) {
            CharSequence charSequence = this.u;
            if (charSequence != null) {
                textView.setText(charSequence);
                this.h.setVisibility(0);
                return;
            }
            ac acVar = this.l;
            ExoPlaybackException p = acVar != null ? acVar.p() : null;
            if (p == null || (iVar = this.t) == null) {
                this.h.setVisibility(8);
                return;
            }
            this.h.setText((CharSequence) iVar.a(p).second);
            this.h.setVisibility(0);
        }
    }

    static /* synthetic */ void j(StyledPlayerView styledPlayerView) {
        if (!styledPlayerView.f() || !styledPlayerView.x) {
            styledPlayerView.a(false);
        } else {
            styledPlayerView.a();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void k() {
        StyledPlayerControlView styledPlayerControlView = this.i;
        String str = null;
        if (styledPlayerControlView == null || !this.m) {
            setContentDescription(null);
        } else if (styledPlayerControlView.f21984c.c()) {
            if (this.y) {
                str = getResources().getString(c.j.exo_controls_hide);
            }
            setContentDescription(str);
        } else {
            setContentDescription(getResources().getString(c.j.exo_controls_show));
        }
    }

    public final void a() {
        StyledPlayerControlView styledPlayerControlView = this.i;
        if (styledPlayerControlView != null) {
            styledPlayerControlView.b();
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public boolean dispatchKeyEvent(KeyEvent keyEvent) {
        boolean z;
        ac acVar = this.l;
        if (acVar != null && acVar.C()) {
            return super.dispatchKeyEvent(keyEvent);
        }
        int keyCode = keyEvent.getKeyCode();
        boolean z2 = keyCode == 19 || keyCode == 270 || keyCode == 22 || keyCode == 271 || keyCode == 20 || keyCode == 269 || keyCode == 21 || keyCode == 268 || keyCode == 23;
        if (!z2 || !b() || this.i.f21984c.c()) {
            if ((b() && this.i.a(keyEvent)) || super.dispatchKeyEvent(keyEvent)) {
                a(true);
            } else {
                z = false;
                if (z2) {
                    z = false;
                    if (b()) {
                        a(true);
                        z = false;
                    }
                }
                return z;
            }
        } else {
            a(true);
        }
        z = true;
        return z;
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        if (!b() || this.l == null) {
            return false;
        }
        int action = motionEvent.getAction();
        if (action == 0) {
            this.A = true;
            return true;
        } else if (action != 1 || !this.A) {
            return false;
        } else {
            this.A = false;
            return performClick();
        }
    }

    @Override // android.view.View
    public boolean onTrackballEvent(MotionEvent motionEvent) {
        if (!b() || this.l == null) {
            return false;
        }
        a(true);
        return true;
    }

    @Override // android.view.View
    public boolean performClick() {
        super.performClick();
        return d();
    }

    public void setAspectRatioListener(AspectRatioFrameLayout.a aVar) {
        com.google.android.exoplayer2.util.a.a(this.f22005b);
        this.f22005b.setAspectRatioListener(aVar);
    }

    public void setControlDispatcher(com.google.android.exoplayer2.g gVar) {
        com.google.android.exoplayer2.util.a.a(this.i);
        this.i.setControlDispatcher(gVar);
    }

    public void setControllerAutoShow(boolean z) {
        this.w = z;
    }

    public void setControllerHideDuringAds(boolean z) {
        this.x = z;
    }

    public void setControllerHideOnTouch(boolean z) {
        com.google.android.exoplayer2.util.a.a(this.i);
        this.y = z;
        k();
    }

    public void setControllerOnFullScreenModeChangedListener(StyledPlayerControlView.c cVar) {
        com.google.android.exoplayer2.util.a.a(this.i);
        this.i.setOnFullScreenModeChangedListener(cVar);
    }

    public void setControllerShowTimeoutMs(int i) {
        com.google.android.exoplayer2.util.a.a(this.i);
        this.v = i;
        if (this.i.f21984c.c()) {
            b(e());
        }
    }

    public void setControllerVisibilityListener(StyledPlayerControlView.l lVar) {
        com.google.android.exoplayer2.util.a.a(this.i);
        StyledPlayerControlView.l lVar2 = this.n;
        if (lVar2 != lVar) {
            if (lVar2 != null) {
                this.i.f21982a.remove(lVar2);
            }
            this.n = lVar;
            if (lVar != null) {
                this.i.a(lVar);
            }
        }
    }

    public void setCustomErrorMessage(CharSequence charSequence) {
        com.google.android.exoplayer2.util.a.b(this.h != null);
        this.u = charSequence;
        j();
    }

    public void setDefaultArtwork(Drawable drawable) {
        if (this.p != drawable) {
            this.p = drawable;
            c(false);
        }
    }

    public void setErrorMessageProvider(i<? super ExoPlaybackException> iVar) {
        if (this.t != iVar) {
            this.t = iVar;
            j();
        }
    }

    public void setExtraAdGroupMarkers(long[] jArr, boolean[] zArr) {
        com.google.android.exoplayer2.util.a.a(this.i);
        this.i.setExtraAdGroupMarkers(jArr, zArr);
    }

    public void setKeepContentOnPlayerReset(boolean z) {
        if (this.r != z) {
            this.r = z;
            c(false);
        }
    }

    @Deprecated
    public void setPlaybackPreparer(ab abVar) {
        com.google.android.exoplayer2.util.a.a(this.i);
        this.i.setPlaybackPreparer(abVar);
    }

    public void setPlayer(ac acVar) {
        com.google.android.exoplayer2.util.a.b(Looper.myLooper() == Looper.getMainLooper());
        com.google.android.exoplayer2.util.a.a(acVar == null || acVar.m() == Looper.getMainLooper());
        ac acVar2 = this.l;
        if (acVar2 != acVar) {
            if (acVar2 != null) {
                acVar2.b(this.f22004a);
                ac.d k = acVar2.k();
                if (k != null) {
                    k.b(this.f22004a);
                    View view = this.f22007d;
                    if (view instanceof TextureView) {
                        k.b((TextureView) view);
                    } else if (view instanceof SphericalGLSurfaceView) {
                        ((SphericalGLSurfaceView) view).setVideoComponent(null);
                    } else if (view instanceof SurfaceView) {
                        k.b((SurfaceView) view);
                    }
                }
                ac.c l = acVar2.l();
                if (l != null) {
                    l.b(this.f22004a);
                }
            }
            SubtitleView subtitleView = this.f;
            if (subtitleView != null) {
                subtitleView.setCues(null);
            }
            this.l = acVar;
            if (b()) {
                this.i.setPlayer(acVar);
            }
            i();
            j();
            c(true);
            if (acVar != null) {
                ac.d k2 = acVar.k();
                if (k2 != null) {
                    View view2 = this.f22007d;
                    if (view2 instanceof TextureView) {
                        k2.a((TextureView) view2);
                    } else if (view2 instanceof SphericalGLSurfaceView) {
                        ((SphericalGLSurfaceView) view2).setVideoComponent(k2);
                    } else if (view2 instanceof SurfaceView) {
                        k2.a((SurfaceView) view2);
                    }
                    k2.a(this.f22004a);
                }
                ac.c l2 = acVar.l();
                if (l2 != null) {
                    l2.a(this.f22004a);
                    SubtitleView subtitleView2 = this.f;
                    if (subtitleView2 != null) {
                        subtitleView2.setCues(l2.a());
                    }
                }
                acVar.a(this.f22004a);
                a(false);
                return;
            }
            a();
        }
    }

    public void setRepeatToggleModes(int i) {
        com.google.android.exoplayer2.util.a.a(this.i);
        this.i.setRepeatToggleModes(i);
    }

    public void setResizeMode(int i) {
        com.google.android.exoplayer2.util.a.a(this.f22005b);
        this.f22005b.setResizeMode(i);
    }

    public void setShowBuffering(int i) {
        if (this.q != i) {
            this.q = i;
            i();
        }
    }

    public void setShowFastForwardButton(boolean z) {
        com.google.android.exoplayer2.util.a.a(this.i);
        this.i.setShowFastForwardButton(z);
    }

    public void setShowMultiWindowTimeBar(boolean z) {
        com.google.android.exoplayer2.util.a.a(this.i);
        this.i.setShowMultiWindowTimeBar(z);
    }

    public void setShowNextButton(boolean z) {
        com.google.android.exoplayer2.util.a.a(this.i);
        this.i.setShowNextButton(z);
    }

    public void setShowPreviousButton(boolean z) {
        com.google.android.exoplayer2.util.a.a(this.i);
        this.i.setShowPreviousButton(z);
    }

    public void setShowRewindButton(boolean z) {
        com.google.android.exoplayer2.util.a.a(this.i);
        this.i.setShowRewindButton(z);
    }

    public void setShowShuffleButton(boolean z) {
        com.google.android.exoplayer2.util.a.a(this.i);
        this.i.setShowShuffleButton(z);
    }

    public void setShowSubtitleButton(boolean z) {
        com.google.android.exoplayer2.util.a.a(this.i);
        this.i.setShowSubtitleButton(z);
    }

    public void setShowVrButton(boolean z) {
        com.google.android.exoplayer2.util.a.a(this.i);
        this.i.setShowVrButton(z);
    }

    public void setShutterBackgroundColor(int i) {
        View view = this.f22006c;
        if (view != null) {
            view.setBackgroundColor(i);
        }
    }

    public void setUseArtwork(boolean z) {
        com.google.android.exoplayer2.util.a.b(!z || this.e != null);
        if (this.o != z) {
            this.o = z;
            c(false);
        }
    }

    public void setUseController(boolean z) {
        com.google.android.exoplayer2.util.a.b(!z || this.i != null);
        if (this.m != z) {
            this.m = z;
            if (b()) {
                this.i.setPlayer(this.l);
            } else {
                StyledPlayerControlView styledPlayerControlView = this.i;
                if (styledPlayerControlView != null) {
                    styledPlayerControlView.b();
                    this.i.setPlayer(null);
                }
            }
            k();
        }
    }

    public void setUseSensorRotation(boolean z) {
        if (this.s != z) {
            this.s = z;
            View view = this.f22007d;
            if (view instanceof SphericalGLSurfaceView) {
                ((SphericalGLSurfaceView) view).setUseSensorRotation(z);
            }
        }
    }

    @Override // android.view.View
    public void setVisibility(int i) {
        super.setVisibility(i);
        View view = this.f22007d;
        if (view instanceof SurfaceView) {
            view.setVisibility(i);
        }
    }
}
