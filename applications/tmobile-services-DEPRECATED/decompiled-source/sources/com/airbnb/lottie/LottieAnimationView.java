package com.airbnb.lottie;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Bitmap;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.util.Log;
import android.view.View;
import android.widget.ImageView;
import androidx.annotation.AttrRes;
import androidx.annotation.DrawableRes;
import androidx.annotation.FloatRange;
import androidx.annotation.MainThread;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RawRes;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.core.view.ViewCompat;
import com.airbnb.lottie.model.KeyPath;
import com.airbnb.lottie.utils.Logger;
import com.airbnb.lottie.utils.Utils;
import com.airbnb.lottie.value.LottieFrameInfo;
import com.airbnb.lottie.value.LottieValueCallback;
import com.airbnb.lottie.value.SimpleLottieValueCallback;
import java.io.ByteArrayInputStream;
import java.io.InputStream;
import java.util.HashSet;
import java.util.Set;
import java.util.concurrent.Callable;
/* loaded from: classes-dex2jar.jar:com/airbnb/lottie/LottieAnimationView.class */
public class LottieAnimationView extends AppCompatImageView {

    /* renamed from: x */
    private static final String f5676x = LottieAnimationView.class.getSimpleName();

    /* renamed from: y */
    private static final LottieListener<Throwable> f5677y = new LottieListener<Throwable>() { // from class: com.airbnb.lottie.LottieAnimationView.1
        /* renamed from: b */
        public void mo16218a(Throwable th) {
            if (Utils.m15687k(th)) {
                Logger.m15735d("Unable to load composition.", th);
                return;
            }
            throw new IllegalStateException("Unable to parse composition", th);
        }
    };
    @Nullable

    /* renamed from: h */
    private LottieListener<Throwable> f5680h;

    /* renamed from: k */
    private boolean f5683k;

    /* renamed from: l */
    private String f5684l;
    @RawRes

    /* renamed from: m */
    private int f5685m;
    @Nullable

    /* renamed from: v */
    private LottieTask<LottieComposition> f5694v;
    @Nullable

    /* renamed from: w */
    private LottieComposition f5695w;

    /* renamed from: f */
    private final LottieListener<LottieComposition> f5678f = new LottieListener<LottieComposition>() { // from class: com.airbnb.lottie.LottieAnimationView.2
        /* renamed from: b */
        public void mo16218a(LottieComposition lottieComposition) {
            LottieAnimationView.this.setComposition(lottieComposition);
        }
    };

    /* renamed from: g */
    private final LottieListener<Throwable> f5679g = new LottieListener<Throwable>() { // from class: com.airbnb.lottie.LottieAnimationView.3
        /* renamed from: b */
        public void mo16218a(Throwable th) {
            if (LottieAnimationView.this.f5681i != 0) {
                LottieAnimationView lottieAnimationView = LottieAnimationView.this;
                lottieAnimationView.setImageResource(lottieAnimationView.f5681i);
            }
            (LottieAnimationView.this.f5680h == null ? LottieAnimationView.f5677y : LottieAnimationView.this.f5680h).mo16218a(th);
        }
    };
    @DrawableRes

    /* renamed from: i */
    private int f5681i = 0;

    /* renamed from: j */
    private final LottieDrawable f5682j = new LottieDrawable();

    /* renamed from: n */
    private boolean f5686n = false;

    /* renamed from: o */
    private boolean f5687o = false;

    /* renamed from: p */
    private boolean f5688p = false;

    /* renamed from: q */
    private boolean f5689q = false;

    /* renamed from: r */
    private boolean f5690r = true;

    /* renamed from: s */
    private RenderMode f5691s = RenderMode.AUTOMATIC;

    /* renamed from: t */
    private Set<LottieOnCompositionLoadedListener> f5692t = new HashSet();

    /* renamed from: u */
    private int f5693u = 0;

    /* renamed from: com.airbnb.lottie.LottieAnimationView$6 */
    /* loaded from: classes-dex2jar.jar:com/airbnb/lottie/LottieAnimationView$6.class */
    class C06176 extends LottieValueCallback<T> {

        /* renamed from: c */
        final /* synthetic */ SimpleLottieValueCallback f5702c;

        /* JADX WARN: Type inference failed for: r0v2, types: [T, java.lang.Object] */
        @Override // com.airbnb.lottie.value.LottieValueCallback
        /* renamed from: a */
        public T mo15656a(LottieFrameInfo<T> lottieFrameInfo) {
            return this.f5702c.m15649a(lottieFrameInfo);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.airbnb.lottie.LottieAnimationView$7 */
    /* loaded from: classes-dex2jar.jar:com/airbnb/lottie/LottieAnimationView$7.class */
    public static /* synthetic */ class C06187 {

        /* renamed from: a */
        static final /* synthetic */ int[] f5703a;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:10:0x002f -> B:16:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:9:0x002b -> B:12:0x0014). Please submit an issue!!! */
        static {
            int[] iArr = new int[RenderMode.values().length];
            f5703a = iArr;
            try {
                iArr[RenderMode.HARDWARE.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f5703a[RenderMode.SOFTWARE.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f5703a[RenderMode.AUTOMATIC.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes-dex2jar.jar:com/airbnb/lottie/LottieAnimationView$SavedState.class */
    public static class SavedState extends View.BaseSavedState {
        public static final Parcelable.Creator<SavedState> CREATOR = new Parcelable.Creator<SavedState>() { // from class: com.airbnb.lottie.LottieAnimationView.SavedState.1
            /* renamed from: a */
            public SavedState createFromParcel(Parcel parcel) {
                return new SavedState(parcel);
            }

            /* renamed from: b */
            public SavedState[] newArray(int i) {
                return new SavedState[i];
            }
        };

        /* renamed from: f */
        String f5704f;

        /* renamed from: g */
        int f5705g;

        /* renamed from: h */
        float f5706h;

        /* renamed from: i */
        boolean f5707i;

        /* renamed from: j */
        String f5708j;

        /* renamed from: k */
        int f5709k;

        /* renamed from: l */
        int f5710l;

        private SavedState(Parcel parcel) {
            super(parcel);
            this.f5704f = parcel.readString();
            this.f5706h = parcel.readFloat();
            this.f5707i = parcel.readInt() != 1 ? false : true;
            this.f5708j = parcel.readString();
            this.f5709k = parcel.readInt();
            this.f5710l = parcel.readInt();
        }

        SavedState(Parcelable parcelable) {
            super(parcelable);
        }

        @Override // android.view.View.BaseSavedState, android.view.AbsSavedState, android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            super.writeToParcel(parcel, i);
            parcel.writeString(this.f5704f);
            parcel.writeFloat(this.f5706h);
            parcel.writeInt(this.f5707i ? 1 : 0);
            parcel.writeString(this.f5708j);
            parcel.writeInt(this.f5709k);
            parcel.writeInt(this.f5710l);
        }
    }

    public LottieAnimationView(Context context) {
        super(context);
        m16358o(null, C0651R.attr.lottieAnimationViewStyle);
    }

    public LottieAnimationView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        m16358o(attributeSet, C0651R.attr.lottieAnimationViewStyle);
    }

    public LottieAnimationView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        m16358o(attributeSet, i);
    }

    /* renamed from: i */
    private void m16364i() {
        LottieTask<LottieComposition> lottieTask = this.f5694v;
        if (lottieTask != null) {
            lottieTask.m16204k(this.f5678f);
            this.f5694v.m16205j(this.f5679g);
        }
    }

    /* renamed from: j */
    private void m16363j() {
        this.f5695w = null;
        this.f5682j.m16253f();
    }

    /* renamed from: l */
    private void m16361l() {
        boolean z;
        int i = C06187.f5703a[this.f5691s.ordinal()];
        int i2 = 2;
        if (i != 1) {
            if (i != 2 && i == 3) {
                LottieComposition lottieComposition = this.f5695w;
                if (lottieComposition == null || !lottieComposition.m16331p() || Build.VERSION.SDK_INT >= 28) {
                    LottieComposition lottieComposition2 = this.f5695w;
                    if (lottieComposition2 == null || lottieComposition2.m16335l() <= 4) {
                        int i3 = Build.VERSION.SDK_INT;
                        if (i3 < 21) {
                            z = false;
                        } else {
                            z = false;
                            if (i3 != 24) {
                                z = i3 != 25;
                            }
                        }
                    } else {
                        z = false;
                    }
                } else {
                    z = false;
                }
                if (z) {
                    i2 = 2;
                }
            }
            i2 = 1;
        }
        if (i2 != getLayerType()) {
            setLayerType(i2, null);
        }
    }

    /* renamed from: m */
    private LottieTask<LottieComposition> m16360m(final String str) {
        if (isInEditMode()) {
            return new LottieTask<>(new Callable<LottieResult<LottieComposition>>() { // from class: com.airbnb.lottie.LottieAnimationView.5
                /* renamed from: a */
                public LottieResult<LottieComposition> call() throws Exception {
                    return LottieAnimationView.this.f5690r ? LottieCompositionFactory.m16319f(LottieAnimationView.this.getContext(), str) : LottieCompositionFactory.m16318g(LottieAnimationView.this.getContext(), str, null);
                }
            }, true);
        }
        return this.f5690r ? LottieCompositionFactory.m16321d(getContext(), str) : LottieCompositionFactory.m16320e(getContext(), str, null);
    }

    /* renamed from: n */
    private LottieTask<LottieComposition> m16359n(@RawRes final int i) {
        if (isInEditMode()) {
            return new LottieTask<>(new Callable<LottieResult<LottieComposition>>() { // from class: com.airbnb.lottie.LottieAnimationView.4
                /* renamed from: a */
                public LottieResult<LottieComposition> call() throws Exception {
                    return LottieAnimationView.this.f5690r ? LottieCompositionFactory.m16308q(LottieAnimationView.this.getContext(), i) : LottieCompositionFactory.m16307r(LottieAnimationView.this.getContext(), i, null);
                }
            }, true);
        }
        return this.f5690r ? LottieCompositionFactory.m16310o(getContext(), i) : LottieCompositionFactory.m16309p(getContext(), i, null);
    }

    /* renamed from: o */
    private void m16358o(@Nullable AttributeSet attributeSet, @AttrRes int i) {
        String string;
        boolean z = false;
        TypedArray obtainStyledAttributes = getContext().obtainStyledAttributes(attributeSet, C0651R.styleable.LottieAnimationView, i, 0);
        this.f5690r = obtainStyledAttributes.getBoolean(C0651R.styleable.LottieAnimationView_lottie_cacheComposition, true);
        boolean hasValue = obtainStyledAttributes.hasValue(C0651R.styleable.LottieAnimationView_lottie_rawRes);
        boolean hasValue2 = obtainStyledAttributes.hasValue(C0651R.styleable.LottieAnimationView_lottie_fileName);
        boolean hasValue3 = obtainStyledAttributes.hasValue(C0651R.styleable.LottieAnimationView_lottie_url);
        if (!hasValue || !hasValue2) {
            if (hasValue) {
                int resourceId = obtainStyledAttributes.getResourceId(C0651R.styleable.LottieAnimationView_lottie_rawRes, 0);
                if (resourceId != 0) {
                    setAnimation(resourceId);
                }
            } else if (hasValue2) {
                String string2 = obtainStyledAttributes.getString(C0651R.styleable.LottieAnimationView_lottie_fileName);
                if (string2 != null) {
                    setAnimation(string2);
                }
            } else if (hasValue3 && (string = obtainStyledAttributes.getString(C0651R.styleable.LottieAnimationView_lottie_url)) != null) {
                setAnimationFromUrl(string);
            }
            setFallbackResource(obtainStyledAttributes.getResourceId(C0651R.styleable.LottieAnimationView_lottie_fallbackRes, 0));
            if (obtainStyledAttributes.getBoolean(C0651R.styleable.LottieAnimationView_lottie_autoPlay, false)) {
                this.f5688p = true;
                this.f5689q = true;
            }
            if (obtainStyledAttributes.getBoolean(C0651R.styleable.LottieAnimationView_lottie_loop, false)) {
                this.f5682j.m16258c0(-1);
            }
            if (obtainStyledAttributes.hasValue(C0651R.styleable.LottieAnimationView_lottie_repeatMode)) {
                setRepeatMode(obtainStyledAttributes.getInt(C0651R.styleable.LottieAnimationView_lottie_repeatMode, 1));
            }
            if (obtainStyledAttributes.hasValue(C0651R.styleable.LottieAnimationView_lottie_repeatCount)) {
                setRepeatCount(obtainStyledAttributes.getInt(C0651R.styleable.LottieAnimationView_lottie_repeatCount, -1));
            }
            if (obtainStyledAttributes.hasValue(C0651R.styleable.LottieAnimationView_lottie_speed)) {
                setSpeed(obtainStyledAttributes.getFloat(C0651R.styleable.LottieAnimationView_lottie_speed, 1.0f));
            }
            setImageAssetsFolder(obtainStyledAttributes.getString(C0651R.styleable.LottieAnimationView_lottie_imageAssetsFolder));
            setProgress(obtainStyledAttributes.getFloat(C0651R.styleable.LottieAnimationView_lottie_progress, 0.0f));
            m16362k(obtainStyledAttributes.getBoolean(C0651R.styleable.LottieAnimationView_lottie_enableMergePathsForKitKatAndAbove, false));
            if (obtainStyledAttributes.hasValue(C0651R.styleable.LottieAnimationView_lottie_colorFilter)) {
                m16366g(new KeyPath("**"), LottieProperty.f5820C, new LottieValueCallback(new SimpleColorFilter(obtainStyledAttributes.getColor(C0651R.styleable.LottieAnimationView_lottie_colorFilter, 0))));
            }
            if (obtainStyledAttributes.hasValue(C0651R.styleable.LottieAnimationView_lottie_scale)) {
                this.f5682j.m16252f0(obtainStyledAttributes.getFloat(C0651R.styleable.LottieAnimationView_lottie_scale, 1.0f));
            }
            if (obtainStyledAttributes.hasValue(C0651R.styleable.LottieAnimationView_lottie_renderMode)) {
                int i2 = obtainStyledAttributes.getInt(C0651R.styleable.LottieAnimationView_lottie_renderMode, RenderMode.AUTOMATIC.ordinal());
                int i3 = i2;
                if (i2 >= RenderMode.values().length) {
                    i3 = RenderMode.AUTOMATIC.ordinal();
                }
                setRenderMode(RenderMode.values()[i3]);
            }
            if (getScaleType() != null) {
                this.f5682j.m16250g0(getScaleType());
            }
            obtainStyledAttributes.recycle();
            LottieDrawable lottieDrawable = this.f5682j;
            if (Utils.m15692f(getContext()) != 0.0f) {
                z = true;
            }
            lottieDrawable.m16246i0(Boolean.valueOf(z));
            m16361l();
            this.f5683k = true;
            return;
        }
        throw new IllegalArgumentException("lottie_rawRes and lottie_fileName cannot be used at the same time. Please use only one at once.");
    }

    private void setCompositionTask(LottieTask<LottieComposition> lottieTask) {
        m16363j();
        m16364i();
        lottieTask.m16209f(this.f5678f);
        lottieTask.m16210e(this.f5679g);
        this.f5694v = lottieTask;
    }

    @Override // android.view.View
    public void buildDrawingCache(boolean z) {
        C0611L.m16372a("buildDrawingCache");
        this.f5693u++;
        super.buildDrawingCache(z);
        if (this.f5693u == 1 && getWidth() > 0 && getHeight() > 0 && getLayerType() == 1 && getDrawingCache(z) == null) {
            setRenderMode(RenderMode.HARDWARE);
        }
        this.f5693u--;
        C0611L.m16371b("buildDrawingCache");
    }

    /* renamed from: g */
    public <T> void m16366g(KeyPath keyPath, T t, LottieValueCallback<T> lottieValueCallback) {
        this.f5682j.m16259c(keyPath, t, lottieValueCallback);
    }

    @Nullable
    public LottieComposition getComposition() {
        return this.f5695w;
    }

    public long getDuration() {
        LottieComposition lottieComposition = this.f5695w;
        return lottieComposition != null ? lottieComposition.m16343d() : 0L;
    }

    public int getFrame() {
        return this.f5682j.m16236p();
    }

    @Nullable
    public String getImageAssetsFolder() {
        return this.f5682j.m16233s();
    }

    public float getMaxFrame() {
        return this.f5682j.m16232t();
    }

    public float getMinFrame() {
        return this.f5682j.m16230v();
    }

    @Nullable
    public PerformanceTracker getPerformanceTracker() {
        return this.f5682j.m16229w();
    }

    @FloatRange
    public float getProgress() {
        return this.f5682j.m16228x();
    }

    public int getRepeatCount() {
        return this.f5682j.m16227y();
    }

    public int getRepeatMode() {
        return this.f5682j.m16226z();
    }

    public float getScale() {
        return this.f5682j.m16289A();
    }

    public float getSpeed() {
        return this.f5682j.m16288B();
    }

    @MainThread
    /* renamed from: h */
    public void m16365h() {
        this.f5688p = false;
        this.f5687o = false;
        this.f5686n = false;
        this.f5682j.m16255e();
        m16361l();
    }

    @Override // android.widget.ImageView, android.view.View, android.graphics.drawable.Drawable.Callback
    public void invalidateDrawable(@NonNull Drawable drawable) {
        Drawable drawable2 = getDrawable();
        LottieDrawable lottieDrawable = this.f5682j;
        if (drawable2 == lottieDrawable) {
            super.invalidateDrawable(lottieDrawable);
        } else {
            super.invalidateDrawable(drawable);
        }
    }

    /* renamed from: k */
    public void m16362k(boolean z) {
        this.f5682j.m16245j(z);
    }

    @Override // android.widget.ImageView, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        if (!isInEditMode() && (this.f5689q || this.f5688p)) {
            m16355r();
            this.f5689q = false;
            this.f5688p = false;
        }
        if (Build.VERSION.SDK_INT < 23) {
            onVisibilityChanged(this, getVisibility());
        }
    }

    @Override // android.widget.ImageView, android.view.View
    protected void onDetachedFromWindow() {
        if (m16357p()) {
            m16365h();
            this.f5688p = true;
        }
        super.onDetachedFromWindow();
    }

    @Override // android.view.View
    protected void onRestoreInstanceState(Parcelable parcelable) {
        if (!(parcelable instanceof SavedState)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        SavedState savedState = (SavedState) parcelable;
        super.onRestoreInstanceState(savedState.getSuperState());
        String str = savedState.f5704f;
        this.f5684l = str;
        if (!TextUtils.isEmpty(str)) {
            setAnimation(this.f5684l);
        }
        int i = savedState.f5705g;
        this.f5685m = i;
        if (i != 0) {
            setAnimation(i);
        }
        setProgress(savedState.f5706h);
        if (savedState.f5707i) {
            m16355r();
        }
        this.f5682j.m16274P(savedState.f5708j);
        setRepeatMode(savedState.f5709k);
        setRepeatCount(savedState.f5710l);
    }

    @Override // android.view.View
    protected Parcelable onSaveInstanceState() {
        SavedState savedState = new SavedState(super.onSaveInstanceState());
        savedState.f5704f = this.f5684l;
        savedState.f5705g = this.f5685m;
        savedState.f5706h = this.f5682j.m16228x();
        savedState.f5707i = this.f5682j.m16285E() || (!ViewCompat.m19219R(this) && this.f5688p);
        savedState.f5708j = this.f5682j.m16233s();
        savedState.f5709k = this.f5682j.m16226z();
        savedState.f5710l = this.f5682j.m16227y();
        return savedState;
    }

    @Override // android.view.View
    protected void onVisibilityChanged(@NonNull View view, int i) {
        if (this.f5683k) {
            if (isShown()) {
                if (this.f5687o) {
                    m16354s();
                } else if (this.f5686n) {
                    m16355r();
                }
                this.f5687o = false;
                this.f5686n = false;
            } else if (m16357p()) {
                m16356q();
                this.f5687o = true;
            }
        }
    }

    /* renamed from: p */
    public boolean m16357p() {
        return this.f5682j.m16285E();
    }

    @MainThread
    /* renamed from: q */
    public void m16356q() {
        this.f5689q = false;
        this.f5688p = false;
        this.f5687o = false;
        this.f5686n = false;
        this.f5682j.m16283G();
        m16361l();
    }

    @MainThread
    /* renamed from: r */
    public void m16355r() {
        if (isShown()) {
            this.f5682j.m16282H();
            m16361l();
            return;
        }
        this.f5686n = true;
    }

    @MainThread
    /* renamed from: s */
    public void m16354s() {
        if (isShown()) {
            this.f5682j.m16280J();
            m16361l();
            return;
        }
        this.f5686n = false;
        this.f5687o = true;
    }

    public void setAnimation(@RawRes int i) {
        this.f5685m = i;
        this.f5684l = null;
        setCompositionTask(m16359n(i));
    }

    public void setAnimation(InputStream inputStream, @Nullable String str) {
        setCompositionTask(LottieCompositionFactory.m16317h(inputStream, str));
    }

    public void setAnimation(String str) {
        this.f5684l = str;
        this.f5685m = 0;
        setCompositionTask(m16360m(str));
    }

    @Deprecated
    public void setAnimationFromJson(String str) {
        setAnimationFromJson(str, null);
    }

    public void setAnimationFromJson(String str, @Nullable String str2) {
        setAnimation(new ByteArrayInputStream(str.getBytes()), str2);
    }

    public void setAnimationFromUrl(String str) {
        setCompositionTask(this.f5690r ? LottieCompositionFactory.m16306s(getContext(), str) : LottieCompositionFactory.m16305t(getContext(), str, null));
    }

    public void setAnimationFromUrl(String str, @Nullable String str2) {
        setCompositionTask(LottieCompositionFactory.m16305t(getContext(), str, str2));
    }

    public void setApplyingOpacityToLayersEnabled(boolean z) {
        this.f5682j.m16279K(z);
    }

    public void setCacheComposition(boolean z) {
        this.f5690r = z;
    }

    public void setComposition(@NonNull LottieComposition lottieComposition) {
        if (C0611L.f5670a) {
            String str = f5676x;
            Log.v(str, "Set Composition \n" + lottieComposition);
        }
        this.f5682j.setCallback(this);
        this.f5695w = lottieComposition;
        boolean L = this.f5682j.m16278L(lottieComposition);
        m16361l();
        if (getDrawable() != this.f5682j || L) {
            onVisibilityChanged(this, getVisibility());
            requestLayout();
            for (LottieOnCompositionLoadedListener lottieOnCompositionLoadedListener : this.f5692t) {
                lottieOnCompositionLoadedListener.m16217a(lottieComposition);
            }
        }
    }

    public void setFailureListener(@Nullable LottieListener<Throwable> lottieListener) {
        this.f5680h = lottieListener;
    }

    public void setFallbackResource(@DrawableRes int i) {
        this.f5681i = i;
    }

    public void setFontAssetDelegate(FontAssetDelegate fontAssetDelegate) {
        this.f5682j.m16277M(fontAssetDelegate);
    }

    public void setFrame(int i) {
        this.f5682j.m16276N(i);
    }

    public void setImageAssetDelegate(ImageAssetDelegate imageAssetDelegate) {
        this.f5682j.m16275O(imageAssetDelegate);
    }

    public void setImageAssetsFolder(String str) {
        this.f5682j.m16274P(str);
    }

    @Override // androidx.appcompat.widget.AppCompatImageView, android.widget.ImageView
    public void setImageBitmap(Bitmap bitmap) {
        m16364i();
        super.setImageBitmap(bitmap);
    }

    @Override // androidx.appcompat.widget.AppCompatImageView, android.widget.ImageView
    public void setImageDrawable(Drawable drawable) {
        m16364i();
        super.setImageDrawable(drawable);
    }

    @Override // androidx.appcompat.widget.AppCompatImageView, android.widget.ImageView
    public void setImageResource(int i) {
        m16364i();
        super.setImageResource(i);
    }

    public void setMaxFrame(int i) {
        this.f5682j.m16273Q(i);
    }

    public void setMaxFrame(String str) {
        this.f5682j.m16272R(str);
    }

    public void setMaxProgress(@FloatRange(from = 0.0d, to = 1.0d) float f) {
        this.f5682j.m16271S(f);
    }

    public void setMinAndMaxFrame(int i, int i2) {
        this.f5682j.m16270T(i, i2);
    }

    public void setMinAndMaxFrame(String str) {
        this.f5682j.m16269U(str);
    }

    public void setMinAndMaxFrame(String str, String str2, boolean z) {
        this.f5682j.m16268V(str, str2, z);
    }

    public void setMinAndMaxProgress(@FloatRange(from = 0.0d, to = 1.0d) float f, @FloatRange(from = 0.0d, to = 1.0d) float f2) {
        this.f5682j.m16267W(f, f2);
    }

    public void setMinFrame(int i) {
        this.f5682j.m16266X(i);
    }

    public void setMinFrame(String str) {
        this.f5682j.m16265Y(str);
    }

    public void setMinProgress(float f) {
        this.f5682j.m16264Z(f);
    }

    public void setPerformanceTrackingEnabled(boolean z) {
        this.f5682j.m16262a0(z);
    }

    public void setProgress(@FloatRange(from = 0.0d, to = 1.0d) float f) {
        this.f5682j.m16260b0(f);
    }

    public void setRenderMode(RenderMode renderMode) {
        this.f5691s = renderMode;
        m16361l();
    }

    public void setRepeatCount(int i) {
        this.f5682j.m16258c0(i);
    }

    public void setRepeatMode(int i) {
        this.f5682j.m16256d0(i);
    }

    public void setSafeMode(boolean z) {
        this.f5682j.m16254e0(z);
    }

    public void setScale(float f) {
        this.f5682j.m16252f0(f);
        if (getDrawable() == this.f5682j) {
            setImageDrawable(null);
            setImageDrawable(this.f5682j);
        }
    }

    @Override // android.widget.ImageView
    public void setScaleType(ImageView.ScaleType scaleType) {
        super.setScaleType(scaleType);
        LottieDrawable lottieDrawable = this.f5682j;
        if (lottieDrawable != null) {
            lottieDrawable.m16250g0(scaleType);
        }
    }

    public void setSpeed(float f) {
        this.f5682j.m16248h0(f);
    }

    public void setTextDelegate(TextDelegate textDelegate) {
        this.f5682j.m16244j0(textDelegate);
    }
}
