package com.mopub.nativeads;

import android.content.Context;
import android.content.res.Configuration;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Paint;
import android.graphics.RectF;
import android.graphics.SurfaceTexture;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.GradientDrawable;
import android.text.TextUtils;
import android.view.TextureView;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.ProgressBar;
import android.widget.RelativeLayout;
import com.mopub.common.Preconditions;
import com.mopub.common.VisibleForTesting;
import com.mopub.common.util.Dips;
import com.mopub.common.util.Drawables;
import com.mopub.mobileads.VastVideoProgressBarWidget;
import com.mopub.mobileads.resource.CloseButtonDrawable;
import com.mopub.mobileads.resource.CtaButtonDrawable;
import com.mopub.mobileads.resource.DrawableConstants;
/* loaded from: classes2-dex2jar.jar:com/mopub/nativeads/NativeFullScreenVideoView.class */
public class NativeFullScreenVideoView extends RelativeLayout {
    @VisibleForTesting

    /* renamed from: a */
    public Mode f34834a;

    /* renamed from: b */
    public int f34835b;

    /* renamed from: c */
    public final ImageView f34836c;

    /* renamed from: d */
    public final TextureView f34837d;

    /* renamed from: e */
    public final ProgressBar f34838e;

    /* renamed from: f */
    public final ImageView f34839f;

    /* renamed from: g */
    public final ImageView f34840g;

    /* renamed from: h */
    public final VastVideoProgressBarWidget f34841h;

    /* renamed from: i */
    public final View f34842i;

    /* renamed from: j */
    public final ImageView f34843j;

    /* renamed from: k */
    public final ImageView f34844k;

    /* renamed from: l */
    public final ImageView f34845l;

    /* renamed from: m */
    public final ImageView f34846m;
    @VisibleForTesting

    /* renamed from: n */
    public final int f34847n;
    @VisibleForTesting

    /* renamed from: o */
    public final int f34848o;
    @VisibleForTesting

    /* renamed from: p */
    public final int f34849p;
    @VisibleForTesting

    /* renamed from: q */
    public final int f34850q;
    @VisibleForTesting

    /* renamed from: r */
    public final int f34851r;
    @VisibleForTesting

    /* renamed from: s */
    public final int f34852s;
    @VisibleForTesting

    /* renamed from: t */
    public final int f34853t;
    @VisibleForTesting

    /* renamed from: u */
    public final int f34854u;

    /* loaded from: classes2-dex2jar.jar:com/mopub/nativeads/NativeFullScreenVideoView$Mode.class */
    public enum Mode {
        LOADING,
        PLAYING,
        PAUSED,
        FINISHED
    }

    /* renamed from: com.mopub.nativeads.NativeFullScreenVideoView$a */
    /* loaded from: classes2-dex2jar.jar:com/mopub/nativeads/NativeFullScreenVideoView$a.class */
    public static /* synthetic */ class C8960a {

        /* renamed from: a */
        public static final /* synthetic */ int[] f34855a;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:11:0x0036 -> B:17:0x0014). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:12:0x003a -> B:15:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:13:0x003e -> B:21:0x002a). Please submit an issue!!! */
        static {
            int[] iArr = new int[Mode.values().length];
            f34855a = iArr;
            try {
                iArr[Mode.LOADING.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f34855a[Mode.PLAYING.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f34855a[Mode.PAUSED.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                f34855a[Mode.FINISHED.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
        }
    }

    @VisibleForTesting
    /* renamed from: com.mopub.nativeads.NativeFullScreenVideoView$b */
    /* loaded from: classes2-dex2jar.jar:com/mopub/nativeads/NativeFullScreenVideoView$b.class */
    public static class C8961b extends Drawable {

        /* renamed from: a */
        public final RectF f34856a;

        /* renamed from: b */
        public final Paint f34857b;
        @VisibleForTesting

        /* renamed from: c */
        public final int f34858c;

        public C8961b(Context context) {
            this(context, new RectF(), new Paint());
        }

        public C8961b(Context context, RectF rectF, Paint paint) {
            Preconditions.checkNotNull(context);
            Preconditions.checkNotNull(rectF);
            Preconditions.checkNotNull(paint);
            this.f34856a = rectF;
            this.f34857b = paint;
            paint.setColor(DrawableConstants.CtaButton.BACKGROUND_COLOR);
            this.f34857b.setAlpha(128);
            this.f34857b.setAntiAlias(true);
            this.f34858c = Dips.asIntPixels(5.0f, context);
        }

        @Override // android.graphics.drawable.Drawable
        public void draw(Canvas canvas) {
            this.f34856a.set(getBounds());
            RectF rectF = this.f34856a;
            int i = this.f34858c;
            canvas.drawRoundRect(rectF, i, i, this.f34857b);
        }

        @Override // android.graphics.drawable.Drawable
        public int getOpacity() {
            return 0;
        }

        @Override // android.graphics.drawable.Drawable
        public void setAlpha(int i) {
        }

        @Override // android.graphics.drawable.Drawable
        public void setColorFilter(ColorFilter colorFilter) {
        }
    }

    public NativeFullScreenVideoView(Context context, int i, String str) {
        this(context, i, str, new ImageView(context), new TextureView(context), new ProgressBar(context), new ImageView(context), new ImageView(context), new VastVideoProgressBarWidget(context), new View(context), new ImageView(context), new ImageView(context), new ImageView(context), new ImageView(context));
    }

    @VisibleForTesting
    public NativeFullScreenVideoView(Context context, int i, String str, ImageView imageView, TextureView textureView, ProgressBar progressBar, ImageView imageView2, ImageView imageView3, VastVideoProgressBarWidget vastVideoProgressBarWidget, View view, ImageView imageView4, ImageView imageView5, ImageView imageView6, ImageView imageView7) {
        super(context);
        Preconditions.checkNotNull(context);
        Preconditions.checkNotNull(imageView);
        Preconditions.checkNotNull(textureView);
        Preconditions.checkNotNull(progressBar);
        Preconditions.checkNotNull(imageView2);
        Preconditions.checkNotNull(imageView3);
        Preconditions.checkNotNull(vastVideoProgressBarWidget);
        Preconditions.checkNotNull(view);
        Preconditions.checkNotNull(imageView4);
        Preconditions.checkNotNull(imageView5);
        Preconditions.checkNotNull(imageView6);
        Preconditions.checkNotNull(imageView7);
        this.f34835b = i;
        this.f34834a = Mode.LOADING;
        this.f34847n = Dips.asIntPixels(200.0f, context);
        this.f34848o = Dips.asIntPixels(42.0f, context);
        this.f34849p = Dips.asIntPixels(10.0f, context);
        this.f34850q = Dips.asIntPixels(50.0f, context);
        this.f34851r = Dips.asIntPixels(8.0f, context);
        this.f34852s = Dips.asIntPixels(44.0f, context);
        this.f34853t = Dips.asIntPixels(50.0f, context);
        this.f34854u = Dips.asIntPixels(45.0f, context);
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, -1);
        layoutParams.addRule(13);
        this.f34837d = textureView;
        textureView.setId(View.generateViewId());
        this.f34837d.setLayoutParams(layoutParams);
        addView(this.f34837d);
        this.f34836c = imageView;
        imageView.setId(View.generateViewId());
        this.f34836c.setLayoutParams(layoutParams);
        this.f34836c.setBackgroundColor(0);
        addView(this.f34836c);
        int i2 = this.f34853t;
        RelativeLayout.LayoutParams layoutParams2 = new RelativeLayout.LayoutParams(i2, i2);
        layoutParams2.addRule(13);
        this.f34838e = progressBar;
        progressBar.setId(View.generateViewId());
        this.f34838e.setBackground(new C8961b(context));
        this.f34838e.setLayoutParams(layoutParams2);
        this.f34838e.setIndeterminate(true);
        addView(this.f34838e);
        RelativeLayout.LayoutParams layoutParams3 = new RelativeLayout.LayoutParams(-1, this.f34854u);
        layoutParams3.addRule(8, this.f34837d.getId());
        this.f34839f = imageView2;
        imageView2.setId(View.generateViewId());
        this.f34839f.setLayoutParams(layoutParams3);
        this.f34839f.setImageDrawable(new GradientDrawable(GradientDrawable.Orientation.BOTTOM_TOP, new int[]{DrawableConstants.GradientStrip.START_COLOR, DrawableConstants.GradientStrip.END_COLOR}));
        addView(this.f34839f);
        RelativeLayout.LayoutParams layoutParams4 = new RelativeLayout.LayoutParams(-1, this.f34854u);
        layoutParams4.addRule(10);
        this.f34840g = imageView3;
        imageView3.setId(View.generateViewId());
        this.f34840g.setLayoutParams(layoutParams4);
        this.f34840g.setImageDrawable(new GradientDrawable(GradientDrawable.Orientation.TOP_BOTTOM, new int[]{DrawableConstants.GradientStrip.START_COLOR, DrawableConstants.GradientStrip.END_COLOR}));
        addView(this.f34840g);
        this.f34841h = vastVideoProgressBarWidget;
        vastVideoProgressBarWidget.setId(View.generateViewId());
        this.f34841h.setAnchorId(this.f34837d.getId());
        this.f34841h.calibrateAndMakeVisible(1000, 0);
        addView(this.f34841h);
        RelativeLayout.LayoutParams layoutParams5 = new RelativeLayout.LayoutParams(-1, -1);
        layoutParams5.addRule(13);
        this.f34842i = view;
        view.setId(View.generateViewId());
        this.f34842i.setLayoutParams(layoutParams5);
        this.f34842i.setBackgroundColor(DrawableConstants.TRANSPARENT_GRAY);
        addView(this.f34842i);
        int i3 = this.f34853t;
        RelativeLayout.LayoutParams layoutParams6 = new RelativeLayout.LayoutParams(i3, i3);
        layoutParams6.addRule(13);
        this.f34843j = imageView4;
        imageView4.setId(View.generateViewId());
        this.f34843j.setLayoutParams(layoutParams6);
        this.f34843j.setImageDrawable(Drawables.NATIVE_PLAY.createDrawable(context));
        addView(this.f34843j);
        this.f34844k = imageView5;
        imageView5.setId(View.generateViewId());
        ImageView imageView8 = this.f34844k;
        int i4 = this.f34851r;
        imageView8.setPadding(i4, i4, i4 * 2, i4 * 2);
        addView(this.f34844k);
        CtaButtonDrawable ctaButtonDrawable = new CtaButtonDrawable(context);
        if (!TextUtils.isEmpty(str)) {
            ctaButtonDrawable.setCtaText(str);
        }
        this.f34845l = imageView6;
        imageView6.setId(View.generateViewId());
        this.f34845l.setImageDrawable(ctaButtonDrawable);
        addView(this.f34845l);
        this.f34846m = imageView7;
        imageView7.setId(View.generateViewId());
        this.f34846m.setImageDrawable(new CloseButtonDrawable());
        ImageView imageView9 = this.f34846m;
        int i5 = this.f34851r;
        imageView9.setPadding(i5 * 3, i5, i5, i5 * 3);
        addView(this.f34846m);
        m3902c();
    }

    private void setCachedImageVisibility(int i) {
        this.f34836c.setVisibility(i);
    }

    private void setLoadingSpinnerVisibility(int i) {
        this.f34838e.setVisibility(i);
    }

    private void setPlayButtonVisibility(int i) {
        this.f34843j.setVisibility(i);
        this.f34842i.setVisibility(i);
    }

    private void setVideoProgressVisibility(int i) {
        this.f34841h.setVisibility(i);
    }

    /* renamed from: a */
    public final void m3904a() {
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(this.f34847n, this.f34848o);
        int i = this.f34849p;
        layoutParams.setMargins(i, i, i, i);
        int i2 = this.f34852s;
        RelativeLayout.LayoutParams layoutParams2 = new RelativeLayout.LayoutParams(i2, i2);
        int i3 = this.f34850q;
        RelativeLayout.LayoutParams layoutParams3 = new RelativeLayout.LayoutParams(i3, i3);
        int i4 = this.f34835b;
        if (i4 == 1) {
            layoutParams.addRule(3, this.f34837d.getId());
            layoutParams.addRule(14);
            layoutParams2.addRule(10);
            layoutParams2.addRule(9);
            layoutParams3.addRule(10);
            layoutParams3.addRule(11);
        } else if (i4 == 2) {
            layoutParams.addRule(2, this.f34841h.getId());
            layoutParams.addRule(11);
            layoutParams2.addRule(6, this.f34837d.getId());
            layoutParams2.addRule(5, this.f34837d.getId());
            layoutParams3.addRule(6, this.f34837d.getId());
            layoutParams3.addRule(7, this.f34837d.getId());
        }
        this.f34845l.setLayoutParams(layoutParams);
        this.f34844k.setLayoutParams(layoutParams2);
        this.f34846m.setLayoutParams(layoutParams3);
    }

    /* renamed from: b */
    public final void m3903b() {
        Configuration configuration = getContext().getResources().getConfiguration();
        ViewGroup.LayoutParams layoutParams = this.f34837d.getLayoutParams();
        int dipsToIntPixels = Dips.dipsToIntPixels(configuration.screenWidthDp, getContext());
        if (dipsToIntPixels != layoutParams.width) {
            layoutParams.width = dipsToIntPixels;
        }
        int dipsToIntPixels2 = Dips.dipsToIntPixels((configuration.screenWidthDp * 9.0f) / 16.0f, getContext());
        if (dipsToIntPixels2 != layoutParams.height) {
            layoutParams.height = dipsToIntPixels2;
        }
    }

    /* renamed from: c */
    public final void m3902c() {
        int i = C8960a.f34855a[this.f34834a.ordinal()];
        if (i == 1) {
            setCachedImageVisibility(0);
            setLoadingSpinnerVisibility(0);
            setVideoProgressVisibility(4);
            setPlayButtonVisibility(4);
        } else if (i == 2) {
            setCachedImageVisibility(4);
            setLoadingSpinnerVisibility(4);
            setVideoProgressVisibility(0);
            setPlayButtonVisibility(4);
        } else if (i == 3) {
            setCachedImageVisibility(4);
            setLoadingSpinnerVisibility(4);
            setVideoProgressVisibility(0);
            setPlayButtonVisibility(0);
        } else if (i == 4) {
            setCachedImageVisibility(0);
            setLoadingSpinnerVisibility(4);
            setVideoProgressVisibility(4);
            setPlayButtonVisibility(0);
        }
        m3903b();
        m3904a();
    }

    @Deprecated
    @VisibleForTesting
    public ImageView getCtaButton() {
        return this.f34845l;
    }

    public TextureView getTextureView() {
        return this.f34837d;
    }

    public void resetProgress() {
        this.f34841h.reset();
    }

    public void setCachedVideoFrame(Bitmap bitmap) {
        this.f34836c.setImageBitmap(bitmap);
    }

    public void setCloseControlListener(View.OnClickListener onClickListener) {
        this.f34846m.setOnClickListener(onClickListener);
    }

    public void setCtaClickListener(View.OnClickListener onClickListener) {
        this.f34845l.setOnClickListener(onClickListener);
    }

    public void setMode(Mode mode) {
        Preconditions.checkNotNull(mode);
        if (this.f34834a != mode) {
            this.f34834a = mode;
            m3902c();
        }
    }

    public void setOrientation(int i) {
        if (this.f34835b != i) {
            this.f34835b = i;
            m3902c();
        }
    }

    public void setPlayControlClickListener(View.OnClickListener onClickListener) {
        this.f34843j.setOnClickListener(onClickListener);
        this.f34842i.setOnClickListener(onClickListener);
    }

    public void setPrivacyInformationClickListener(View.OnClickListener onClickListener) {
        this.f34844k.setOnClickListener(onClickListener);
    }

    public void setPrivacyInformationIconImageUrl(String str) {
        if (TextUtils.isEmpty(str)) {
            ImageView imageView = this.f34844k;
            imageView.setImageDrawable(Drawables.NATIVE_PRIVACY_INFORMATION_ICON.createDrawable(imageView.getContext()));
            return;
        }
        NativeImageHelper.loadImageView(str, this.f34844k);
    }

    public void setSurfaceTextureListener(TextureView.SurfaceTextureListener surfaceTextureListener) {
        this.f34837d.setSurfaceTextureListener(surfaceTextureListener);
        SurfaceTexture surfaceTexture = this.f34837d.getSurfaceTexture();
        if (surfaceTexture != null && surfaceTextureListener != null) {
            surfaceTextureListener.onSurfaceTextureAvailable(surfaceTexture, this.f34837d.getWidth(), this.f34837d.getHeight());
        }
    }

    public void updateProgress(int i) {
        this.f34841h.updateProgress(i);
    }
}
