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
import androidx.p044f.p045a.C1022a;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import com.theartofdev.edmodo.cropper.C17183c;
import com.theartofdev.edmodo.cropper.C17191g;
import com.theartofdev.edmodo.cropper.CropOverlayView;
import java.lang.ref.WeakReference;
import java.util.UUID;
/* loaded from: classes4-dex2jar.jar:com/theartofdev/edmodo/cropper/CropImageView.class */
public class CropImageView extends FrameLayout {

    /* renamed from: A */
    private int f60750A;

    /* renamed from: B */
    private AbstractC17171f f60751B;

    /* renamed from: C */
    private AbstractC17170e f60752C;

    /* renamed from: D */
    private AbstractC17172g f60753D;

    /* renamed from: E */
    private int f60754E;

    /* renamed from: F */
    private float f60755F;

    /* renamed from: G */
    private float f60756G;

    /* renamed from: H */
    private float f60757H;

    /* renamed from: I */
    private RectF f60758I;

    /* renamed from: J */
    private int f60759J;

    /* renamed from: K */
    private boolean f60760K;

    /* renamed from: L */
    private Uri f60761L;

    /* renamed from: a */
    Bitmap f60762a;

    /* renamed from: b */
    int f60763b;

    /* renamed from: c */
    int f60764c;

    /* renamed from: d */
    boolean f60765d;

    /* renamed from: e */
    boolean f60766e;

    /* renamed from: f */
    AbstractC17173h f60767f;

    /* renamed from: g */
    AbstractC17169d f60768g;

    /* renamed from: h */
    Uri f60769h;

    /* renamed from: i */
    WeakReference<AsyncTaskC17181b> f60770i;

    /* renamed from: j */
    WeakReference<AsyncTaskC17179a> f60771j;

    /* renamed from: k */
    private final ImageView f60772k;

    /* renamed from: l */
    private final CropOverlayView f60773l;

    /* renamed from: m */
    private final Matrix f60774m;

    /* renamed from: n */
    private final Matrix f60775n;

    /* renamed from: o */
    private final ProgressBar f60776o;

    /* renamed from: p */
    private final float[] f60777p;

    /* renamed from: q */
    private final float[] f60778q;

    /* renamed from: r */
    private animationAnimation$AnimationListenerC17186d f60779r;

    /* renamed from: s */
    private int f60780s;

    /* renamed from: t */
    private int f60781t;

    /* renamed from: u */
    private int f60782u;

    /* renamed from: v */
    private EnumC17175j f60783v;

    /* renamed from: w */
    private boolean f60784w;

    /* renamed from: x */
    private boolean f60785x;

    /* renamed from: y */
    private boolean f60786y;

    /* renamed from: z */
    private boolean f60787z;

    /* renamed from: com.theartofdev.edmodo.cropper.CropImageView$a */
    /* loaded from: classes4-dex2jar.jar:com/theartofdev/edmodo/cropper/CropImageView$a.class */
    public static class C17166a {
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

        public C17166a(Bitmap bitmap, Uri uri, Bitmap bitmap2, Uri uri2, Exception exc, float[] fArr, Rect rect, Rect rect2, int i, int i2) {
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

    /* renamed from: com.theartofdev.edmodo.cropper.CropImageView$b */
    /* loaded from: classes4-dex2jar.jar:com/theartofdev/edmodo/cropper/CropImageView$b.class */
    public enum EnumC17167b {
        RECTANGLE,
        OVAL
    }

    /* renamed from: com.theartofdev.edmodo.cropper.CropImageView$c */
    /* loaded from: classes4-dex2jar.jar:com/theartofdev/edmodo/cropper/CropImageView$c.class */
    public enum EnumC17168c {
        OFF,
        ON_TOUCH,
        ON
    }

    /* renamed from: com.theartofdev.edmodo.cropper.CropImageView$d */
    /* loaded from: classes4-dex2jar.jar:com/theartofdev/edmodo/cropper/CropImageView$d.class */
    public interface AbstractC17169d {
        /* renamed from: a */
        void mo5797a(C17166a c17166a);
    }

    /* renamed from: com.theartofdev.edmodo.cropper.CropImageView$e */
    /* loaded from: classes4-dex2jar.jar:com/theartofdev/edmodo/cropper/CropImageView$e.class */
    public interface AbstractC17170e {
    }

    /* renamed from: com.theartofdev.edmodo.cropper.CropImageView$f */
    /* loaded from: classes4-dex2jar.jar:com/theartofdev/edmodo/cropper/CropImageView$f.class */
    public interface AbstractC17171f {
    }

    /* renamed from: com.theartofdev.edmodo.cropper.CropImageView$g */
    /* loaded from: classes4-dex2jar.jar:com/theartofdev/edmodo/cropper/CropImageView$g.class */
    public interface AbstractC17172g {
    }

    /* renamed from: com.theartofdev.edmodo.cropper.CropImageView$h */
    /* loaded from: classes4-dex2jar.jar:com/theartofdev/edmodo/cropper/CropImageView$h.class */
    public interface AbstractC17173h {
        /* renamed from: a */
        void mo5796a(Exception exc);
    }

    /* renamed from: com.theartofdev.edmodo.cropper.CropImageView$i */
    /* loaded from: classes4-dex2jar.jar:com/theartofdev/edmodo/cropper/CropImageView$i.class */
    public enum EnumC17174i {
        NONE,
        SAMPLING,
        RESIZE_INSIDE,
        RESIZE_FIT,
        RESIZE_EXACT
    }

    /* renamed from: com.theartofdev.edmodo.cropper.CropImageView$j */
    /* loaded from: classes4-dex2jar.jar:com/theartofdev/edmodo/cropper/CropImageView$j.class */
    public enum EnumC17175j {
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
        this.f60774m = new Matrix();
        this.f60775n = new Matrix();
        this.f60777p = new float[8];
        this.f60778q = new float[8];
        this.f60784w = false;
        this.f60785x = true;
        this.f60786y = true;
        this.f60787z = true;
        this.f60754E = 1;
        this.f60755F = 1.0f;
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
                TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, C17191g.C17196e.CropImageView, 0, 0);
                try {
                    cropImageOptions3.fixAspectRatio = obtainStyledAttributes.getBoolean(C17191g.C17196e.CropImageView_cropFixAspectRatio, cropImageOptions3.fixAspectRatio);
                    cropImageOptions3.aspectRatioX = obtainStyledAttributes.getInteger(C17191g.C17196e.CropImageView_cropAspectRatioX, cropImageOptions3.aspectRatioX);
                    cropImageOptions3.aspectRatioY = obtainStyledAttributes.getInteger(C17191g.C17196e.CropImageView_cropAspectRatioY, cropImageOptions3.aspectRatioY);
                    cropImageOptions3.scaleType = EnumC17175j.values()[obtainStyledAttributes.getInt(C17191g.C17196e.CropImageView_cropScaleType, cropImageOptions3.scaleType.ordinal())];
                    cropImageOptions3.autoZoomEnabled = obtainStyledAttributes.getBoolean(C17191g.C17196e.CropImageView_cropAutoZoomEnabled, cropImageOptions3.autoZoomEnabled);
                    cropImageOptions3.multiTouchEnabled = obtainStyledAttributes.getBoolean(C17191g.C17196e.CropImageView_cropMultiTouchEnabled, cropImageOptions3.multiTouchEnabled);
                    cropImageOptions3.maxZoom = obtainStyledAttributes.getInteger(C17191g.C17196e.CropImageView_cropMaxZoom, cropImageOptions3.maxZoom);
                    cropImageOptions3.cropShape = EnumC17167b.values()[obtainStyledAttributes.getInt(C17191g.C17196e.CropImageView_cropShape, cropImageOptions3.cropShape.ordinal())];
                    cropImageOptions3.guidelines = EnumC17168c.values()[obtainStyledAttributes.getInt(C17191g.C17196e.CropImageView_cropGuidelines, cropImageOptions3.guidelines.ordinal())];
                    cropImageOptions3.snapRadius = obtainStyledAttributes.getDimension(C17191g.C17196e.CropImageView_cropSnapRadius, cropImageOptions3.snapRadius);
                    cropImageOptions3.touchRadius = obtainStyledAttributes.getDimension(C17191g.C17196e.CropImageView_cropTouchRadius, cropImageOptions3.touchRadius);
                    cropImageOptions3.initialCropWindowPaddingRatio = obtainStyledAttributes.getFloat(C17191g.C17196e.CropImageView_cropInitialCropWindowPaddingRatio, cropImageOptions3.initialCropWindowPaddingRatio);
                    cropImageOptions3.borderLineThickness = obtainStyledAttributes.getDimension(C17191g.C17196e.CropImageView_cropBorderLineThickness, cropImageOptions3.borderLineThickness);
                    cropImageOptions3.borderLineColor = obtainStyledAttributes.getInteger(C17191g.C17196e.CropImageView_cropBorderLineColor, cropImageOptions3.borderLineColor);
                    cropImageOptions3.borderCornerThickness = obtainStyledAttributes.getDimension(C17191g.C17196e.CropImageView_cropBorderCornerThickness, cropImageOptions3.borderCornerThickness);
                    cropImageOptions3.borderCornerOffset = obtainStyledAttributes.getDimension(C17191g.C17196e.CropImageView_cropBorderCornerOffset, cropImageOptions3.borderCornerOffset);
                    cropImageOptions3.borderCornerLength = obtainStyledAttributes.getDimension(C17191g.C17196e.CropImageView_cropBorderCornerLength, cropImageOptions3.borderCornerLength);
                    cropImageOptions3.borderCornerColor = obtainStyledAttributes.getInteger(C17191g.C17196e.CropImageView_cropBorderCornerColor, cropImageOptions3.borderCornerColor);
                    cropImageOptions3.guidelinesThickness = obtainStyledAttributes.getDimension(C17191g.C17196e.CropImageView_cropGuidelinesThickness, cropImageOptions3.guidelinesThickness);
                    cropImageOptions3.guidelinesColor = obtainStyledAttributes.getInteger(C17191g.C17196e.CropImageView_cropGuidelinesColor, cropImageOptions3.guidelinesColor);
                    cropImageOptions3.backgroundColor = obtainStyledAttributes.getInteger(C17191g.C17196e.CropImageView_cropBackgroundColor, cropImageOptions3.backgroundColor);
                    cropImageOptions3.showCropOverlay = obtainStyledAttributes.getBoolean(C17191g.C17196e.CropImageView_cropShowCropOverlay, this.f60785x);
                    cropImageOptions3.showProgressBar = obtainStyledAttributes.getBoolean(C17191g.C17196e.CropImageView_cropShowProgressBar, this.f60786y);
                    cropImageOptions3.borderCornerThickness = obtainStyledAttributes.getDimension(C17191g.C17196e.CropImageView_cropBorderCornerThickness, cropImageOptions3.borderCornerThickness);
                    cropImageOptions3.minCropWindowWidth = (int) obtainStyledAttributes.getDimension(C17191g.C17196e.CropImageView_cropMinCropWindowWidth, cropImageOptions3.minCropWindowWidth);
                    cropImageOptions3.minCropWindowHeight = (int) obtainStyledAttributes.getDimension(C17191g.C17196e.CropImageView_cropMinCropWindowHeight, cropImageOptions3.minCropWindowHeight);
                    cropImageOptions3.minCropResultWidth = (int) obtainStyledAttributes.getFloat(C17191g.C17196e.CropImageView_cropMinCropResultWidthPX, cropImageOptions3.minCropResultWidth);
                    cropImageOptions3.minCropResultHeight = (int) obtainStyledAttributes.getFloat(C17191g.C17196e.CropImageView_cropMinCropResultHeightPX, cropImageOptions3.minCropResultHeight);
                    cropImageOptions3.maxCropResultWidth = (int) obtainStyledAttributes.getFloat(C17191g.C17196e.CropImageView_cropMaxCropResultWidthPX, cropImageOptions3.maxCropResultWidth);
                    cropImageOptions3.maxCropResultHeight = (int) obtainStyledAttributes.getFloat(C17191g.C17196e.CropImageView_cropMaxCropResultHeightPX, cropImageOptions3.maxCropResultHeight);
                    cropImageOptions3.flipHorizontally = obtainStyledAttributes.getBoolean(C17191g.C17196e.CropImageView_cropFlipHorizontally, cropImageOptions3.flipHorizontally);
                    cropImageOptions3.flipVertically = obtainStyledAttributes.getBoolean(C17191g.C17196e.CropImageView_cropFlipHorizontally, cropImageOptions3.flipVertically);
                    this.f60784w = obtainStyledAttributes.getBoolean(C17191g.C17196e.CropImageView_cropSaveBitmapToInstanceState, this.f60784w);
                    if (obtainStyledAttributes.hasValue(C17191g.C17196e.CropImageView_cropAspectRatioX) && obtainStyledAttributes.hasValue(C17191g.C17196e.CropImageView_cropAspectRatioX) && !obtainStyledAttributes.hasValue(C17191g.C17196e.CropImageView_cropFixAspectRatio)) {
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
        this.f60783v = cropImageOptions2.scaleType;
        this.f60787z = cropImageOptions2.autoZoomEnabled;
        this.f60750A = cropImageOptions2.maxZoom;
        this.f60785x = cropImageOptions2.showCropOverlay;
        this.f60786y = cropImageOptions2.showProgressBar;
        this.f60765d = cropImageOptions2.flipHorizontally;
        this.f60766e = cropImageOptions2.flipVertically;
        View inflate = LayoutInflater.from(context).inflate(C17191g.C17193b.crop_image_view, (ViewGroup) this, true);
        ImageView imageView = (ImageView) inflate.findViewById(C17191g.C17192a.ImageView_image);
        this.f60772k = imageView;
        imageView.setScaleType(ImageView.ScaleType.MATRIX);
        CropOverlayView cropOverlayView = (CropOverlayView) inflate.findViewById(C17191g.C17192a.CropOverlayView);
        this.f60773l = cropOverlayView;
        cropOverlayView.setCropWindowChangeListener(new CropOverlayView.AbstractC17177a() { // from class: com.theartofdev.edmodo.cropper.CropImageView.1
            @Override // com.theartofdev.edmodo.cropper.CropOverlayView.AbstractC17177a
            /* renamed from: a */
            public final void mo5784a(boolean z) {
                CropImageView.this.m5805a(z, true);
                if (CropImageView.this.f60751B != null && !z) {
                    CropImageView.this.m5804b();
                }
                if (CropImageView.this.f60752C == null || !z) {
                    return;
                }
                CropImageView.this.m5804b();
            }
        });
        cropOverlayView.setInitialAttributeValues(cropImageOptions2);
        this.f60776o = (ProgressBar) inflate.findViewById(C17191g.C17192a.CropProgressBar);
        m5801d();
    }

    /* renamed from: a */
    private static int m5812a(int i, int i2, int i3) {
        if (i != 1073741824) {
            i2 = i == Integer.MIN_VALUE ? Math.min(i3, i2) : i3;
        }
        return i2;
    }

    /* renamed from: a */
    private void m5811a(int i, int i2, EnumC17174i enumC17174i, Uri uri, Bitmap.CompressFormat compressFormat, int i3) {
        Bitmap bitmap = this.f60762a;
        if (bitmap != null) {
            this.f60772k.clearAnimation();
            WeakReference<AsyncTaskC17179a> weakReference = this.f60771j;
            AsyncTaskC17179a asyncTaskC17179a = weakReference != null ? weakReference.get() : null;
            if (asyncTaskC17179a != null) {
                asyncTaskC17179a.cancel(true);
            }
            if (enumC17174i == EnumC17174i.NONE) {
                i = 0;
            }
            if (enumC17174i == EnumC17174i.NONE) {
                i2 = 0;
            }
            int width = bitmap.getWidth();
            int i4 = this.f60754E;
            int height = bitmap.getHeight();
            int i5 = this.f60754E;
            if (this.f60769h == null || (i5 <= 1 && enumC17174i != EnumC17174i.SAMPLING)) {
                this.f60771j = new WeakReference<>(new AsyncTaskC17179a(this, bitmap, m5802c(), this.f60764c, this.f60773l.f60794b, this.f60773l.f60795c, this.f60773l.f60796d, i, i2, this.f60765d, this.f60766e, enumC17174i, uri, compressFormat, i3));
            } else {
                this.f60771j = new WeakReference<>(new AsyncTaskC17179a(this, this.f60769h, m5802c(), this.f60764c, width * i4, height * i5, this.f60773l.f60794b, this.f60773l.f60795c, this.f60773l.f60796d, i, i2, this.f60765d, this.f60766e, enumC17174i, uri, compressFormat, i3));
            }
            this.f60771j.get().executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, new Void[0]);
            m5801d();
        }
    }

    /* renamed from: a */
    private void m5806a(boolean z) {
        if (this.f60762a != null && !z) {
            this.f60773l.setCropWindowLimits(getWidth(), getHeight(), (this.f60754E * 100.0f) / C17183c.m5756e(this.f60778q), (this.f60754E * 100.0f) / C17183c.m5755f(this.f60778q));
        }
        this.f60773l.setBounds(z ? null : this.f60777p, getWidth(), getHeight());
    }

    /* JADX WARN: Code restructure failed: missing block: B:37:0x011d, code lost:
        if (r0.height() > (r0 * 0.65f)) goto L38;
     */
    /* JADX WARN: Removed duplicated region for block: B:34:0x00f5  */
    /* JADX WARN: Removed duplicated region for block: B:41:0x0153  */
    /* JADX WARN: Removed duplicated region for block: B:42:0x015a  */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void m5805a(boolean r7, boolean r8) {
        /*
            Method dump skipped, instructions count: 430
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.theartofdev.edmodo.cropper.CropImageView.m5805a(boolean, boolean):void");
    }

    /* renamed from: e */
    private void m5800e() {
        Bitmap bitmap = this.f60762a;
        if (bitmap != null && (this.f60782u > 0 || this.f60769h != null)) {
            bitmap.recycle();
        }
        this.f60762a = null;
        this.f60782u = 0;
        this.f60769h = null;
        this.f60754E = 1;
        this.f60764c = 0;
        this.f60755F = 1.0f;
        this.f60756G = BitmapDescriptorFactory.HUE_RED;
        this.f60757H = BitmapDescriptorFactory.HUE_RED;
        this.f60774m.reset();
        this.f60761L = null;
        this.f60772k.setImageBitmap(null);
        m5798g();
    }

    /* renamed from: f */
    private void m5799f() {
        float[] fArr = this.f60777p;
        fArr[0] = 0.0f;
        fArr[1] = 0.0f;
        fArr[2] = this.f60762a.getWidth();
        float[] fArr2 = this.f60777p;
        fArr2[3] = 0.0f;
        fArr2[4] = this.f60762a.getWidth();
        this.f60777p[5] = this.f60762a.getHeight();
        float[] fArr3 = this.f60777p;
        fArr3[6] = 0.0f;
        fArr3[7] = this.f60762a.getHeight();
        this.f60774m.mapPoints(this.f60777p);
        float[] fArr4 = this.f60778q;
        fArr4[0] = 0.0f;
        fArr4[1] = 0.0f;
        fArr4[2] = 100.0f;
        fArr4[3] = 0.0f;
        fArr4[4] = 100.0f;
        fArr4[5] = 100.0f;
        fArr4[6] = 0.0f;
        fArr4[7] = 100.0f;
        this.f60774m.mapPoints(fArr4);
    }

    /* renamed from: g */
    private void m5798g() {
        CropOverlayView cropOverlayView = this.f60773l;
        if (cropOverlayView != null) {
            cropOverlayView.setVisibility((!this.f60785x || this.f60762a == null) ? 4 : 0);
        }
    }

    /* renamed from: a */
    public final Rect m5815a() {
        int i = this.f60754E;
        Bitmap bitmap = this.f60762a;
        if (bitmap == null) {
            return null;
        }
        return new Rect(0, 0, bitmap.getWidth() * i, bitmap.getHeight() * i);
    }

    /* renamed from: a */
    public final void m5814a(float f, float f2, boolean z, boolean z2) {
        if (this.f60762a == null || f <= BitmapDescriptorFactory.HUE_RED || f2 <= BitmapDescriptorFactory.HUE_RED) {
            return;
        }
        this.f60774m.invert(this.f60775n);
        RectF m5750a = this.f60773l.f60793a.m5750a();
        this.f60775n.mapRect(m5750a);
        this.f60774m.reset();
        this.f60774m.postTranslate((f - this.f60762a.getWidth()) / 2.0f, (f2 - this.f60762a.getHeight()) / 2.0f);
        m5799f();
        int i = this.f60764c;
        if (i > 0) {
            this.f60774m.postRotate(i, C17183c.m5754g(this.f60777p), C17183c.m5753h(this.f60777p));
            m5799f();
        }
        float min = Math.min(f / C17183c.m5756e(this.f60777p), f2 / C17183c.m5755f(this.f60777p));
        if (this.f60783v == EnumC17175j.FIT_CENTER || ((this.f60783v == EnumC17175j.CENTER_INSIDE && min < 1.0f) || (min > 1.0f && this.f60787z))) {
            this.f60774m.postScale(min, min, C17183c.m5754g(this.f60777p), C17183c.m5753h(this.f60777p));
            m5799f();
        }
        float f3 = this.f60765d ? -this.f60755F : this.f60755F;
        float f4 = this.f60766e ? -this.f60755F : this.f60755F;
        this.f60774m.postScale(f3, f4, C17183c.m5754g(this.f60777p), C17183c.m5753h(this.f60777p));
        m5799f();
        this.f60774m.mapRect(m5750a);
        if (z) {
            this.f60756G = f > C17183c.m5756e(this.f60777p) ? 0.0f : Math.max(Math.min((f / 2.0f) - m5750a.centerX(), -C17183c.m5761a(this.f60777p)), getWidth() - C17183c.m5758c(this.f60777p)) / f3;
            this.f60757H = f2 > C17183c.m5755f(this.f60777p) ? 0.0f : Math.max(Math.min((f2 / 2.0f) - m5750a.centerY(), -C17183c.m5759b(this.f60777p)), getHeight() - C17183c.m5757d(this.f60777p)) / f4;
        } else {
            this.f60756G = Math.min(Math.max(this.f60756G * f3, -m5750a.left), (-m5750a.right) + f) / f3;
            this.f60757H = Math.min(Math.max(this.f60757H * f4, -m5750a.top), (-m5750a.bottom) + f2) / f4;
        }
        this.f60774m.postTranslate(this.f60756G * f3, this.f60757H * f4);
        m5750a.offset(this.f60756G * f3, this.f60757H * f4);
        this.f60773l.setCropWindowRect(m5750a);
        m5799f();
        this.f60773l.invalidate();
        if (z2) {
            this.f60779r.m5751b(this.f60777p, this.f60774m);
            this.f60772k.startAnimation(this.f60779r);
        } else {
            this.f60772k.setImageMatrix(this.f60774m);
        }
        m5806a(false);
    }

    /* renamed from: a */
    public final void m5813a(int i) {
        if (this.f60762a != null) {
            int i2 = i < 0 ? (i % 360) + 360 : i % 360;
            boolean z = !this.f60773l.f60794b && ((i2 > 45 && i2 < 135) || (i2 > 215 && i2 < 305));
            C17183c.f60856c.set(this.f60773l.f60793a.m5750a());
            RectF rectF = C17183c.f60856c;
            float height = (z ? rectF.height() : rectF.width()) / 2.0f;
            RectF rectF2 = C17183c.f60856c;
            float width = (z ? rectF2.width() : rectF2.height()) / 2.0f;
            if (z) {
                boolean z2 = this.f60765d;
                this.f60765d = this.f60766e;
                this.f60766e = z2;
            }
            this.f60774m.invert(this.f60775n);
            C17183c.f60857d[0] = C17183c.f60856c.centerX();
            C17183c.f60857d[1] = C17183c.f60856c.centerY();
            C17183c.f60857d[2] = 0.0f;
            C17183c.f60857d[3] = 0.0f;
            C17183c.f60857d[4] = 1.0f;
            C17183c.f60857d[5] = 0.0f;
            this.f60775n.mapPoints(C17183c.f60857d);
            this.f60764c = (this.f60764c + i2) % 360;
            m5814a(getWidth(), getHeight(), true, false);
            this.f60774m.mapPoints(C17183c.f60858e, C17183c.f60857d);
            float sqrt = (float) (this.f60755F / Math.sqrt(Math.pow(C17183c.f60858e[4] - C17183c.f60858e[2], 2.0d) + Math.pow(C17183c.f60858e[5] - C17183c.f60858e[3], 2.0d)));
            this.f60755F = sqrt;
            this.f60755F = Math.max(sqrt, 1.0f);
            m5814a(getWidth(), getHeight(), true, false);
            this.f60774m.mapPoints(C17183c.f60858e, C17183c.f60857d);
            double sqrt2 = Math.sqrt(Math.pow(C17183c.f60858e[4] - C17183c.f60858e[2], 2.0d) + Math.pow(C17183c.f60858e[5] - C17183c.f60858e[3], 2.0d));
            float f = (float) (height * sqrt2);
            float f2 = (float) (width * sqrt2);
            C17183c.f60856c.set(C17183c.f60858e[0] - f, C17183c.f60858e[1] - f2, C17183c.f60858e[0] + f, C17183c.f60858e[1] + f2);
            this.f60773l.m5789b();
            this.f60773l.setCropWindowRect(C17183c.f60856c);
            m5814a(getWidth(), getHeight(), true, false);
            m5805a(false, false);
            this.f60773l.m5795a();
        }
    }

    /* renamed from: a */
    public final void m5810a(Bitmap bitmap, int i, Uri uri, int i2, int i3) {
        Bitmap bitmap2 = this.f60762a;
        if (bitmap2 == null || !bitmap2.equals(bitmap)) {
            this.f60772k.clearAnimation();
            m5800e();
            this.f60762a = bitmap;
            this.f60772k.setImageBitmap(bitmap);
            this.f60769h = uri;
            this.f60782u = i;
            this.f60754E = i2;
            this.f60764c = i3;
            m5814a(getWidth(), getHeight(), true, false);
            CropOverlayView cropOverlayView = this.f60773l;
            if (cropOverlayView == null) {
                return;
            }
            cropOverlayView.m5789b();
            m5798g();
        }
    }

    /* renamed from: a */
    public final void m5809a(Uri uri, Bitmap.CompressFormat compressFormat, int i, int i2, int i3, EnumC17174i enumC17174i) {
        if (this.f60768g != null) {
            m5811a(i2, i3, enumC17174i, uri, compressFormat, i);
            return;
        }
        throw new IllegalArgumentException("mOnCropImageCompleteListener is not set");
    }

    /* renamed from: b */
    public final Rect m5804b() {
        int i = this.f60754E;
        Bitmap bitmap = this.f60762a;
        if (bitmap == null) {
            return null;
        }
        return C17183c.m5760a(m5802c(), bitmap.getWidth() * i, i * bitmap.getHeight(), this.f60773l.f60794b, this.f60773l.f60795c, this.f60773l.f60796d);
    }

    /* renamed from: c */
    public final float[] m5802c() {
        RectF m5750a = this.f60773l.f60793a.m5750a();
        float[] fArr = new float[8];
        fArr[0] = m5750a.left;
        fArr[1] = m5750a.top;
        fArr[2] = m5750a.right;
        fArr[3] = m5750a.top;
        fArr[4] = m5750a.right;
        fArr[5] = m5750a.bottom;
        fArr[6] = m5750a.left;
        fArr[7] = m5750a.bottom;
        this.f60774m.invert(this.f60775n);
        this.f60775n.mapPoints(fArr);
        for (int i = 0; i < 8; i++) {
            fArr[i] = fArr[i] * this.f60754E;
        }
        return fArr;
    }

    /* renamed from: d */
    public final void m5801d() {
        this.f60776o.setVisibility(this.f60786y && ((this.f60762a == null && this.f60770i != null) || this.f60771j != null) ? 0 : 4);
    }

    @Override // android.widget.FrameLayout, android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
        super.onLayout(z, i, i2, i3, i4);
        if (this.f60780s <= 0 || this.f60781t <= 0) {
            m5806a(true);
            return;
        }
        ViewGroup.LayoutParams layoutParams = getLayoutParams();
        layoutParams.width = this.f60780s;
        layoutParams.height = this.f60781t;
        setLayoutParams(layoutParams);
        if (this.f60762a == null) {
            m5806a(true);
            return;
        }
        float f = i3 - i;
        float f2 = i4 - i2;
        m5814a(f, f2, true, false);
        if (this.f60758I == null) {
            if (!this.f60760K) {
                return;
            }
            this.f60760K = false;
            m5805a(false, false);
            return;
        }
        int i5 = this.f60759J;
        if (i5 != this.f60763b) {
            this.f60764c = i5;
            m5814a(f, f2, true, false);
        }
        this.f60774m.mapRect(this.f60758I);
        this.f60773l.setCropWindowRect(this.f60758I);
        m5805a(false, false);
        this.f60773l.m5795a();
        this.f60758I = null;
    }

    /* JADX WARN: Type inference failed for: r0v53, types: [double] */
    /* JADX WARN: Type inference failed for: r0v57, types: [double] */
    @Override // android.widget.FrameLayout, android.view.View
    protected void onMeasure(int i, int i2) {
        int i3;
        int i4;
        super.onMeasure(i, i2);
        int mode = View.MeasureSpec.getMode(i);
        int size = View.MeasureSpec.getSize(i);
        int mode2 = View.MeasureSpec.getMode(i2);
        int size2 = View.MeasureSpec.getSize(i2);
        Bitmap bitmap = this.f60762a;
        if (bitmap == null) {
            setMeasuredDimension(size, size2);
            return;
        }
        int i5 = size2;
        if (size2 == 0) {
            i5 = bitmap.getHeight();
        }
        char width = size < this.f60762a.getWidth() ? size / this.f60762a.getWidth() : (char) 0;
        char height = i5 < this.f60762a.getHeight() ? i5 / this.f60762a.getHeight() : (char) 0;
        if (width == Double.POSITIVE_INFINITY && height == Double.POSITIVE_INFINITY) {
            i3 = this.f60762a.getWidth();
            i4 = this.f60762a.getHeight();
        } else if (width <= height) {
            i4 = (int) (this.f60762a.getHeight() * width);
            i3 = size;
        } else {
            i3 = (int) (this.f60762a.getWidth() * height);
            i4 = i5;
        }
        int m5812a = m5812a(mode, size, i3);
        int m5812a2 = m5812a(mode2, i5, i4);
        this.f60780s = m5812a;
        this.f60781t = m5812a2;
        setMeasuredDimension(m5812a, m5812a2);
    }

    @Override // android.view.View
    public void onRestoreInstanceState(Parcelable parcelable) {
        if (!(parcelable instanceof Bundle)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        Bundle bundle = (Bundle) parcelable;
        if (this.f60770i == null && this.f60769h == null && this.f60762a == null && this.f60782u == 0) {
            Uri uri = (Uri) bundle.getParcelable("LOADED_IMAGE_URI");
            if (uri != null) {
                String string = bundle.getString("LOADED_IMAGE_STATE_BITMAP_KEY");
                if (string != null) {
                    Bitmap bitmap = (C17183c.f60859f == null || !((String) C17183c.f60859f.first).equals(string)) ? null : (Bitmap) ((WeakReference) C17183c.f60859f.second).get();
                    C17183c.f60859f = null;
                    if (bitmap != null && !bitmap.isRecycled()) {
                        m5810a(bitmap, 0, uri, bundle.getInt("LOADED_SAMPLE_SIZE"), 0);
                    }
                }
                if (this.f60769h == null) {
                    setImageUriAsync(uri);
                }
            } else {
                int i = bundle.getInt("LOADED_IMAGE_RESOURCE");
                if (i > 0) {
                    setImageResource(i);
                } else {
                    Uri uri2 = (Uri) bundle.getParcelable("LOADING_IMAGE_URI");
                    if (uri2 != null) {
                        setImageUriAsync(uri2);
                    }
                }
            }
            int i2 = bundle.getInt("DEGREES_ROTATED");
            this.f60759J = i2;
            this.f60764c = i2;
            Rect rect = (Rect) bundle.getParcelable("INITIAL_CROP_RECT");
            if (rect != null && (rect.width() > 0 || rect.height() > 0)) {
                this.f60773l.setInitialCropWindowRect(rect);
            }
            RectF rectF = (RectF) bundle.getParcelable("CROP_WINDOW_RECT");
            if (rectF != null && (rectF.width() > BitmapDescriptorFactory.HUE_RED || rectF.height() > BitmapDescriptorFactory.HUE_RED)) {
                this.f60758I = rectF;
            }
            this.f60773l.setCropShape(EnumC17167b.valueOf(bundle.getString("CROP_SHAPE")));
            this.f60787z = bundle.getBoolean("CROP_AUTO_ZOOM_ENABLED");
            this.f60750A = bundle.getInt("CROP_MAX_ZOOM");
            this.f60765d = bundle.getBoolean("CROP_FLIP_HORIZONTALLY");
            this.f60766e = bundle.getBoolean("CROP_FLIP_VERTICALLY");
        }
        super.onRestoreInstanceState(bundle.getParcelable("instanceState"));
    }

    @Override // android.view.View
    public Parcelable onSaveInstanceState() {
        AsyncTaskC17181b asyncTaskC17181b;
        if (this.f60769h == null && this.f60762a == null && this.f60782u <= 0) {
            return super.onSaveInstanceState();
        }
        Bundle bundle = new Bundle();
        Uri uri = this.f60769h;
        Uri uri2 = uri;
        if (this.f60784w) {
            uri2 = uri;
            if (uri == null) {
                uri2 = uri;
                if (this.f60782u <= 0) {
                    uri2 = C17183c.m5776a(getContext(), this.f60762a, this.f60761L);
                    this.f60761L = uri2;
                }
            }
        }
        if (uri2 != null && this.f60762a != null) {
            String uuid = UUID.randomUUID().toString();
            C17183c.f60859f = new Pair<>(uuid, new WeakReference(this.f60762a));
            bundle.putString("LOADED_IMAGE_STATE_BITMAP_KEY", uuid);
        }
        WeakReference<AsyncTaskC17181b> weakReference = this.f60770i;
        if (weakReference != null && (asyncTaskC17181b = weakReference.get()) != null) {
            bundle.putParcelable("LOADING_IMAGE_URI", asyncTaskC17181b.f60844a);
        }
        bundle.putParcelable("instanceState", super.onSaveInstanceState());
        bundle.putParcelable("LOADED_IMAGE_URI", uri2);
        bundle.putInt("LOADED_IMAGE_RESOURCE", this.f60782u);
        bundle.putInt("LOADED_SAMPLE_SIZE", this.f60754E);
        bundle.putInt("DEGREES_ROTATED", this.f60764c);
        bundle.putParcelable("INITIAL_CROP_RECT", this.f60773l.f60798f);
        C17183c.f60856c.set(this.f60773l.f60793a.m5750a());
        this.f60774m.invert(this.f60775n);
        this.f60775n.mapRect(C17183c.f60856c);
        bundle.putParcelable("CROP_WINDOW_RECT", C17183c.f60856c);
        bundle.putString("CROP_SHAPE", this.f60773l.f60797e.name());
        bundle.putBoolean("CROP_AUTO_ZOOM_ENABLED", this.f60787z);
        bundle.putInt("CROP_MAX_ZOOM", this.f60750A);
        bundle.putBoolean("CROP_FLIP_HORIZONTALLY", this.f60765d);
        bundle.putBoolean("CROP_FLIP_VERTICALLY", this.f60766e);
        return bundle;
    }

    @Override // android.view.View
    protected void onSizeChanged(int i, int i2, int i3, int i4) {
        super.onSizeChanged(i, i2, i3, i4);
        this.f60760K = i3 > 0 && i4 > 0;
    }

    public void setAspectRatio(int i, int i2) {
        this.f60773l.setAspectRatioX(i);
        this.f60773l.setAspectRatioY(i2);
        setFixedAspectRatio(true);
    }

    public void setAutoZoomEnabled(boolean z) {
        if (this.f60787z != z) {
            this.f60787z = z;
            m5805a(false, false);
            this.f60773l.invalidate();
        }
    }

    public void setCropRect(Rect rect) {
        this.f60773l.setInitialCropWindowRect(rect);
    }

    public void setCropShape(EnumC17167b enumC17167b) {
        this.f60773l.setCropShape(enumC17167b);
    }

    public void setFixedAspectRatio(boolean z) {
        this.f60773l.setFixedAspectRatio(z);
    }

    public void setFlippedHorizontally(boolean z) {
        if (this.f60765d != z) {
            this.f60765d = z;
            m5814a(getWidth(), getHeight(), true, false);
        }
    }

    public void setFlippedVertically(boolean z) {
        if (this.f60766e != z) {
            this.f60766e = z;
            m5814a(getWidth(), getHeight(), true, false);
        }
    }

    public void setGuidelines(EnumC17168c enumC17168c) {
        this.f60773l.setGuidelines(enumC17168c);
    }

    public void setImageBitmap(Bitmap bitmap) {
        this.f60773l.setInitialCropWindowRect(null);
        m5810a(bitmap, 0, null, 1, 0);
    }

    public void setImageBitmap(Bitmap bitmap, C1022a c1022a) {
        int i;
        if (bitmap == null || c1022a == null) {
            i = 0;
        } else {
            C17183c.C17185b m5767a = C17183c.m5767a(bitmap, c1022a);
            bitmap = m5767a.f60863a;
            i = m5767a.f60864b;
            this.f60763b = m5767a.f60864b;
        }
        this.f60773l.setInitialCropWindowRect(null);
        m5810a(bitmap, 0, null, 1, i);
    }

    public void setImageResource(int i) {
        if (i != 0) {
            this.f60773l.setInitialCropWindowRect(null);
            m5810a(BitmapFactory.decodeResource(getResources(), i), i, null, 1, 0);
        }
    }

    public void setImageUriAsync(Uri uri) {
        if (uri != null) {
            WeakReference<AsyncTaskC17181b> weakReference = this.f60770i;
            AsyncTaskC17181b asyncTaskC17181b = weakReference != null ? weakReference.get() : null;
            if (asyncTaskC17181b != null) {
                asyncTaskC17181b.cancel(true);
            }
            m5800e();
            this.f60758I = null;
            this.f60759J = 0;
            this.f60773l.setInitialCropWindowRect(null);
            WeakReference<AsyncTaskC17181b> weakReference2 = new WeakReference<>(new AsyncTaskC17181b(this, uri));
            this.f60770i = weakReference2;
            weakReference2.get().executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, new Void[0]);
            m5801d();
        }
    }

    public void setMaxCropResultSize(int i, int i2) {
        this.f60773l.setMaxCropResultSize(i, i2);
    }

    public void setMaxZoom(int i) {
        if (this.f60750A == i || i <= 0) {
            return;
        }
        this.f60750A = i;
        m5805a(false, false);
        this.f60773l.invalidate();
    }

    public void setMinCropResultSize(int i, int i2) {
        this.f60773l.setMinCropResultSize(i, i2);
    }

    public void setMultiTouchEnabled(boolean z) {
        if (this.f60773l.m5790a(z)) {
            m5805a(false, false);
            this.f60773l.invalidate();
        }
    }

    public void setOnCropImageCompleteListener(AbstractC17169d abstractC17169d) {
        this.f60768g = abstractC17169d;
    }

    public void setOnCropWindowChangedListener(AbstractC17172g abstractC17172g) {
        this.f60753D = abstractC17172g;
    }

    public void setOnSetCropOverlayMovedListener(AbstractC17170e abstractC17170e) {
        this.f60752C = abstractC17170e;
    }

    public void setOnSetCropOverlayReleasedListener(AbstractC17171f abstractC17171f) {
        this.f60751B = abstractC17171f;
    }

    public void setOnSetImageUriCompleteListener(AbstractC17173h abstractC17173h) {
        this.f60767f = abstractC17173h;
    }

    public void setRotatedDegrees(int i) {
        int i2 = this.f60764c;
        if (i2 != i) {
            m5813a(i - i2);
        }
    }

    public void setSaveBitmapToInstanceState(boolean z) {
        this.f60784w = z;
    }

    public void setScaleType(EnumC17175j enumC17175j) {
        if (enumC17175j != this.f60783v) {
            this.f60783v = enumC17175j;
            this.f60755F = 1.0f;
            this.f60757H = BitmapDescriptorFactory.HUE_RED;
            this.f60756G = BitmapDescriptorFactory.HUE_RED;
            this.f60773l.m5789b();
            requestLayout();
        }
    }

    public void setShowCropOverlay(boolean z) {
        if (this.f60785x != z) {
            this.f60785x = z;
            m5798g();
        }
    }

    public void setShowProgressBar(boolean z) {
        if (this.f60786y != z) {
            this.f60786y = z;
            m5801d();
        }
    }

    public void setSnapRadius(float f) {
        if (f >= BitmapDescriptorFactory.HUE_RED) {
            this.f60773l.setSnapRadius(f);
        }
    }
}
