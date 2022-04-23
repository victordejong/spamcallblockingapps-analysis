package com.theartofdev.edmodo.cropper;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.content.res.TypedArray;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Matrix;
import android.graphics.Rect;
import android.graphics.RectF;
import android.net.Uri;
import android.os.AsyncTask;
import android.os.Bundle;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.util.Pair;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.ProgressBar;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import com.theartofdev.edmodo.cropper.CropOverlayView;
import com.theartofdev.edmodo.cropper.c;
import com.theartofdev.edmodo.cropper.g;
import java.lang.ref.WeakReference;
import java.util.UUID;
/* loaded from: classes4-dex2jar.jar:com/theartofdev/edmodo/cropper/CropImageView.class */
public class CropImageView extends FrameLayout {
    private int A;
    private f B;
    private e C;
    private g D;
    private int E;
    private float F;
    private float G;
    private float H;
    private RectF I;
    private int J;
    private boolean K;
    private Uri L;

    /* renamed from: a  reason: collision with root package name */
    Bitmap f35025a;

    /* renamed from: b  reason: collision with root package name */
    int f35026b;

    /* renamed from: c  reason: collision with root package name */
    int f35027c;

    /* renamed from: d  reason: collision with root package name */
    boolean f35028d;
    boolean e;
    h f;
    d g;
    Uri h;
    WeakReference<com.theartofdev.edmodo.cropper.b> i;
    WeakReference<com.theartofdev.edmodo.cropper.a> j;
    private final ImageView k;
    private final CropOverlayView l;
    private final Matrix m;
    private final Matrix n;
    private final ProgressBar o;
    private final float[] p;
    private final float[] q;
    private com.theartofdev.edmodo.cropper.d r;
    private int s;
    private int t;
    private int u;
    private j v;
    private boolean w;
    private boolean x;
    private boolean y;
    private boolean z;

    /* loaded from: classes4-dex2jar.jar:com/theartofdev/edmodo/cropper/CropImageView$a.class */
    public static class a {
        private final Bitmap mBitmap;
        private final float[] mCropPoints;
        private final Rect mCropRect;
        private final Exception mError;
        private final Bitmap mOriginalBitmap;
        private final Uri mOriginalUri;
        private final int mRotation;
        private final int mSampleSize;
        private final Uri mUri;
        private final Rect mWholeImageRect;

        /* JADX INFO: Access modifiers changed from: package-private */
        public a(Bitmap bitmap, Uri uri, Bitmap bitmap2, Uri uri2, Exception exc, float[] fArr, Rect rect, Rect rect2, int i, int i2) {
            this.mOriginalBitmap = bitmap;
            this.mOriginalUri = uri;
            this.mBitmap = bitmap2;
            this.mUri = uri2;
            this.mError = exc;
            this.mCropPoints = fArr;
            this.mCropRect = rect;
            this.mWholeImageRect = rect2;
            this.mRotation = i;
            this.mSampleSize = i2;
        }

        public Bitmap getBitmap() {
            return this.mBitmap;
        }

        public float[] getCropPoints() {
            return this.mCropPoints;
        }

        public Rect getCropRect() {
            return this.mCropRect;
        }

        public Exception getError() {
            return this.mError;
        }

        public Bitmap getOriginalBitmap() {
            return this.mOriginalBitmap;
        }

        public Uri getOriginalUri() {
            return this.mOriginalUri;
        }

        public int getRotation() {
            return this.mRotation;
        }

        public int getSampleSize() {
            return this.mSampleSize;
        }

        public Uri getUri() {
            return this.mUri;
        }

        public Rect getWholeImageRect() {
            return this.mWholeImageRect;
        }

        public boolean isSuccessful() {
            return this.mError == null;
        }
    }

    /* loaded from: classes4-dex2jar.jar:com/theartofdev/edmodo/cropper/CropImageView$b.class */
    public enum b {
        RECTANGLE,
        OVAL
    }

    /* loaded from: classes4-dex2jar.jar:com/theartofdev/edmodo/cropper/CropImageView$c.class */
    public enum c {
        OFF,
        ON_TOUCH,
        ON
    }

    /* loaded from: classes4-dex2jar.jar:com/theartofdev/edmodo/cropper/CropImageView$d.class */
    public interface d {
        void a(a aVar);
    }

    /* loaded from: classes4-dex2jar.jar:com/theartofdev/edmodo/cropper/CropImageView$e.class */
    public interface e {
    }

    /* loaded from: classes4-dex2jar.jar:com/theartofdev/edmodo/cropper/CropImageView$f.class */
    public interface f {
    }

    /* loaded from: classes4-dex2jar.jar:com/theartofdev/edmodo/cropper/CropImageView$g.class */
    public interface g {
    }

    /* loaded from: classes4-dex2jar.jar:com/theartofdev/edmodo/cropper/CropImageView$h.class */
    public interface h {
        void a(Exception exc);
    }

    /* loaded from: classes4-dex2jar.jar:com/theartofdev/edmodo/cropper/CropImageView$i.class */
    public enum i {
        NONE,
        SAMPLING,
        RESIZE_INSIDE,
        RESIZE_FIT,
        RESIZE_EXACT
    }

    /* loaded from: classes4-dex2jar.jar:com/theartofdev/edmodo/cropper/CropImageView$j.class */
    public enum j {
        FIT_CENTER,
        CENTER,
        CENTER_CROP,
        CENTER_INSIDE
    }

    public CropImageView(Context context) {
        this(context, null);
    }

    /* JADX WARN: Finally extract failed */
    public CropImageView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.m = new Matrix();
        this.n = new Matrix();
        this.p = new float[8];
        this.q = new float[8];
        this.w = false;
        this.x = true;
        this.y = true;
        this.z = true;
        this.E = 1;
        this.F = 1.0f;
        Intent intent = context instanceof Activity ? ((Activity) context).getIntent() : null;
        CropImageOptions cropImageOptions = null;
        if (intent != null) {
            Bundle bundleExtra = intent.getBundleExtra("CROP_IMAGE_EXTRA_BUNDLE");
            cropImageOptions = null;
            if (bundleExtra != null) {
                cropImageOptions = (CropImageOptions) bundleExtra.getParcelable("CROP_IMAGE_EXTRA_OPTIONS");
            }
        }
        CropImageOptions cropImageOptions2 = cropImageOptions;
        if (cropImageOptions == null) {
            CropImageOptions cropImageOptions3 = new CropImageOptions();
            cropImageOptions2 = cropImageOptions3;
            if (attributeSet != null) {
                TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, g.e.CropImageView, 0, 0);
                try {
                    cropImageOptions3.fixAspectRatio = obtainStyledAttributes.getBoolean(g.e.CropImageView_cropFixAspectRatio, cropImageOptions3.fixAspectRatio);
                    cropImageOptions3.aspectRatioX = obtainStyledAttributes.getInteger(g.e.CropImageView_cropAspectRatioX, cropImageOptions3.aspectRatioX);
                    cropImageOptions3.aspectRatioY = obtainStyledAttributes.getInteger(g.e.CropImageView_cropAspectRatioY, cropImageOptions3.aspectRatioY);
                    cropImageOptions3.scaleType = j.values()[obtainStyledAttributes.getInt(g.e.CropImageView_cropScaleType, cropImageOptions3.scaleType.ordinal())];
                    cropImageOptions3.autoZoomEnabled = obtainStyledAttributes.getBoolean(g.e.CropImageView_cropAutoZoomEnabled, cropImageOptions3.autoZoomEnabled);
                    cropImageOptions3.multiTouchEnabled = obtainStyledAttributes.getBoolean(g.e.CropImageView_cropMultiTouchEnabled, cropImageOptions3.multiTouchEnabled);
                    cropImageOptions3.maxZoom = obtainStyledAttributes.getInteger(g.e.CropImageView_cropMaxZoom, cropImageOptions3.maxZoom);
                    cropImageOptions3.cropShape = b.values()[obtainStyledAttributes.getInt(g.e.CropImageView_cropShape, cropImageOptions3.cropShape.ordinal())];
                    cropImageOptions3.guidelines = c.values()[obtainStyledAttributes.getInt(g.e.CropImageView_cropGuidelines, cropImageOptions3.guidelines.ordinal())];
                    cropImageOptions3.snapRadius = obtainStyledAttributes.getDimension(g.e.CropImageView_cropSnapRadius, cropImageOptions3.snapRadius);
                    cropImageOptions3.touchRadius = obtainStyledAttributes.getDimension(g.e.CropImageView_cropTouchRadius, cropImageOptions3.touchRadius);
                    cropImageOptions3.initialCropWindowPaddingRatio = obtainStyledAttributes.getFloat(g.e.CropImageView_cropInitialCropWindowPaddingRatio, cropImageOptions3.initialCropWindowPaddingRatio);
                    cropImageOptions3.borderLineThickness = obtainStyledAttributes.getDimension(g.e.CropImageView_cropBorderLineThickness, cropImageOptions3.borderLineThickness);
                    cropImageOptions3.borderLineColor = obtainStyledAttributes.getInteger(g.e.CropImageView_cropBorderLineColor, cropImageOptions3.borderLineColor);
                    cropImageOptions3.borderCornerThickness = obtainStyledAttributes.getDimension(g.e.CropImageView_cropBorderCornerThickness, cropImageOptions3.borderCornerThickness);
                    cropImageOptions3.borderCornerOffset = obtainStyledAttributes.getDimension(g.e.CropImageView_cropBorderCornerOffset, cropImageOptions3.borderCornerOffset);
                    cropImageOptions3.borderCornerLength = obtainStyledAttributes.getDimension(g.e.CropImageView_cropBorderCornerLength, cropImageOptions3.borderCornerLength);
                    cropImageOptions3.borderCornerColor = obtainStyledAttributes.getInteger(g.e.CropImageView_cropBorderCornerColor, cropImageOptions3.borderCornerColor);
                    cropImageOptions3.guidelinesThickness = obtainStyledAttributes.getDimension(g.e.CropImageView_cropGuidelinesThickness, cropImageOptions3.guidelinesThickness);
                    cropImageOptions3.guidelinesColor = obtainStyledAttributes.getInteger(g.e.CropImageView_cropGuidelinesColor, cropImageOptions3.guidelinesColor);
                    cropImageOptions3.backgroundColor = obtainStyledAttributes.getInteger(g.e.CropImageView_cropBackgroundColor, cropImageOptions3.backgroundColor);
                    cropImageOptions3.showCropOverlay = obtainStyledAttributes.getBoolean(g.e.CropImageView_cropShowCropOverlay, this.x);
                    cropImageOptions3.showProgressBar = obtainStyledAttributes.getBoolean(g.e.CropImageView_cropShowProgressBar, this.y);
                    cropImageOptions3.borderCornerThickness = obtainStyledAttributes.getDimension(g.e.CropImageView_cropBorderCornerThickness, cropImageOptions3.borderCornerThickness);
                    cropImageOptions3.minCropWindowWidth = (int) obtainStyledAttributes.getDimension(g.e.CropImageView_cropMinCropWindowWidth, cropImageOptions3.minCropWindowWidth);
                    cropImageOptions3.minCropWindowHeight = (int) obtainStyledAttributes.getDimension(g.e.CropImageView_cropMinCropWindowHeight, cropImageOptions3.minCropWindowHeight);
                    cropImageOptions3.minCropResultWidth = (int) obtainStyledAttributes.getFloat(g.e.CropImageView_cropMinCropResultWidthPX, cropImageOptions3.minCropResultWidth);
                    cropImageOptions3.minCropResultHeight = (int) obtainStyledAttributes.getFloat(g.e.CropImageView_cropMinCropResultHeightPX, cropImageOptions3.minCropResultHeight);
                    cropImageOptions3.maxCropResultWidth = (int) obtainStyledAttributes.getFloat(g.e.CropImageView_cropMaxCropResultWidthPX, cropImageOptions3.maxCropResultWidth);
                    cropImageOptions3.maxCropResultHeight = (int) obtainStyledAttributes.getFloat(g.e.CropImageView_cropMaxCropResultHeightPX, cropImageOptions3.maxCropResultHeight);
                    cropImageOptions3.flipHorizontally = obtainStyledAttributes.getBoolean(g.e.CropImageView_cropFlipHorizontally, cropImageOptions3.flipHorizontally);
                    cropImageOptions3.flipVertically = obtainStyledAttributes.getBoolean(g.e.CropImageView_cropFlipHorizontally, cropImageOptions3.flipVertically);
                    this.w = obtainStyledAttributes.getBoolean(g.e.CropImageView_cropSaveBitmapToInstanceState, this.w);
                    if (obtainStyledAttributes.hasValue(g.e.CropImageView_cropAspectRatioX) && obtainStyledAttributes.hasValue(g.e.CropImageView_cropAspectRatioX) && !obtainStyledAttributes.hasValue(g.e.CropImageView_cropFixAspectRatio)) {
                        cropImageOptions3.fixAspectRatio = true;
                    }
                    obtainStyledAttributes.recycle();
                    cropImageOptions2 = cropImageOptions3;
                } catch (Throwable th) {
                    obtainStyledAttributes.recycle();
                    throw th;
                }
            }
        }
        cropImageOptions2.validate();
        this.v = cropImageOptions2.scaleType;
        this.z = cropImageOptions2.autoZoomEnabled;
        this.A = cropImageOptions2.maxZoom;
        this.x = cropImageOptions2.showCropOverlay;
        this.y = cropImageOptions2.showProgressBar;
        this.f35028d = cropImageOptions2.flipHorizontally;
        this.e = cropImageOptions2.flipVertically;
        View inflate = LayoutInflater.from(context).inflate(g.b.crop_image_view, (ViewGroup) this, true);
        ImageView imageView = (ImageView) inflate.findViewById(g.a.ImageView_image);
        this.k = imageView;
        imageView.setScaleType(ImageView.ScaleType.MATRIX);
        CropOverlayView cropOverlayView = (CropOverlayView) inflate.findViewById(g.a.CropOverlayView);
        this.l = cropOverlayView;
        cropOverlayView.setCropWindowChangeListener(new CropOverlayView.a() { // from class: com.theartofdev.edmodo.cropper.CropImageView.1
            @Override // com.theartofdev.edmodo.cropper.CropOverlayView.a
            public final void a(boolean z) {
                CropImageView.this.a(z, true);
                if (CropImageView.this.B != null && !z) {
                    CropImageView.this.b();
                }
                if (CropImageView.this.C != null && z) {
                    CropImageView.this.b();
                }
            }
        });
        cropOverlayView.setInitialAttributeValues(cropImageOptions2);
        this.o = (ProgressBar) inflate.findViewById(g.a.CropProgressBar);
        d();
    }

    private static int a(int i2, int i3, int i4) {
        if (i2 != 1073741824) {
            i3 = i2 == Integer.MIN_VALUE ? Math.min(i4, i3) : i4;
        }
        return i3;
    }

    private void a(int i2, int i3, i iVar, Uri uri, Bitmap.CompressFormat compressFormat, int i4) {
        Bitmap bitmap = this.f35025a;
        if (bitmap != null) {
            this.k.clearAnimation();
            WeakReference<com.theartofdev.edmodo.cropper.a> weakReference = this.j;
            com.theartofdev.edmodo.cropper.a aVar = weakReference != null ? weakReference.get() : null;
            if (aVar != null) {
                aVar.cancel(true);
            }
            if (iVar == i.NONE) {
                i2 = 0;
            }
            if (iVar == i.NONE) {
                i3 = 0;
            }
            int width = bitmap.getWidth();
            int i5 = this.E;
            int height = bitmap.getHeight();
            int i6 = this.E;
            if (this.h == null || (i6 <= 1 && iVar != i.SAMPLING)) {
                this.j = new WeakReference<>(new com.theartofdev.edmodo.cropper.a(this, bitmap, c(), this.f35027c, this.l.f35031b, this.l.f35032c, this.l.f35033d, i2, i3, this.f35028d, this.e, iVar, uri, compressFormat, i4));
            } else {
                this.j = new WeakReference<>(new com.theartofdev.edmodo.cropper.a(this, this.h, c(), this.f35027c, width * i5, height * i6, this.l.f35031b, this.l.f35032c, this.l.f35033d, i2, i3, this.f35028d, this.e, iVar, uri, compressFormat, i4));
            }
            this.j.get().executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, new Void[0]);
            d();
        }
    }

    private void a(boolean z) {
        if (this.f35025a != null && !z) {
            this.l.setCropWindowLimits(getWidth(), getHeight(), (this.E * 100.0f) / com.theartofdev.edmodo.cropper.c.e(this.q), (this.E * 100.0f) / com.theartofdev.edmodo.cropper.c.f(this.q));
        }
        this.l.setBounds(z ? null : this.p, getWidth(), getHeight());
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code restructure failed: missing block: B:37:0x011d, code lost:
        if (r0.height() > (r0 * 0.65f)) goto L_0x0120;
     */
    /* JADX WARN: Removed duplicated region for block: B:34:0x00f5  */
    /* JADX WARN: Removed duplicated region for block: B:41:0x0153  */
    /* JADX WARN: Removed duplicated region for block: B:42:0x015a  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void a(boolean r7, boolean r8) {
        /*
            Method dump skipped, instructions count: 430
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.theartofdev.edmodo.cropper.CropImageView.a(boolean, boolean):void");
    }

    private void e() {
        Bitmap bitmap = this.f35025a;
        if (bitmap != null && (this.u > 0 || this.h != null)) {
            bitmap.recycle();
        }
        this.f35025a = null;
        this.u = 0;
        this.h = null;
        this.E = 1;
        this.f35027c = 0;
        this.F = 1.0f;
        this.G = BitmapDescriptorFactory.HUE_RED;
        this.H = BitmapDescriptorFactory.HUE_RED;
        this.m.reset();
        this.L = null;
        this.k.setImageBitmap(null);
        g();
    }

    private void f() {
        float[] fArr = this.p;
        fArr[0] = 0.0f;
        fArr[1] = 0.0f;
        fArr[2] = this.f35025a.getWidth();
        float[] fArr2 = this.p;
        fArr2[3] = 0.0f;
        fArr2[4] = this.f35025a.getWidth();
        this.p[5] = this.f35025a.getHeight();
        float[] fArr3 = this.p;
        fArr3[6] = 0.0f;
        fArr3[7] = this.f35025a.getHeight();
        this.m.mapPoints(this.p);
        float[] fArr4 = this.q;
        fArr4[0] = 0.0f;
        fArr4[1] = 0.0f;
        fArr4[2] = 100.0f;
        fArr4[3] = 0.0f;
        fArr4[4] = 100.0f;
        fArr4[5] = 100.0f;
        fArr4[6] = 0.0f;
        fArr4[7] = 100.0f;
        this.m.mapPoints(fArr4);
    }

    private void g() {
        CropOverlayView cropOverlayView = this.l;
        if (cropOverlayView != null) {
            cropOverlayView.setVisibility((!this.x || this.f35025a == null) ? 4 : 0);
        }
    }

    public final Rect a() {
        int i2 = this.E;
        Bitmap bitmap = this.f35025a;
        if (bitmap == null) {
            return null;
        }
        return new Rect(0, 0, bitmap.getWidth() * i2, bitmap.getHeight() * i2);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void a(float f2, float f3, boolean z, boolean z2) {
        if (this.f35025a != null) {
            float f4 = BitmapDescriptorFactory.HUE_RED;
            if (f2 > BitmapDescriptorFactory.HUE_RED && f3 > BitmapDescriptorFactory.HUE_RED) {
                this.m.invert(this.n);
                RectF a2 = this.l.f35030a.a();
                this.n.mapRect(a2);
                this.m.reset();
                this.m.postTranslate((f2 - this.f35025a.getWidth()) / 2.0f, (f3 - this.f35025a.getHeight()) / 2.0f);
                f();
                int i2 = this.f35027c;
                if (i2 > 0) {
                    this.m.postRotate(i2, com.theartofdev.edmodo.cropper.c.g(this.p), com.theartofdev.edmodo.cropper.c.h(this.p));
                    f();
                }
                float min = Math.min(f2 / com.theartofdev.edmodo.cropper.c.e(this.p), f3 / com.theartofdev.edmodo.cropper.c.f(this.p));
                if (this.v == j.FIT_CENTER || ((this.v == j.CENTER_INSIDE && min < 1.0f) || (min > 1.0f && this.z))) {
                    this.m.postScale(min, min, com.theartofdev.edmodo.cropper.c.g(this.p), com.theartofdev.edmodo.cropper.c.h(this.p));
                    f();
                }
                float f5 = this.f35028d ? -this.F : this.F;
                float f6 = this.e ? -this.F : this.F;
                this.m.postScale(f5, f6, com.theartofdev.edmodo.cropper.c.g(this.p), com.theartofdev.edmodo.cropper.c.h(this.p));
                f();
                this.m.mapRect(a2);
                if (z) {
                    this.G = f2 > com.theartofdev.edmodo.cropper.c.e(this.p) ? BitmapDescriptorFactory.HUE_RED : Math.max(Math.min((f2 / 2.0f) - a2.centerX(), -com.theartofdev.edmodo.cropper.c.a(this.p)), getWidth() - com.theartofdev.edmodo.cropper.c.c(this.p)) / f5;
                    if (f3 <= com.theartofdev.edmodo.cropper.c.f(this.p)) {
                        f4 = Math.max(Math.min((f3 / 2.0f) - a2.centerY(), -com.theartofdev.edmodo.cropper.c.b(this.p)), getHeight() - com.theartofdev.edmodo.cropper.c.d(this.p)) / f6;
                    }
                    this.H = f4;
                } else {
                    this.G = Math.min(Math.max(this.G * f5, -a2.left), (-a2.right) + f2) / f5;
                    this.H = Math.min(Math.max(this.H * f6, -a2.top), (-a2.bottom) + f3) / f6;
                }
                this.m.postTranslate(this.G * f5, this.H * f6);
                a2.offset(this.G * f5, this.H * f6);
                this.l.setCropWindowRect(a2);
                f();
                this.l.invalidate();
                if (z2) {
                    this.r.b(this.p, this.m);
                    this.k.startAnimation(this.r);
                } else {
                    this.k.setImageMatrix(this.m);
                }
                a(false);
            }
        }
    }

    public final void a(int i2) {
        if (this.f35025a != null) {
            int i3 = i2 < 0 ? (i2 % 360) + 360 : i2 % 360;
            boolean z = !this.l.f35031b && ((i3 > 45 && i3 < 135) || (i3 > 215 && i3 < 305));
            com.theartofdev.edmodo.cropper.c.f35053c.set(this.l.f35030a.a());
            RectF rectF = com.theartofdev.edmodo.cropper.c.f35053c;
            float height = (z ? rectF.height() : rectF.width()) / 2.0f;
            RectF rectF2 = com.theartofdev.edmodo.cropper.c.f35053c;
            float width = (z ? rectF2.width() : rectF2.height()) / 2.0f;
            if (z) {
                boolean z2 = this.f35028d;
                this.f35028d = this.e;
                this.e = z2;
            }
            this.m.invert(this.n);
            com.theartofdev.edmodo.cropper.c.f35054d[0] = com.theartofdev.edmodo.cropper.c.f35053c.centerX();
            com.theartofdev.edmodo.cropper.c.f35054d[1] = com.theartofdev.edmodo.cropper.c.f35053c.centerY();
            com.theartofdev.edmodo.cropper.c.f35054d[2] = 0.0f;
            com.theartofdev.edmodo.cropper.c.f35054d[3] = 0.0f;
            com.theartofdev.edmodo.cropper.c.f35054d[4] = 1.0f;
            com.theartofdev.edmodo.cropper.c.f35054d[5] = 0.0f;
            this.n.mapPoints(com.theartofdev.edmodo.cropper.c.f35054d);
            this.f35027c = (this.f35027c + i3) % 360;
            a(getWidth(), getHeight(), true, false);
            this.m.mapPoints(com.theartofdev.edmodo.cropper.c.e, com.theartofdev.edmodo.cropper.c.f35054d);
            float sqrt = (float) (this.F / Math.sqrt(Math.pow(com.theartofdev.edmodo.cropper.c.e[4] - com.theartofdev.edmodo.cropper.c.e[2], 2.0d) + Math.pow(com.theartofdev.edmodo.cropper.c.e[5] - com.theartofdev.edmodo.cropper.c.e[3], 2.0d)));
            this.F = sqrt;
            this.F = Math.max(sqrt, 1.0f);
            a(getWidth(), getHeight(), true, false);
            this.m.mapPoints(com.theartofdev.edmodo.cropper.c.e, com.theartofdev.edmodo.cropper.c.f35054d);
            double sqrt2 = Math.sqrt(Math.pow(com.theartofdev.edmodo.cropper.c.e[4] - com.theartofdev.edmodo.cropper.c.e[2], 2.0d) + Math.pow(com.theartofdev.edmodo.cropper.c.e[5] - com.theartofdev.edmodo.cropper.c.e[3], 2.0d));
            float f2 = (float) (height * sqrt2);
            float f3 = (float) (width * sqrt2);
            com.theartofdev.edmodo.cropper.c.f35053c.set(com.theartofdev.edmodo.cropper.c.e[0] - f2, com.theartofdev.edmodo.cropper.c.e[1] - f3, com.theartofdev.edmodo.cropper.c.e[0] + f2, com.theartofdev.edmodo.cropper.c.e[1] + f3);
            this.l.b();
            this.l.setCropWindowRect(com.theartofdev.edmodo.cropper.c.f35053c);
            a(getWidth(), getHeight(), true, false);
            a(false, false);
            this.l.a();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void a(Bitmap bitmap, int i2, Uri uri, int i3, int i4) {
        Bitmap bitmap2 = this.f35025a;
        if (bitmap2 == null || !bitmap2.equals(bitmap)) {
            this.k.clearAnimation();
            e();
            this.f35025a = bitmap;
            this.k.setImageBitmap(bitmap);
            this.h = uri;
            this.u = i2;
            this.E = i3;
            this.f35027c = i4;
            a(getWidth(), getHeight(), true, false);
            CropOverlayView cropOverlayView = this.l;
            if (cropOverlayView != null) {
                cropOverlayView.b();
                g();
            }
        }
    }

    public final void a(Uri uri, Bitmap.CompressFormat compressFormat, int i2, int i3, int i4, i iVar) {
        if (this.g != null) {
            a(i3, i4, iVar, uri, compressFormat, i2);
            return;
        }
        throw new IllegalArgumentException("mOnCropImageCompleteListener is not set");
    }

    public final Rect b() {
        int i2 = this.E;
        Bitmap bitmap = this.f35025a;
        if (bitmap == null) {
            return null;
        }
        return com.theartofdev.edmodo.cropper.c.a(c(), bitmap.getWidth() * i2, i2 * bitmap.getHeight(), this.l.f35031b, this.l.f35032c, this.l.f35033d);
    }

    public final float[] c() {
        RectF a2 = this.l.f35030a.a();
        float[] fArr = new float[8];
        fArr[0] = a2.left;
        fArr[1] = a2.top;
        fArr[2] = a2.right;
        fArr[3] = a2.top;
        fArr[4] = a2.right;
        fArr[5] = a2.bottom;
        fArr[6] = a2.left;
        fArr[7] = a2.bottom;
        this.m.invert(this.n);
        this.n.mapPoints(fArr);
        for (int i2 = 0; i2 < 8; i2++) {
            fArr[i2] = fArr[i2] * this.E;
        }
        return fArr;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void d() {
        int i2 = 0;
        boolean z = this.y && ((this.f35025a == null && this.i != null) || this.j != null);
        ProgressBar progressBar = this.o;
        if (!z) {
            i2 = 4;
        }
        progressBar.setVisibility(i2);
    }

    @Override // android.widget.FrameLayout, android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z, int i2, int i3, int i4, int i5) {
        super.onLayout(z, i2, i3, i4, i5);
        if (this.s <= 0 || this.t <= 0) {
            a(true);
            return;
        }
        ViewGroup.LayoutParams layoutParams = getLayoutParams();
        layoutParams.width = this.s;
        layoutParams.height = this.t;
        setLayoutParams(layoutParams);
        if (this.f35025a != null) {
            float f2 = i4 - i2;
            float f3 = i5 - i3;
            a(f2, f3, true, false);
            if (this.I != null) {
                int i6 = this.J;
                if (i6 != this.f35026b) {
                    this.f35027c = i6;
                    a(f2, f3, true, false);
                }
                this.m.mapRect(this.I);
                this.l.setCropWindowRect(this.I);
                a(false, false);
                this.l.a();
                this.I = null;
            } else if (this.K) {
                this.K = false;
                a(false, false);
            }
        } else {
            a(true);
        }
    }

    @Override // android.widget.FrameLayout, android.view.View
    protected void onMeasure(int i2, int i3) {
        int i4;
        int i5;
        super.onMeasure(i2, i3);
        int mode = View.MeasureSpec.getMode(i2);
        int size = View.MeasureSpec.getSize(i2);
        int mode2 = View.MeasureSpec.getMode(i3);
        int size2 = View.MeasureSpec.getSize(i3);
        Bitmap bitmap = this.f35025a;
        if (bitmap != null) {
            int i6 = size2;
            if (size2 == 0) {
                i6 = bitmap.getHeight();
            }
            double width = size < this.f35025a.getWidth() ? size / this.f35025a.getWidth() : Double.POSITIVE_INFINITY;
            double height = i6 < this.f35025a.getHeight() ? i6 / this.f35025a.getHeight() : Double.POSITIVE_INFINITY;
            if (width == Double.POSITIVE_INFINITY && height == Double.POSITIVE_INFINITY) {
                i4 = this.f35025a.getWidth();
                i5 = this.f35025a.getHeight();
            } else if (width <= height) {
                i5 = (int) (this.f35025a.getHeight() * width);
                i4 = size;
            } else {
                i4 = (int) (this.f35025a.getWidth() * height);
                i5 = i6;
            }
            int a2 = a(mode, size, i4);
            int a3 = a(mode2, i6, i5);
            this.s = a2;
            this.t = a3;
            setMeasuredDimension(a2, a3);
            return;
        }
        setMeasuredDimension(size, size2);
    }

    @Override // android.view.View
    public void onRestoreInstanceState(Parcelable parcelable) {
        if (parcelable instanceof Bundle) {
            Bundle bundle = (Bundle) parcelable;
            if (this.i == null && this.h == null && this.f35025a == null && this.u == 0) {
                Uri uri = (Uri) bundle.getParcelable("LOADED_IMAGE_URI");
                if (uri != null) {
                    String string = bundle.getString("LOADED_IMAGE_STATE_BITMAP_KEY");
                    if (string != null) {
                        Bitmap bitmap = (com.theartofdev.edmodo.cropper.c.f == null || !((String) com.theartofdev.edmodo.cropper.c.f.first).equals(string)) ? null : (Bitmap) ((WeakReference) com.theartofdev.edmodo.cropper.c.f.second).get();
                        com.theartofdev.edmodo.cropper.c.f = null;
                        if (bitmap != null && !bitmap.isRecycled()) {
                            a(bitmap, 0, uri, bundle.getInt("LOADED_SAMPLE_SIZE"), 0);
                        }
                    }
                    if (this.h == null) {
                        setImageUriAsync(uri);
                    }
                } else {
                    int i2 = bundle.getInt("LOADED_IMAGE_RESOURCE");
                    if (i2 > 0) {
                        setImageResource(i2);
                    } else {
                        Uri uri2 = (Uri) bundle.getParcelable("LOADING_IMAGE_URI");
                        if (uri2 != null) {
                            setImageUriAsync(uri2);
                        }
                    }
                }
                int i3 = bundle.getInt("DEGREES_ROTATED");
                this.J = i3;
                this.f35027c = i3;
                Rect rect = (Rect) bundle.getParcelable("INITIAL_CROP_RECT");
                if (rect != null && (rect.width() > 0 || rect.height() > 0)) {
                    this.l.setInitialCropWindowRect(rect);
                }
                RectF rectF = (RectF) bundle.getParcelable("CROP_WINDOW_RECT");
                if (rectF != null && (rectF.width() > BitmapDescriptorFactory.HUE_RED || rectF.height() > BitmapDescriptorFactory.HUE_RED)) {
                    this.I = rectF;
                }
                this.l.setCropShape(b.valueOf(bundle.getString("CROP_SHAPE")));
                this.z = bundle.getBoolean("CROP_AUTO_ZOOM_ENABLED");
                this.A = bundle.getInt("CROP_MAX_ZOOM");
                this.f35028d = bundle.getBoolean("CROP_FLIP_HORIZONTALLY");
                this.e = bundle.getBoolean("CROP_FLIP_VERTICALLY");
            }
            super.onRestoreInstanceState(bundle.getParcelable("instanceState"));
            return;
        }
        super.onRestoreInstanceState(parcelable);
    }

    @Override // android.view.View
    public Parcelable onSaveInstanceState() {
        com.theartofdev.edmodo.cropper.b bVar;
        if (this.h == null && this.f35025a == null && this.u <= 0) {
            return super.onSaveInstanceState();
        }
        Bundle bundle = new Bundle();
        Uri uri = this.h;
        Uri uri2 = uri;
        if (this.w) {
            uri2 = uri;
            if (uri == null) {
                uri2 = uri;
                if (this.u <= 0) {
                    uri2 = com.theartofdev.edmodo.cropper.c.a(getContext(), this.f35025a, this.L);
                    this.L = uri2;
                }
            }
        }
        if (!(uri2 == null || this.f35025a == null)) {
            String uuid = UUID.randomUUID().toString();
            com.theartofdev.edmodo.cropper.c.f = new Pair<>(uuid, new WeakReference(this.f35025a));
            bundle.putString("LOADED_IMAGE_STATE_BITMAP_KEY", uuid);
        }
        WeakReference<com.theartofdev.edmodo.cropper.b> weakReference = this.i;
        if (!(weakReference == null || (bVar = weakReference.get()) == null)) {
            bundle.putParcelable("LOADING_IMAGE_URI", bVar.f35043a);
        }
        bundle.putParcelable("instanceState", super.onSaveInstanceState());
        bundle.putParcelable("LOADED_IMAGE_URI", uri2);
        bundle.putInt("LOADED_IMAGE_RESOURCE", this.u);
        bundle.putInt("LOADED_SAMPLE_SIZE", this.E);
        bundle.putInt("DEGREES_ROTATED", this.f35027c);
        bundle.putParcelable("INITIAL_CROP_RECT", this.l.f);
        com.theartofdev.edmodo.cropper.c.f35053c.set(this.l.f35030a.a());
        this.m.invert(this.n);
        this.n.mapRect(com.theartofdev.edmodo.cropper.c.f35053c);
        bundle.putParcelable("CROP_WINDOW_RECT", com.theartofdev.edmodo.cropper.c.f35053c);
        bundle.putString("CROP_SHAPE", this.l.e.name());
        bundle.putBoolean("CROP_AUTO_ZOOM_ENABLED", this.z);
        bundle.putInt("CROP_MAX_ZOOM", this.A);
        bundle.putBoolean("CROP_FLIP_HORIZONTALLY", this.f35028d);
        bundle.putBoolean("CROP_FLIP_VERTICALLY", this.e);
        return bundle;
    }

    @Override // android.view.View
    protected void onSizeChanged(int i2, int i3, int i4, int i5) {
        super.onSizeChanged(i2, i3, i4, i5);
        this.K = i4 > 0 && i5 > 0;
    }

    public void setAspectRatio(int i2, int i3) {
        this.l.setAspectRatioX(i2);
        this.l.setAspectRatioY(i3);
        setFixedAspectRatio(true);
    }

    public void setAutoZoomEnabled(boolean z) {
        if (this.z != z) {
            this.z = z;
            a(false, false);
            this.l.invalidate();
        }
    }

    public void setCropRect(Rect rect) {
        this.l.setInitialCropWindowRect(rect);
    }

    public void setCropShape(b bVar) {
        this.l.setCropShape(bVar);
    }

    public void setFixedAspectRatio(boolean z) {
        this.l.setFixedAspectRatio(z);
    }

    public void setFlippedHorizontally(boolean z) {
        if (this.f35028d != z) {
            this.f35028d = z;
            a(getWidth(), getHeight(), true, false);
        }
    }

    public void setFlippedVertically(boolean z) {
        if (this.e != z) {
            this.e = z;
            a(getWidth(), getHeight(), true, false);
        }
    }

    public void setGuidelines(c cVar) {
        this.l.setGuidelines(cVar);
    }

    public void setImageBitmap(Bitmap bitmap) {
        this.l.setInitialCropWindowRect(null);
        a(bitmap, 0, null, 1, 0);
    }

    public void setImageBitmap(Bitmap bitmap, androidx.f.a.a aVar) {
        int i2;
        if (bitmap == null || aVar == null) {
            i2 = 0;
        } else {
            c.b a2 = com.theartofdev.edmodo.cropper.c.a(bitmap, aVar);
            bitmap = a2.f35057a;
            i2 = a2.f35058b;
            this.f35026b = a2.f35058b;
        }
        this.l.setInitialCropWindowRect(null);
        a(bitmap, 0, null, 1, i2);
    }

    public void setImageResource(int i2) {
        if (i2 != 0) {
            this.l.setInitialCropWindowRect(null);
            a(BitmapFactory.decodeResource(getResources(), i2), i2, null, 1, 0);
        }
    }

    public void setImageUriAsync(Uri uri) {
        if (uri != null) {
            WeakReference<com.theartofdev.edmodo.cropper.b> weakReference = this.i;
            com.theartofdev.edmodo.cropper.b bVar = weakReference != null ? weakReference.get() : null;
            if (bVar != null) {
                bVar.cancel(true);
            }
            e();
            this.I = null;
            this.J = 0;
            this.l.setInitialCropWindowRect(null);
            WeakReference<com.theartofdev.edmodo.cropper.b> weakReference2 = new WeakReference<>(new com.theartofdev.edmodo.cropper.b(this, uri));
            this.i = weakReference2;
            weakReference2.get().executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, new Void[0]);
            d();
        }
    }

    public void setMaxCropResultSize(int i2, int i3) {
        this.l.setMaxCropResultSize(i2, i3);
    }

    public void setMaxZoom(int i2) {
        if (this.A != i2 && i2 > 0) {
            this.A = i2;
            a(false, false);
            this.l.invalidate();
        }
    }

    public void setMinCropResultSize(int i2, int i3) {
        this.l.setMinCropResultSize(i2, i3);
    }

    public void setMultiTouchEnabled(boolean z) {
        if (this.l.a(z)) {
            a(false, false);
            this.l.invalidate();
        }
    }

    public void setOnCropImageCompleteListener(d dVar) {
        this.g = dVar;
    }

    public void setOnCropWindowChangedListener(g gVar) {
        this.D = gVar;
    }

    public void setOnSetCropOverlayMovedListener(e eVar) {
        this.C = eVar;
    }

    public void setOnSetCropOverlayReleasedListener(f fVar) {
        this.B = fVar;
    }

    public void setOnSetImageUriCompleteListener(h hVar) {
        this.f = hVar;
    }

    public void setRotatedDegrees(int i2) {
        int i3 = this.f35027c;
        if (i3 != i2) {
            a(i2 - i3);
        }
    }

    public void setSaveBitmapToInstanceState(boolean z) {
        this.w = z;
    }

    public void setScaleType(j jVar) {
        if (jVar != this.v) {
            this.v = jVar;
            this.F = 1.0f;
            this.H = BitmapDescriptorFactory.HUE_RED;
            this.G = BitmapDescriptorFactory.HUE_RED;
            this.l.b();
            requestLayout();
        }
    }

    public void setShowCropOverlay(boolean z) {
        if (this.x != z) {
            this.x = z;
            g();
        }
    }

    public void setShowProgressBar(boolean z) {
        if (this.y != z) {
            this.y = z;
            d();
        }
    }

    public void setSnapRadius(float f2) {
        if (f2 >= BitmapDescriptorFactory.HUE_RED) {
            this.l.setSnapRadius(f2);
        }
    }
}
