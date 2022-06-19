package com.google.android.exoplayer2.p070ui;

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
import com.google.android.exoplayer2.metadata.Metadata;
import com.google.android.exoplayer2.metadata.flac.PictureFrame;
import com.google.android.exoplayer2.metadata.id3.ApicFrame;
import com.google.android.exoplayer2.p070ui.AspectRatioFrameLayout;
import com.google.android.exoplayer2.p070ui.PlayerControlView;
import com.google.android.exoplayer2.source.TrackGroupArray;
import com.mopub.mobileads.AdData;
import java.util.ArrayList;
import java.util.List;
import java.util.Objects;
import org.checkerframework.checker.nullness.qual.EnsuresNonNullIf;
import org.checkerframework.checker.nullness.qual.RequiresNonNull;
import p1727n3.p1789g0.C26232y;
import p1727n3.p1807k.p1809b.C26467a;
import p193e.p1577m.p1578a.p1596c.AbstractC24675p0;
import p193e.p1577m.p1578a.p1596c.AbstractC24760q0;
import p193e.p1577m.p1578a.p1596c.AbstractC24856w;
import p193e.p1577m.p1578a.p1596c.AbstractC24861y0;
import p193e.p1577m.p1578a.p1596c.C24189b0;
import p193e.p1577m.p1578a.p1596c.C24652o0;
import p193e.p1577m.p1578a.p1596c.C24811r0;
import p193e.p1577m.p1578a.p1596c.p1622m1.AbstractC24572k;
import p193e.p1577m.p1578a.p1596c.p1622m1.C24562b;
import p193e.p1577m.p1578a.p1596c.p1631n1.AbstractC24645f;
import p193e.p1577m.p1578a.p1596c.p1631n1.C24648g;
import p193e.p1577m.p1578a.p1596c.p1632o1.p1633h.AbstractC24669g;
import p193e.p1577m.p1578a.p1596c.p1632o1.p1633h.C24670h;
import p193e.p1577m.p1578a.p1596c.p1636q1.AbstractC24783k;
import p193e.p1577m.p1578a.p1596c.p1636q1.C24773d0;
import p193e.p1577m.p1578a.p1596c.p1637r1.AbstractC24833r;
import p193e.p1577m.p1578a.p1596c.p1637r1.C24825l;
import p193e.p1577m.p1578a.p1596c.p1637r1.C24832q;
/* renamed from: com.google.android.exoplayer2.ui.PlayerView */
/* loaded from: classes2-dex2jar.jar:com/google/android/exoplayer2/ui/PlayerView.class */
public class PlayerView extends FrameLayout {
    private static final int PICTURE_TYPE_FRONT_COVER = 3;
    private static final int PICTURE_TYPE_NOT_SET = -1;
    public static final int SHOW_BUFFERING_ALWAYS = 2;
    public static final int SHOW_BUFFERING_NEVER = 0;
    public static final int SHOW_BUFFERING_WHEN_PLAYING = 1;
    private static final int SURFACE_TYPE_NONE = 0;
    private static final int SURFACE_TYPE_SPHERICAL_GL_SURFACE_VIEW = 3;
    private static final int SURFACE_TYPE_SURFACE_VIEW = 1;
    private static final int SURFACE_TYPE_TEXTURE_VIEW = 2;
    private static final int SURFACE_TYPE_VIDEO_DECODER_GL_SURFACE_VIEW = 4;
    private final FrameLayout adOverlayFrameLayout;
    private final ImageView artworkView;
    private final View bufferingView;
    private final View$OnLayoutChangeListenerC2017b componentListener;
    private final AspectRatioFrameLayout contentFrame;
    private final PlayerControlView controller;
    private boolean controllerAutoShow;
    private boolean controllerHideDuringAds;
    private boolean controllerHideOnTouch;
    private int controllerShowTimeoutMs;
    private PlayerControlView.AbstractC2015d controllerVisibilityListener;
    private CharSequence customErrorMessage;
    private Drawable defaultArtwork;
    private AbstractC24783k<? super C24189b0> errorMessageProvider;
    private final TextView errorMessageView;
    private boolean isTouching;
    private boolean keepContentOnPlayerReset;
    private final FrameLayout overlayFrameLayout;
    private AbstractC24760q0 player;
    private int showBuffering;
    private final View shutterView;
    private final SubtitleView subtitleView;
    private final View surfaceView;
    private int textureViewRotation;
    private boolean useArtwork;
    private boolean useController;
    private boolean useSensorRotation;

    /* renamed from: com.google.android.exoplayer2.ui.PlayerView$b */
    /* loaded from: classes2-dex2jar.jar:com/google/android/exoplayer2/ui/PlayerView$b.class */
    public final class View$OnLayoutChangeListenerC2017b implements AbstractC24760q0.AbstractC24762b, AbstractC24572k, AbstractC24833r, View.OnLayoutChangeListener, AbstractC24669g, PlayerControlView.AbstractC2015d {
        public View$OnLayoutChangeListenerC2017b(C2016a c2016a) {
            PlayerView.this = r4;
        }

        @Override // p193e.p1577m.p1578a.p1596c.AbstractC24760q0.AbstractC24762b
        /* renamed from: A0 */
        public /* synthetic */ void mo4655A0() {
            C24811r0.m4490i(this);
        }

        @Override // p193e.p1577m.p1578a.p1596c.AbstractC24760q0.AbstractC24762b
        /* renamed from: G5 */
        public void mo4654G5(boolean z, int i) {
            PlayerView.this.updateBuffering();
            PlayerView.this.updateErrorMessage();
            if (!PlayerView.this.isPlayingAd() || !PlayerView.this.controllerHideDuringAds) {
                PlayerView.this.maybeShowController(false);
            } else {
                PlayerView.this.hideController();
            }
        }

        @Override // p193e.p1577m.p1578a.p1596c.AbstractC24760q0.AbstractC24762b
        /* renamed from: N7 */
        public /* synthetic */ void mo4653N7(AbstractC24861y0 abstractC24861y0, int i) {
            C24811r0.m4488k(this, abstractC24861y0, i);
        }

        @Override // p193e.p1577m.p1578a.p1596c.AbstractC24760q0.AbstractC24762b
        /* renamed from: Pi */
        public /* synthetic */ void mo4652Pi(AbstractC24861y0 abstractC24861y0, Object obj, int i) {
            C24811r0.m4487l(this, abstractC24861y0, obj, i);
        }

        @Override // p193e.p1577m.p1578a.p1596c.AbstractC24760q0.AbstractC24762b
        /* renamed from: S8 */
        public /* synthetic */ void mo4651S8(boolean z) {
            C24811r0.m4489j(this, z);
        }

        @Override // p193e.p1577m.p1578a.p1596c.AbstractC24760q0.AbstractC24762b
        /* renamed from: Xl */
        public /* synthetic */ void mo4650Xl(boolean z) {
            C24811r0.m4498a(this, z);
        }

        @Override // p193e.p1577m.p1578a.p1596c.AbstractC24760q0.AbstractC24762b
        /* renamed from: Zl */
        public /* synthetic */ void mo4649Zl(int i) {
            C24811r0.m4495d(this, i);
        }

        /* JADX WARN: Code restructure failed: missing block: B:13:0x003a, code lost:
            if (r8 == 270) goto L14;
         */
        @Override // p193e.p1577m.p1578a.p1596c.p1637r1.AbstractC24833r
        /* renamed from: a */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public void mo4440a(int r6, int r7, int r8, float r9) {
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
                com.google.android.exoplayer2.ui.PlayerView r0 = com.google.android.exoplayer2.p070ui.PlayerView.this
                android.view.View r0 = com.google.android.exoplayer2.p070ui.PlayerView.access$200(r0)
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
                com.google.android.exoplayer2.ui.PlayerView r0 = com.google.android.exoplayer2.p070ui.PlayerView.this
                int r0 = com.google.android.exoplayer2.p070ui.PlayerView.access$300(r0)
                if (r0 == 0) goto L58
                r0 = r5
                com.google.android.exoplayer2.ui.PlayerView r0 = com.google.android.exoplayer2.p070ui.PlayerView.this
                android.view.View r0 = com.google.android.exoplayer2.p070ui.PlayerView.access$200(r0)
                r1 = r5
                r0.removeOnLayoutChangeListener(r1)
            L58:
                r0 = r5
                com.google.android.exoplayer2.ui.PlayerView r0 = com.google.android.exoplayer2.p070ui.PlayerView.this
                r1 = r8
                int r0 = com.google.android.exoplayer2.p070ui.PlayerView.access$302(r0, r1)
                r0 = r5
                com.google.android.exoplayer2.ui.PlayerView r0 = com.google.android.exoplayer2.p070ui.PlayerView.this
                int r0 = com.google.android.exoplayer2.p070ui.PlayerView.access$300(r0)
                if (r0 == 0) goto L76
                r0 = r5
                com.google.android.exoplayer2.ui.PlayerView r0 = com.google.android.exoplayer2.p070ui.PlayerView.this
                android.view.View r0 = com.google.android.exoplayer2.p070ui.PlayerView.access$200(r0)
                r1 = r5
                r0.addOnLayoutChangeListener(r1)
            L76:
                r0 = r5
                com.google.android.exoplayer2.ui.PlayerView r0 = com.google.android.exoplayer2.p070ui.PlayerView.this
                android.view.View r0 = com.google.android.exoplayer2.p070ui.PlayerView.access$200(r0)
                android.view.TextureView r0 = (android.view.TextureView) r0
                r1 = r5
                com.google.android.exoplayer2.ui.PlayerView r1 = com.google.android.exoplayer2.p070ui.PlayerView.this
                int r1 = com.google.android.exoplayer2.p070ui.PlayerView.access$300(r1)
                com.google.android.exoplayer2.p070ui.PlayerView.access$400(r0, r1)
            L8a:
                r0 = r5
                com.google.android.exoplayer2.ui.PlayerView r0 = com.google.android.exoplayer2.p070ui.PlayerView.this
                r11 = r0
                r0 = r11
                r1 = r10
                r2 = r11
                com.google.android.exoplayer2.ui.AspectRatioFrameLayout r2 = com.google.android.exoplayer2.p070ui.PlayerView.access$500(r2)
                r3 = r5
                com.google.android.exoplayer2.ui.PlayerView r3 = com.google.android.exoplayer2.p070ui.PlayerView.this
                android.view.View r3 = com.google.android.exoplayer2.p070ui.PlayerView.access$200(r3)
                r0.onContentAspectRatioChanged(r1, r2, r3)
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.p070ui.PlayerView.View$OnLayoutChangeListenerC2017b.mo4440a(int, int, int, float):void");
        }

        @Override // com.google.android.exoplayer2.p070ui.PlayerControlView.AbstractC2015d
        /* renamed from: b */
        public void mo39192b(int i) {
            PlayerView.this.updateContentDescription();
        }

        @Override // p193e.p1577m.p1578a.p1596c.p1637r1.AbstractC24833r
        /* renamed from: c */
        public void mo4439c() {
            if (PlayerView.this.shutterView != null) {
                PlayerView.this.shutterView.setVisibility(4);
            }
        }

        @Override // p193e.p1577m.p1578a.p1596c.AbstractC24760q0.AbstractC24762b
        /* renamed from: fs */
        public void mo4648fs(TrackGroupArray trackGroupArray, C24648g c24648g) {
            PlayerView.this.updateForCurrentTrackSelections(false);
        }

        @Override // p193e.p1577m.p1578a.p1596c.AbstractC24760q0.AbstractC24762b
        /* renamed from: h5 */
        public void mo4647h5(int i) {
            if (!PlayerView.this.isPlayingAd() || !PlayerView.this.controllerHideDuringAds) {
                return;
            }
            PlayerView.this.hideController();
        }

        @Override // p193e.p1577m.p1578a.p1596c.AbstractC24760q0.AbstractC24762b
        /* renamed from: hy */
        public /* synthetic */ void mo4646hy(int i) {
            C24811r0.m4491h(this, i);
        }

        @Override // p193e.p1577m.p1578a.p1596c.p1637r1.AbstractC24833r
        /* renamed from: i */
        public /* synthetic */ void mo4438i(int i, int i2) {
            C24832q.m4442a(this, i, i2);
        }

        @Override // p193e.p1577m.p1578a.p1596c.p1622m1.AbstractC24572k
        /* renamed from: j */
        public void mo4905j(List<C24562b> list) {
            if (PlayerView.this.subtitleView != null) {
                PlayerView.this.subtitleView.setCues(list);
            }
        }

        @Override // android.view.View.OnLayoutChangeListener
        public void onLayoutChange(View view, int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8) {
            PlayerView.applyTextureViewRotation((TextureView) view, PlayerView.this.textureViewRotation);
        }

        @Override // p193e.p1577m.p1578a.p1596c.AbstractC24760q0.AbstractC24762b
        /* renamed from: rs */
        public /* synthetic */ void mo4645rs(C24652o0 c24652o0) {
            C24811r0.m4496c(this, c24652o0);
        }

        @Override // p193e.p1577m.p1578a.p1596c.AbstractC24760q0.AbstractC24762b
        /* renamed from: tf */
        public /* synthetic */ void mo4644tf(C24189b0 c24189b0) {
            C24811r0.m4494e(this, c24189b0);
        }

        @Override // p193e.p1577m.p1578a.p1596c.AbstractC24760q0.AbstractC24762b
        /* renamed from: w1 */
        public /* synthetic */ void mo4643w1(boolean z) {
            C24811r0.m4497b(this, z);
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
        boolean z2;
        int i3;
        boolean z3;
        boolean z4;
        int i4;
        int i5;
        boolean z5;
        int i6;
        boolean z6;
        int i7;
        View$OnLayoutChangeListenerC2017b view$OnLayoutChangeListenerC2017b = new View$OnLayoutChangeListenerC2017b(null);
        this.componentListener = view$OnLayoutChangeListenerC2017b;
        if (isInEditMode()) {
            this.contentFrame = null;
            this.shutterView = null;
            this.surfaceView = null;
            this.artworkView = null;
            this.subtitleView = null;
            this.bufferingView = null;
            this.errorMessageView = null;
            this.controller = null;
            this.adOverlayFrameLayout = null;
            this.overlayFrameLayout = null;
            ImageView imageView = new ImageView(context);
            if (C24773d0.f69427a >= 23) {
                configureEditModeLogoV23(getResources(), imageView);
            } else {
                configureEditModeLogo(getResources(), imageView);
            }
            addView(imageView);
            return;
        }
        int i8 = C2018R.layout.exo_player_view;
        this.useSensorRotation = true;
        if (attributeSet != null) {
            TypedArray obtainStyledAttributes = context.getTheme().obtainStyledAttributes(attributeSet, C2018R.styleable.PlayerView, 0, 0);
            try {
                int i9 = C2018R.styleable.PlayerView_shutter_background_color;
                z6 = obtainStyledAttributes.hasValue(i9);
                i6 = obtainStyledAttributes.getColor(i9, 0);
                i8 = obtainStyledAttributes.getResourceId(C2018R.styleable.PlayerView_player_layout_id, i8);
                boolean z7 = obtainStyledAttributes.getBoolean(C2018R.styleable.PlayerView_use_artwork, true);
                int resourceId = obtainStyledAttributes.getResourceId(C2018R.styleable.PlayerView_default_artwork, 0);
                boolean z8 = obtainStyledAttributes.getBoolean(C2018R.styleable.PlayerView_use_controller, true);
                i5 = obtainStyledAttributes.getInt(C2018R.styleable.PlayerView_surface_type, 1);
                i4 = obtainStyledAttributes.getInt(C2018R.styleable.PlayerView_resize_mode, 0);
                int i10 = obtainStyledAttributes.getInt(C2018R.styleable.PlayerView_show_timeout, AdData.DEFAULT_DURATION_FOR_REWARDED_IMAGE_CLOSE_BUTTON_MILLIS);
                z4 = obtainStyledAttributes.getBoolean(C2018R.styleable.PlayerView_hide_on_touch, true);
                z3 = obtainStyledAttributes.getBoolean(C2018R.styleable.PlayerView_auto_show, true);
                i3 = obtainStyledAttributes.getInteger(C2018R.styleable.PlayerView_show_buffering, 0);
                this.keepContentOnPlayerReset = obtainStyledAttributes.getBoolean(C2018R.styleable.PlayerView_keep_content_on_player_reset, this.keepContentOnPlayerReset);
                z2 = obtainStyledAttributes.getBoolean(C2018R.styleable.PlayerView_hide_during_ads, true);
                this.useSensorRotation = obtainStyledAttributes.getBoolean(C2018R.styleable.PlayerView_use_sensor_rotation, this.useSensorRotation);
                obtainStyledAttributes.recycle();
                z = z7;
                i2 = resourceId;
                z5 = z8;
                i7 = i10;
            } catch (Throwable th) {
                obtainStyledAttributes.recycle();
                throw th;
            }
        } else {
            z2 = true;
            z5 = true;
            i7 = 5000;
            i4 = 0;
            i3 = 0;
            i6 = 0;
            z6 = false;
            i2 = 0;
            z = true;
            z4 = true;
            z3 = true;
            i5 = 1;
        }
        LayoutInflater.from(context).inflate(i8, this);
        setDescendantFocusability(262144);
        AspectRatioFrameLayout aspectRatioFrameLayout = (AspectRatioFrameLayout) findViewById(C2018R.C2020id.exo_content_frame);
        this.contentFrame = aspectRatioFrameLayout;
        if (aspectRatioFrameLayout != null) {
            setResizeModeRaw(aspectRatioFrameLayout, i4);
        }
        View findViewById = findViewById(C2018R.C2020id.exo_shutter);
        this.shutterView = findViewById;
        if (findViewById != null && z6) {
            findViewById.setBackgroundColor(i6);
        }
        if (aspectRatioFrameLayout == null || i5 == 0) {
            this.surfaceView = null;
        } else {
            ViewGroup.LayoutParams layoutParams = new ViewGroup.LayoutParams(-1, -1);
            if (i5 == 2) {
                this.surfaceView = new TextureView(context);
            } else if (i5 == 3) {
                C24670h c24670h = new C24670h(context);
                c24670h.setSingleTapListener(view$OnLayoutChangeListenerC2017b);
                c24670h.setUseSensorRotation(this.useSensorRotation);
                this.surfaceView = c24670h;
            } else if (i5 != 4) {
                this.surfaceView = new SurfaceView(context);
            } else {
                this.surfaceView = new C24825l(context);
            }
            this.surfaceView.setLayoutParams(layoutParams);
            aspectRatioFrameLayout.addView(this.surfaceView, 0);
        }
        this.adOverlayFrameLayout = (FrameLayout) findViewById(C2018R.C2020id.exo_ad_overlay);
        this.overlayFrameLayout = (FrameLayout) findViewById(C2018R.C2020id.exo_overlay);
        ImageView imageView2 = (ImageView) findViewById(C2018R.C2020id.exo_artwork);
        this.artworkView = imageView2;
        this.useArtwork = z && imageView2 != null;
        if (i2 != 0) {
            Context context2 = getContext();
            Object obj = C26467a.f74235a;
            this.defaultArtwork = C26467a.C26470c.m1789b(context2, i2);
        }
        SubtitleView subtitleView = (SubtitleView) findViewById(C2018R.C2020id.exo_subtitles);
        this.subtitleView = subtitleView;
        if (subtitleView != null) {
            subtitleView.m39190b();
            subtitleView.m39189c();
        }
        View findViewById2 = findViewById(C2018R.C2020id.exo_buffering);
        this.bufferingView = findViewById2;
        if (findViewById2 != null) {
            findViewById2.setVisibility(8);
        }
        this.showBuffering = i3;
        TextView textView = (TextView) findViewById(C2018R.C2020id.exo_error_message);
        this.errorMessageView = textView;
        if (textView != null) {
            textView.setVisibility(8);
        }
        int i11 = C2018R.C2020id.exo_controller;
        PlayerControlView playerControlView = (PlayerControlView) findViewById(i11);
        View findViewById3 = findViewById(C2018R.C2020id.exo_controller_placeholder);
        if (playerControlView != null) {
            this.controller = playerControlView;
        } else if (findViewById3 != null) {
            PlayerControlView playerControlView2 = new PlayerControlView(context, null, 0, attributeSet);
            this.controller = playerControlView2;
            playerControlView2.setId(i11);
            playerControlView2.setLayoutParams(findViewById3.getLayoutParams());
            ViewGroup viewGroup = (ViewGroup) findViewById3.getParent();
            int indexOfChild = viewGroup.indexOfChild(findViewById3);
            viewGroup.removeView(findViewById3);
            viewGroup.addView(playerControlView2, indexOfChild);
        } else {
            this.controller = null;
        }
        PlayerControlView playerControlView3 = this.controller;
        this.controllerShowTimeoutMs = playerControlView3 == null ? 0 : i7;
        this.controllerHideOnTouch = z4;
        this.controllerAutoShow = z3;
        this.controllerHideDuringAds = z2;
        this.useController = z5 && playerControlView3 != null;
        hideController();
        updateContentDescription();
        PlayerControlView playerControlView4 = this.controller;
        if (playerControlView4 == null) {
            return;
        }
        playerControlView4.f5150b.add(view$OnLayoutChangeListenerC2017b);
    }

    public static void applyTextureViewRotation(TextureView textureView, int i) {
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

    private void closeShutter() {
        View view = this.shutterView;
        if (view != null) {
            view.setVisibility(0);
        }
    }

    private static void configureEditModeLogo(Resources resources, ImageView imageView) {
        imageView.setImageDrawable(resources.getDrawable(C2018R.C2019drawable.exo_edit_mode_logo));
        imageView.setBackgroundColor(resources.getColor(C2018R.color.exo_edit_mode_background_color));
    }

    private static void configureEditModeLogoV23(Resources resources, ImageView imageView) {
        imageView.setImageDrawable(resources.getDrawable(C2018R.C2019drawable.exo_edit_mode_logo, null));
        imageView.setBackgroundColor(resources.getColor(C2018R.color.exo_edit_mode_background_color, null));
    }

    private void hideArtwork() {
        ImageView imageView = this.artworkView;
        if (imageView != null) {
            imageView.setImageResource(17170445);
            this.artworkView.setVisibility(4);
        }
    }

    private boolean isDpadKey(int i) {
        return i == 19 || i == 270 || i == 22 || i == 271 || i == 20 || i == 269 || i == 21 || i == 268 || i == 23;
    }

    public boolean isPlayingAd() {
        AbstractC24760q0 abstractC24760q0 = this.player;
        return abstractC24760q0 != null && abstractC24760q0.isPlayingAd() && this.player.getPlayWhenReady();
    }

    public void maybeShowController(boolean z) {
        if ((!isPlayingAd() || !this.controllerHideDuringAds) && useController()) {
            boolean z2 = this.controller.m39208d() && this.controller.getShowTimeoutMs() <= 0;
            boolean shouldShowControllerIndefinitely = shouldShowControllerIndefinitely();
            if (!z && !z2 && !shouldShowControllerIndefinitely) {
                return;
            }
            showController(shouldShowControllerIndefinitely);
        }
    }

    @RequiresNonNull({"artworkView"})
    private boolean setArtworkFromMetadata(Metadata metadata) {
        boolean z;
        boolean z2;
        int i;
        int i2;
        byte[] bArr;
        int i3 = -1;
        int i4 = 0;
        boolean z3 = false;
        while (true) {
            boolean z4 = z3;
            Metadata.Entry[] entryArr = metadata.f4888a;
            z = z4;
            if (i4 >= entryArr.length) {
                break;
            }
            Metadata.Entry entry = entryArr[i4];
            if (entry instanceof ApicFrame) {
                ApicFrame apicFrame = (ApicFrame) entry;
                bArr = apicFrame.f4919e;
                i2 = apicFrame.f4918d;
            } else {
                i = i3;
                z2 = z4;
                if (entry instanceof PictureFrame) {
                    PictureFrame pictureFrame = (PictureFrame) entry;
                    bArr = pictureFrame.f4904h;
                    i2 = pictureFrame.f4897a;
                } else {
                    continue;
                    i4++;
                    i3 = i;
                    z3 = z2;
                }
            }
            if (i3 != -1) {
                i = i3;
                z2 = z4;
                if (i2 != 3) {
                    continue;
                    i4++;
                    i3 = i;
                    z3 = z2;
                }
            }
            z2 = setDrawableArtwork(new BitmapDrawable(getResources(), BitmapFactory.decodeByteArray(bArr, 0, bArr.length)));
            if (i2 == 3) {
                z = z2;
                break;
            }
            i = i2;
            i4++;
            i3 = i;
            z3 = z2;
        }
        return z;
    }

    @RequiresNonNull({"artworkView"})
    private boolean setDrawableArtwork(Drawable drawable) {
        if (drawable != null) {
            int intrinsicWidth = drawable.getIntrinsicWidth();
            int intrinsicHeight = drawable.getIntrinsicHeight();
            if (intrinsicWidth <= 0 || intrinsicHeight <= 0) {
                return false;
            }
            onContentAspectRatioChanged(intrinsicWidth / intrinsicHeight, this.contentFrame, this.artworkView);
            this.artworkView.setImageDrawable(drawable);
            this.artworkView.setVisibility(0);
            return true;
        }
        return false;
    }

    private static void setResizeModeRaw(AspectRatioFrameLayout aspectRatioFrameLayout, int i) {
        aspectRatioFrameLayout.setResizeMode(i);
    }

    private boolean shouldShowControllerIndefinitely() {
        boolean z;
        AbstractC24760q0 abstractC24760q0 = this.player;
        if (abstractC24760q0 == null) {
            return true;
        }
        int playbackState = abstractC24760q0.getPlaybackState();
        if (this.controllerAutoShow) {
            z = true;
            if (playbackState != 1) {
                z = true;
                if (playbackState != 4) {
                    if (!this.player.getPlayWhenReady()) {
                        z = true;
                    }
                }
            }
            return z;
        }
        z = false;
        return z;
    }

    private void showController(boolean z) {
        if (!useController()) {
            return;
        }
        this.controller.setShowTimeoutMs(z ? 0 : this.controllerShowTimeoutMs);
        this.controller.m39201k();
    }

    public static void switchTargetView(AbstractC24760q0 abstractC24760q0, PlayerView playerView, PlayerView playerView2) {
        if (playerView == playerView2) {
            return;
        }
        if (playerView2 != null) {
            playerView2.setPlayer(abstractC24760q0);
        }
        if (playerView == null) {
            return;
        }
        playerView.setPlayer(null);
    }

    public boolean toggleControllerVisibility() {
        if (!useController() || this.player == null) {
            return false;
        }
        if (!this.controller.m39208d()) {
            maybeShowController(true);
            return true;
        } else if (!this.controllerHideOnTouch) {
            return true;
        } else {
            this.controller.m39210b();
            return true;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:18:0x0052  */
    /* JADX WARN: Removed duplicated region for block: B:19:0x0058  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void updateBuffering() {
        /*
            r3 = this;
            r0 = r3
            android.view.View r0 = r0.bufferingView
            if (r0 == 0) goto L62
            r0 = r3
            e.m.a.c.q0 r0 = r0.player
            r4 = r0
            r0 = 1
            r5 = r0
            r0 = 0
            r6 = r0
            r0 = r4
            if (r0 == 0) goto L45
            r0 = r4
            int r0 = r0.getPlaybackState()
            r1 = 2
            if (r0 != r1) goto L45
            r0 = r3
            int r0 = r0.showBuffering
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
            e.m.a.c.q0 r0 = r0.player
            boolean r0 = r0.getPlayWhenReady()
            if (r0 == 0) goto L45
            r0 = r5
            r8 = r0
            goto L48
        L45:
            r0 = 0
            r8 = r0
        L48:
            r0 = r3
            android.view.View r0 = r0.bufferingView
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
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.p070ui.PlayerView.updateBuffering():void");
    }

    public void updateContentDescription() {
        PlayerControlView playerControlView = this.controller;
        String str = null;
        if (playerControlView == null || !this.useController) {
            setContentDescription(null);
        } else if (playerControlView.getVisibility() != 0) {
            setContentDescription(getResources().getString(C2018R.string.exo_controls_show));
        } else {
            if (this.controllerHideOnTouch) {
                str = getResources().getString(C2018R.string.exo_controls_hide);
            }
            setContentDescription(str);
        }
    }

    public void updateErrorMessage() {
        AbstractC24783k<? super C24189b0> abstractC24783k;
        TextView textView = this.errorMessageView;
        if (textView != null) {
            CharSequence charSequence = this.customErrorMessage;
            if (charSequence != null) {
                textView.setText(charSequence);
                this.errorMessageView.setVisibility(0);
                return;
            }
            AbstractC24760q0 abstractC24760q0 = this.player;
            C24189b0 playbackError = abstractC24760q0 != null ? abstractC24760q0.getPlaybackError() : null;
            if (playbackError == null || (abstractC24783k = this.errorMessageProvider) == null) {
                this.errorMessageView.setVisibility(8);
                return;
            }
            this.errorMessageView.setText((CharSequence) abstractC24783k.m4589a(playbackError).second);
            this.errorMessageView.setVisibility(0);
        }
    }

    public void updateForCurrentTrackSelections(boolean z) {
        AbstractC24760q0 abstractC24760q0 = this.player;
        if (abstractC24760q0 != null) {
            if (!(abstractC24760q0.getCurrentTrackGroups().f5003a == 0)) {
                if (z && !this.keepContentOnPlayerReset) {
                    closeShutter();
                }
                C24648g currentTrackSelections = abstractC24760q0.getCurrentTrackSelections();
                for (int i = 0; i < currentTrackSelections.f69026a; i++) {
                    if (abstractC24760q0.getRendererType(i) == 2 && currentTrackSelections.f69027b[i] != null) {
                        hideArtwork();
                        return;
                    }
                }
                closeShutter();
                if (useArtwork()) {
                    for (int i2 = 0; i2 < currentTrackSelections.f69026a; i2++) {
                        AbstractC24645f abstractC24645f = currentTrackSelections.f69027b[i2];
                        if (abstractC24645f != null) {
                            for (int i3 = 0; i3 < abstractC24645f.length(); i3++) {
                                Metadata metadata = abstractC24645f.mo4795h(i3).f4845g;
                                if (metadata != null && setArtworkFromMetadata(metadata)) {
                                    return;
                                }
                            }
                            continue;
                        }
                    }
                    if (setDrawableArtwork(this.defaultArtwork)) {
                        return;
                    }
                }
                hideArtwork();
                return;
            }
        }
        if (!this.keepContentOnPlayerReset) {
            hideArtwork();
            closeShutter();
        }
    }

    @EnsuresNonNullIf(expression = {"artworkView"}, result = true)
    private boolean useArtwork() {
        if (this.useArtwork) {
            C26232y.m2278z(this.artworkView);
            return true;
        }
        return false;
    }

    @EnsuresNonNullIf(expression = {"controller"}, result = true)
    private boolean useController() {
        if (this.useController) {
            C26232y.m2278z(this.controller);
            return true;
        }
        return false;
    }

    @Override // android.view.ViewGroup, android.view.View
    public boolean dispatchKeyEvent(KeyEvent keyEvent) {
        boolean z;
        AbstractC24760q0 abstractC24760q0 = this.player;
        if (abstractC24760q0 == null || !abstractC24760q0.isPlayingAd()) {
            boolean isDpadKey = isDpadKey(keyEvent.getKeyCode());
            if (isDpadKey && useController() && !this.controller.m39208d()) {
                maybeShowController(true);
            } else if (!dispatchMediaKeyEvent(keyEvent) && !super.dispatchKeyEvent(keyEvent)) {
                z = false;
                if (isDpadKey) {
                    z = false;
                    if (useController()) {
                        maybeShowController(true);
                        z = false;
                    }
                }
                return z;
            } else {
                maybeShowController(true);
            }
            z = true;
            return z;
        }
        return super.dispatchKeyEvent(keyEvent);
    }

    public boolean dispatchMediaKeyEvent(KeyEvent keyEvent) {
        return useController() && this.controller.m39211a(keyEvent);
    }

    public View[] getAdOverlayViews() {
        ArrayList arrayList = new ArrayList();
        FrameLayout frameLayout = this.overlayFrameLayout;
        if (frameLayout != null) {
            arrayList.add(frameLayout);
        }
        PlayerControlView playerControlView = this.controller;
        if (playerControlView != null) {
            arrayList.add(playerControlView);
        }
        return (View[]) arrayList.toArray(new View[0]);
    }

    public ViewGroup getAdViewGroup() {
        FrameLayout frameLayout = this.adOverlayFrameLayout;
        if (frameLayout != null) {
            return frameLayout;
        }
        throw new IllegalStateException("exo_ad_overlay must be present for ad playback");
    }

    public boolean getControllerAutoShow() {
        return this.controllerAutoShow;
    }

    public boolean getControllerHideOnTouch() {
        return this.controllerHideOnTouch;
    }

    public int getControllerShowTimeoutMs() {
        return this.controllerShowTimeoutMs;
    }

    public Drawable getDefaultArtwork() {
        return this.defaultArtwork;
    }

    public FrameLayout getOverlayFrameLayout() {
        return this.overlayFrameLayout;
    }

    public AbstractC24760q0 getPlayer() {
        return this.player;
    }

    public int getResizeMode() {
        C26232y.m2278z(this.contentFrame);
        return this.contentFrame.getResizeMode();
    }

    public SubtitleView getSubtitleView() {
        return this.subtitleView;
    }

    public boolean getUseArtwork() {
        return this.useArtwork;
    }

    public boolean getUseController() {
        return this.useController;
    }

    public View getVideoSurfaceView() {
        return this.surfaceView;
    }

    public void hideController() {
        PlayerControlView playerControlView = this.controller;
        if (playerControlView != null) {
            playerControlView.m39210b();
        }
    }

    public boolean isControllerVisible() {
        PlayerControlView playerControlView = this.controller;
        return playerControlView != null && playerControlView.m39208d();
    }

    public void onContentAspectRatioChanged(float f, AspectRatioFrameLayout aspectRatioFrameLayout, View view) {
        if (aspectRatioFrameLayout != null) {
            if (view instanceof C24670h) {
                f = 0.0f;
            }
            aspectRatioFrameLayout.setAspectRatio(f);
        }
    }

    public void onPause() {
        View view = this.surfaceView;
        if (view instanceof C24670h) {
            ((C24670h) view).onPause();
        }
    }

    public void onResume() {
        View view = this.surfaceView;
        if (view instanceof C24670h) {
            ((C24670h) view).onResume();
        }
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        if (!useController() || this.player == null) {
            return false;
        }
        int action = motionEvent.getAction();
        if (action == 0) {
            this.isTouching = true;
            return true;
        } else if (action != 1 || !this.isTouching) {
            return false;
        } else {
            this.isTouching = false;
            performClick();
            return true;
        }
    }

    @Override // android.view.View
    public boolean onTrackballEvent(MotionEvent motionEvent) {
        if (!useController() || this.player == null) {
            return false;
        }
        maybeShowController(true);
        return true;
    }

    @Override // android.view.View
    public boolean performClick() {
        super.performClick();
        return toggleControllerVisibility();
    }

    public void setAspectRatioListener(AspectRatioFrameLayout.AbstractC2010b abstractC2010b) {
        C26232y.m2278z(this.contentFrame);
        this.contentFrame.setAspectRatioListener(abstractC2010b);
    }

    public void setControlDispatcher(AbstractC24856w abstractC24856w) {
        C26232y.m2278z(this.controller);
        this.controller.setControlDispatcher(abstractC24856w);
    }

    public void setControllerAutoShow(boolean z) {
        this.controllerAutoShow = z;
    }

    public void setControllerHideDuringAds(boolean z) {
        this.controllerHideDuringAds = z;
    }

    public void setControllerHideOnTouch(boolean z) {
        C26232y.m2278z(this.controller);
        this.controllerHideOnTouch = z;
        updateContentDescription();
    }

    public void setControllerShowTimeoutMs(int i) {
        C26232y.m2278z(this.controller);
        this.controllerShowTimeoutMs = i;
        if (this.controller.m39208d()) {
            showController();
        }
    }

    public void setControllerVisibilityListener(PlayerControlView.AbstractC2015d abstractC2015d) {
        C26232y.m2278z(this.controller);
        PlayerControlView.AbstractC2015d abstractC2015d2 = this.controllerVisibilityListener;
        if (abstractC2015d2 == abstractC2015d) {
            return;
        }
        if (abstractC2015d2 != null) {
            this.controller.f5150b.remove(abstractC2015d2);
        }
        this.controllerVisibilityListener = abstractC2015d;
        if (abstractC2015d == null) {
            return;
        }
        this.controller.f5150b.add(abstractC2015d);
    }

    public void setCustomErrorMessage(CharSequence charSequence) {
        C26232y.m2286x(this.errorMessageView != null);
        this.customErrorMessage = charSequence;
        updateErrorMessage();
    }

    @Deprecated
    public void setDefaultArtwork(Bitmap bitmap) {
        setDefaultArtwork(bitmap == null ? null : new BitmapDrawable(getResources(), bitmap));
    }

    public void setDefaultArtwork(Drawable drawable) {
        if (this.defaultArtwork != drawable) {
            this.defaultArtwork = drawable;
            updateForCurrentTrackSelections(false);
        }
    }

    public void setErrorMessageProvider(AbstractC24783k<? super C24189b0> abstractC24783k) {
        if (this.errorMessageProvider != abstractC24783k) {
            this.errorMessageProvider = abstractC24783k;
            updateErrorMessage();
        }
    }

    public void setExtraAdGroupMarkers(long[] jArr, boolean[] zArr) {
        C26232y.m2278z(this.controller);
        PlayerControlView playerControlView = this.controller;
        Objects.requireNonNull(playerControlView);
        boolean z = false;
        if (jArr == null) {
            playerControlView.f5164k0 = new long[0];
            playerControlView.f5166l0 = new boolean[0];
        } else {
            Objects.requireNonNull(zArr);
            if (jArr.length == zArr.length) {
                z = true;
            }
            C26232y.m2310r(z);
            playerControlView.f5164k0 = jArr;
            playerControlView.f5166l0 = zArr;
        }
        playerControlView.m39194r();
    }

    public void setFastForwardIncrementMs(int i) {
        C26232y.m2278z(this.controller);
        this.controller.setFastForwardIncrementMs(i);
    }

    public void setKeepContentOnPlayerReset(boolean z) {
        if (this.keepContentOnPlayerReset != z) {
            this.keepContentOnPlayerReset = z;
            updateForCurrentTrackSelections(false);
        }
    }

    public void setPlaybackPreparer(AbstractC24675p0 abstractC24675p0) {
        C26232y.m2278z(this.controller);
        this.controller.setPlaybackPreparer(abstractC24675p0);
    }

    public void setPlayer(AbstractC24760q0 abstractC24760q0) {
        C26232y.m2286x(Looper.myLooper() == Looper.getMainLooper());
        C26232y.m2310r(abstractC24760q0 == null || abstractC24760q0.getApplicationLooper() == Looper.getMainLooper());
        AbstractC24760q0 abstractC24760q02 = this.player;
        if (abstractC24760q02 == abstractC24760q0) {
            return;
        }
        if (abstractC24760q02 != null) {
            abstractC24760q02.removeListener(this.componentListener);
            AbstractC24760q0.AbstractC24765e videoComponent = abstractC24760q02.getVideoComponent();
            if (videoComponent != null) {
                videoComponent.removeVideoListener(this.componentListener);
                View view = this.surfaceView;
                if (view instanceof TextureView) {
                    videoComponent.clearVideoTextureView((TextureView) view);
                } else if (view instanceof C24670h) {
                    ((C24670h) view).setVideoComponent(null);
                } else if (view instanceof C24825l) {
                    videoComponent.setVideoDecoderOutputBufferRenderer(null);
                } else if (view instanceof SurfaceView) {
                    videoComponent.clearVideoSurfaceView((SurfaceView) view);
                }
            }
            AbstractC24760q0.AbstractC24764d textComponent = abstractC24760q02.getTextComponent();
            if (textComponent != null) {
                textComponent.removeTextOutput(this.componentListener);
            }
        }
        this.player = abstractC24760q0;
        if (useController()) {
            this.controller.setPlayer(abstractC24760q0);
        }
        SubtitleView subtitleView = this.subtitleView;
        if (subtitleView != null) {
            subtitleView.setCues(null);
        }
        updateBuffering();
        updateErrorMessage();
        updateForCurrentTrackSelections(true);
        if (abstractC24760q0 == null) {
            hideController();
            return;
        }
        AbstractC24760q0.AbstractC24765e videoComponent2 = abstractC24760q0.getVideoComponent();
        if (videoComponent2 != null) {
            View view2 = this.surfaceView;
            if (view2 instanceof TextureView) {
                videoComponent2.setVideoTextureView((TextureView) view2);
            } else if (view2 instanceof C24670h) {
                ((C24670h) view2).setVideoComponent(videoComponent2);
            } else if (view2 instanceof C24825l) {
                videoComponent2.setVideoDecoderOutputBufferRenderer(((C24825l) view2).getVideoDecoderOutputBufferRenderer());
            } else if (view2 instanceof SurfaceView) {
                videoComponent2.setVideoSurfaceView((SurfaceView) view2);
            }
            videoComponent2.addVideoListener(this.componentListener);
        }
        AbstractC24760q0.AbstractC24764d textComponent2 = abstractC24760q0.getTextComponent();
        if (textComponent2 != null) {
            textComponent2.addTextOutput(this.componentListener);
        }
        abstractC24760q0.addListener(this.componentListener);
        maybeShowController(false);
    }

    public void setRepeatToggleModes(int i) {
        C26232y.m2278z(this.controller);
        this.controller.setRepeatToggleModes(i);
    }

    public void setResizeMode(int i) {
        C26232y.m2278z(this.contentFrame);
        this.contentFrame.setResizeMode(i);
    }

    public void setRewindIncrementMs(int i) {
        C26232y.m2278z(this.controller);
        this.controller.setRewindIncrementMs(i);
    }

    public void setShowBuffering(int i) {
        if (this.showBuffering != i) {
            this.showBuffering = i;
            updateBuffering();
        }
    }

    @Deprecated
    public void setShowBuffering(boolean z) {
        setShowBuffering(z ? 1 : 0);
    }

    public void setShowMultiWindowTimeBar(boolean z) {
        C26232y.m2278z(this.controller);
        this.controller.setShowMultiWindowTimeBar(z);
    }

    public void setShowShuffleButton(boolean z) {
        C26232y.m2278z(this.controller);
        this.controller.setShowShuffleButton(z);
    }

    public void setShutterBackgroundColor(int i) {
        View view = this.shutterView;
        if (view != null) {
            view.setBackgroundColor(i);
        }
    }

    public void setUseArtwork(boolean z) {
        C26232y.m2286x(!z || this.artworkView != null);
        if (this.useArtwork != z) {
            this.useArtwork = z;
            updateForCurrentTrackSelections(false);
        }
    }

    public void setUseController(boolean z) {
        C26232y.m2286x(!z || this.controller != null);
        if (this.useController == z) {
            return;
        }
        this.useController = z;
        if (useController()) {
            this.controller.setPlayer(this.player);
        } else {
            PlayerControlView playerControlView = this.controller;
            if (playerControlView != null) {
                playerControlView.m39210b();
                this.controller.setPlayer(null);
            }
        }
        updateContentDescription();
    }

    public void setUseSensorRotation(boolean z) {
        if (this.useSensorRotation != z) {
            this.useSensorRotation = z;
            View view = this.surfaceView;
            if (!(view instanceof C24670h)) {
                return;
            }
            ((C24670h) view).setUseSensorRotation(z);
        }
    }

    @Override // android.view.View
    public void setVisibility(int i) {
        super.setVisibility(i);
        View view = this.surfaceView;
        if (view instanceof SurfaceView) {
            view.setVisibility(i);
        }
    }

    public void showController() {
        showController(shouldShowControllerIndefinitely());
    }
}
