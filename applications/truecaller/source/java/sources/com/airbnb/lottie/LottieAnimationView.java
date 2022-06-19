package com.airbnb.lottie;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Bitmap;
import android.graphics.PathMeasure;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.os.Parcel;
import android.os.Parcelable;
import android.provider.Settings;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.util.JsonReader;
import android.view.View;
import androidx.appcompat.widget.AppCompatImageView;
import java.io.StringReader;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;
import java.util.Objects;
import java.util.Set;
import p193e.p1411b.p1412a.AbstractC21900b;
import p193e.p1411b.p1412a.AbstractC21939m;
import p193e.p1411b.p1412a.AbstractC21940n;
import p193e.p1411b.p1412a.AbstractC21941o;
import p193e.p1411b.p1412a.C21886a;
import p193e.p1411b.p1412a.C21906c;
import p193e.p1411b.p1412a.C21913e;
import p193e.p1411b.p1412a.C21914f;
import p193e.p1411b.p1412a.C21922k;
import p193e.p1411b.p1412a.C21944r;
import p193e.p1411b.p1412a.C21946s;
import p193e.p1411b.p1412a.C21949u;
import p193e.p1411b.p1412a.C21950v;
import p193e.p1411b.p1412a.CallableC21918g;
import p193e.p1411b.p1412a.CallableC21919h;
import p193e.p1411b.p1412a.CallableC21920i;
import p193e.p1411b.p1412a.CallableC21921j;
import p193e.p1411b.p1412a.EnumC21948t;
import p193e.p1411b.p1412a.p1414b0.C21905e;
import p193e.p1411b.p1412a.p1414b0.Choreographer$FrameCallbackC21902b;
import p193e.p1411b.p1412a.p1415c0.C21909c;
import p193e.p1411b.p1412a.p1419x.C21968a;
import p193e.p1411b.p1412a.p1419x.C21969b;
import p193e.p1411b.p1412a.p1420y.C21975e;
import p193e.p1432d.p1439c.p1440a.C22128a;
/* loaded from: classes-dex2jar.jar:com/airbnb/lottie/LottieAnimationView.class */
public class LottieAnimationView extends AppCompatImageView {

    /* renamed from: o */
    public static final String f1616o = LottieAnimationView.class.getSimpleName();

    /* renamed from: e */
    public final C21922k f1619e;

    /* renamed from: f */
    public String f1620f;

    /* renamed from: g */
    public int f1621g;

    /* renamed from: i */
    public boolean f1623i;

    /* renamed from: j */
    public boolean f1624j;

    /* renamed from: m */
    public C21944r<C21913e> f1627m;

    /* renamed from: n */
    public C21913e f1628n;

    /* renamed from: c */
    public final AbstractC21939m<C21913e> f1617c = new C0436a();

    /* renamed from: d */
    public final AbstractC21939m<Throwable> f1618d = new C0437b(this);

    /* renamed from: h */
    public boolean f1622h = false;

    /* renamed from: k */
    public EnumC21948t f1625k = EnumC21948t.AUTOMATIC;

    /* renamed from: l */
    public Set<AbstractC21940n> f1626l = new HashSet();

    /* loaded from: classes-dex2jar.jar:com/airbnb/lottie/LottieAnimationView$SavedState.class */
    public static class SavedState extends View.BaseSavedState {
        public static final Parcelable.Creator<SavedState> CREATOR = new C0435a();

        /* renamed from: a */
        public String f1629a;

        /* renamed from: b */
        public int f1630b;

        /* renamed from: c */
        public float f1631c;

        /* renamed from: d */
        public boolean f1632d;

        /* renamed from: e */
        public String f1633e;

        /* renamed from: f */
        public int f1634f;

        /* renamed from: g */
        public int f1635g;

        /* renamed from: com.airbnb.lottie.LottieAnimationView$SavedState$a */
        /* loaded from: classes-dex2jar.jar:com/airbnb/lottie/LottieAnimationView$SavedState$a.class */
        public static final class C0435a implements Parcelable.Creator<SavedState> {
            @Override // android.os.Parcelable.Creator
            public SavedState createFromParcel(Parcel parcel) {
                return new SavedState(parcel, null);
            }

            @Override // android.os.Parcelable.Creator
            public SavedState[] newArray(int i) {
                return new SavedState[i];
            }
        }

        public SavedState(Parcel parcel, C0436a c0436a) {
            super(parcel);
            this.f1629a = parcel.readString();
            this.f1631c = parcel.readFloat();
            this.f1632d = parcel.readInt() != 1 ? false : true;
            this.f1633e = parcel.readString();
            this.f1634f = parcel.readInt();
            this.f1635g = parcel.readInt();
        }

        public SavedState(Parcelable parcelable) {
            super(parcelable);
        }

        @Override // android.view.View.BaseSavedState, android.view.AbsSavedState, android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            super.writeToParcel(parcel, i);
            parcel.writeString(this.f1629a);
            parcel.writeFloat(this.f1631c);
            parcel.writeInt(this.f1632d ? 1 : 0);
            parcel.writeString(this.f1633e);
            parcel.writeInt(this.f1634f);
            parcel.writeInt(this.f1635g);
        }
    }

    /* renamed from: com.airbnb.lottie.LottieAnimationView$a */
    /* loaded from: classes-dex2jar.jar:com/airbnb/lottie/LottieAnimationView$a.class */
    public class C0436a implements AbstractC21939m<C21913e> {
        public C0436a() {
            LottieAnimationView.this = r4;
        }

        @Override // p193e.p1411b.p1412a.AbstractC21939m
        public void onResult(C21913e c21913e) {
            LottieAnimationView.this.setComposition(c21913e);
        }
    }

    /* renamed from: com.airbnb.lottie.LottieAnimationView$b */
    /* loaded from: classes-dex2jar.jar:com/airbnb/lottie/LottieAnimationView$b.class */
    public class C0437b implements AbstractC21939m<Throwable> {
        public C0437b(LottieAnimationView lottieAnimationView) {
        }

        @Override // p193e.p1411b.p1412a.AbstractC21939m
        public void onResult(Throwable th) {
            throw new IllegalStateException("Unable to parse composition", th);
        }
    }

    public LottieAnimationView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        String string;
        C21922k c21922k = new C21922k();
        this.f1619e = c21922k;
        boolean z = false;
        this.f1623i = false;
        this.f1624j = false;
        TypedArray obtainStyledAttributes = getContext().obtainStyledAttributes(attributeSet, C0438R.styleable.LottieAnimationView);
        if (!isInEditMode()) {
            int i = C0438R.styleable.LottieAnimationView_lottie_rawRes;
            boolean hasValue = obtainStyledAttributes.hasValue(i);
            int i2 = C0438R.styleable.LottieAnimationView_lottie_fileName;
            boolean hasValue2 = obtainStyledAttributes.hasValue(i2);
            int i3 = C0438R.styleable.LottieAnimationView_lottie_url;
            boolean hasValue3 = obtainStyledAttributes.hasValue(i3);
            if (hasValue && hasValue2) {
                throw new IllegalArgumentException("lottie_rawRes and lottie_fileName cannot be used at the same time. Please use only one at once.");
            }
            if (hasValue) {
                int resourceId = obtainStyledAttributes.getResourceId(i, 0);
                if (resourceId != 0) {
                    setAnimation(resourceId);
                }
            } else if (hasValue2) {
                String string2 = obtainStyledAttributes.getString(i2);
                if (string2 != null) {
                    setAnimation(string2);
                }
            } else if (hasValue3 && (string = obtainStyledAttributes.getString(i3)) != null) {
                setAnimationFromUrl(string);
            }
        }
        if (obtainStyledAttributes.getBoolean(C0438R.styleable.LottieAnimationView_lottie_autoPlay, false)) {
            this.f1623i = true;
            this.f1624j = true;
        }
        if (obtainStyledAttributes.getBoolean(C0438R.styleable.LottieAnimationView_lottie_loop, false)) {
            c21922k.f60854c.setRepeatCount(-1);
        }
        int i4 = C0438R.styleable.LottieAnimationView_lottie_repeatMode;
        if (obtainStyledAttributes.hasValue(i4)) {
            setRepeatMode(obtainStyledAttributes.getInt(i4, 1));
        }
        int i5 = C0438R.styleable.LottieAnimationView_lottie_repeatCount;
        if (obtainStyledAttributes.hasValue(i5)) {
            setRepeatCount(obtainStyledAttributes.getInt(i5, -1));
        }
        int i6 = C0438R.styleable.LottieAnimationView_lottie_speed;
        if (obtainStyledAttributes.hasValue(i6)) {
            setSpeed(obtainStyledAttributes.getFloat(i6, 1.0f));
        }
        setImageAssetsFolder(obtainStyledAttributes.getString(C0438R.styleable.LottieAnimationView_lottie_imageAssetsFolder));
        setProgress(obtainStyledAttributes.getFloat(C0438R.styleable.LottieAnimationView_lottie_progress, 0.0f));
        boolean z2 = obtainStyledAttributes.getBoolean(C0438R.styleable.LottieAnimationView_lottie_enableMergePathsForKitKatAndAbove, false);
        if (c21922k.f60862k != z2) {
            c21922k.f60862k = z2;
            if (c21922k.f60853b != null) {
                c21922k.m8896b();
            }
        }
        int i7 = C0438R.styleable.LottieAnimationView_lottie_colorFilter;
        if (obtainStyledAttributes.hasValue(i7)) {
            c21922k.m8897a(new C21975e("**"), AbstractC21941o.f60899B, new C21909c(new C21949u(obtainStyledAttributes.getColor(i7, 0))));
        }
        int i8 = C0438R.styleable.LottieAnimationView_lottie_scale;
        if (obtainStyledAttributes.hasValue(i8)) {
            c21922k.f60855d = obtainStyledAttributes.getFloat(i8, 1.0f);
            c21922k.m8880r();
        }
        obtainStyledAttributes.recycle();
        Context context2 = getContext();
        PathMeasure pathMeasure = C21905e.f60795a;
        z = Settings.Global.getFloat(context2.getContentResolver(), "animator_duration_scale", 1.0f) != 0.0f ? true : z;
        Objects.requireNonNull(c21922k);
        c21922k.f60856e = Boolean.valueOf(z).booleanValue();
        m42592f();
    }

    private void setCompositionTask(C21944r<C21913e> c21944r) {
        this.f1628n = null;
        this.f1619e.m8895c();
        m42593e();
        c21944r.m8876b(this.f1617c);
        c21944r.m8877a(this.f1618d);
        this.f1627m = c21944r;
    }

    @Override // android.view.View
    public void buildDrawingCache(boolean z) {
        super.buildDrawingCache(z);
        if (getLayerType() == 1 && getDrawingCache(z) == null) {
            setRenderMode(EnumC21948t.HARDWARE);
        }
    }

    /* renamed from: d */
    public void m42594d() {
        this.f1622h = false;
        C21922k c21922k = this.f1619e;
        c21922k.f60857f.clear();
        c21922k.f60854c.cancel();
        m42592f();
    }

    /* renamed from: e */
    public final void m42593e() {
        C21944r<C21913e> c21944r = this.f1627m;
        if (c21944r != null) {
            AbstractC21939m<C21913e> abstractC21939m = this.f1617c;
            synchronized (c21944r) {
                c21944r.f60931a.remove(abstractC21939m);
            }
            C21944r<C21913e> c21944r2 = this.f1627m;
            AbstractC21939m<Throwable> abstractC21939m2 = this.f1618d;
            synchronized (c21944r2) {
                c21944r2.f60932b.remove(abstractC21939m2);
            }
        }
    }

    /* renamed from: f */
    public final void m42592f() {
        int ordinal = this.f1625k.ordinal();
        if (ordinal != 0) {
            if (ordinal == 1) {
                setLayerType(2, null);
                return;
            } else if (ordinal != 2) {
                return;
            } else {
                setLayerType(1, null);
                return;
            }
        }
        C21913e c21913e = this.f1628n;
        boolean z = false;
        if ((c21913e == null || !c21913e.f60837n || Build.VERSION.SDK_INT >= 28) && (c21913e == null || c21913e.f60838o <= 4)) {
            z = true;
        }
        setLayerType(z ? 2 : 1, null);
    }

    /* renamed from: g */
    public void m42591g() {
        if (!isShown()) {
            this.f1622h = true;
            return;
        }
        this.f1619e.m8892f();
        m42592f();
    }

    public C21913e getComposition() {
        return this.f1628n;
    }

    /* JADX WARN: Type inference failed for: r0v7, types: [long] */
    public long getDuration() {
        C21913e c21913e = this.f1628n;
        return c21913e != null ? c21913e.m8907a() : (char) 0;
    }

    public int getFrame() {
        return (int) this.f1619e.f60854c.f60786f;
    }

    public String getImageAssetsFolder() {
        return this.f1619e.f60859h;
    }

    public float getMaxFrame() {
        return this.f1619e.f60854c.m8933e();
    }

    public float getMinFrame() {
        return this.f1619e.f60854c.m8932f();
    }

    public C21946s getPerformanceTracker() {
        C21913e c21913e = this.f1619e.f60853b;
        return c21913e != null ? c21913e.f60824a : null;
    }

    public float getProgress() {
        return this.f1619e.m8894d();
    }

    public int getRepeatCount() {
        return this.f1619e.m8893e();
    }

    public int getRepeatMode() {
        return this.f1619e.f60854c.getRepeatMode();
    }

    public float getScale() {
        return this.f1619e.f60855d;
    }

    public float getSpeed() {
        return this.f1619e.f60854c.f60783c;
    }

    @Override // android.widget.ImageView, android.view.View, android.graphics.drawable.Drawable.Callback
    public void invalidateDrawable(Drawable drawable) {
        Drawable drawable2 = getDrawable();
        C21922k c21922k = this.f1619e;
        if (drawable2 == c21922k) {
            super.invalidateDrawable(c21922k);
        } else {
            super.invalidateDrawable(drawable);
        }
    }

    @Override // android.widget.ImageView, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        if (!this.f1624j || !this.f1623i) {
            return;
        }
        m42591g();
    }

    @Override // android.widget.ImageView, android.view.View
    public void onDetachedFromWindow() {
        if (this.f1619e.f60854c.f60791k) {
            m42594d();
            this.f1623i = true;
        }
        super.onDetachedFromWindow();
    }

    @Override // android.view.View
    public void onRestoreInstanceState(Parcelable parcelable) {
        if (!(parcelable instanceof SavedState)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        SavedState savedState = (SavedState) parcelable;
        super.onRestoreInstanceState(savedState.getSuperState());
        String str = savedState.f1629a;
        this.f1620f = str;
        if (!TextUtils.isEmpty(str)) {
            setAnimation(this.f1620f);
        }
        int i = savedState.f1630b;
        this.f1621g = i;
        if (i != 0) {
            setAnimation(i);
        }
        setProgress(savedState.f1631c);
        if (savedState.f1632d) {
            m42591g();
        }
        this.f1619e.f60859h = savedState.f1633e;
        setRepeatMode(savedState.f1634f);
        setRepeatCount(savedState.f1635g);
    }

    @Override // android.view.View
    public Parcelable onSaveInstanceState() {
        SavedState savedState = new SavedState(super.onSaveInstanceState());
        savedState.f1629a = this.f1620f;
        savedState.f1630b = this.f1621g;
        savedState.f1631c = this.f1619e.m8894d();
        C21922k c21922k = this.f1619e;
        Choreographer$FrameCallbackC21902b choreographer$FrameCallbackC21902b = c21922k.f60854c;
        savedState.f1632d = choreographer$FrameCallbackC21902b.f60791k;
        savedState.f1633e = c21922k.f60859h;
        savedState.f1634f = choreographer$FrameCallbackC21902b.getRepeatMode();
        savedState.f1635g = this.f1619e.m8893e();
        return savedState;
    }

    @Override // android.view.View
    public void onVisibilityChanged(View view, int i) {
        if (this.f1619e == null) {
            return;
        }
        if (isShown()) {
            if (!this.f1622h) {
                return;
            }
            if (isShown()) {
                this.f1619e.m8891g();
                m42592f();
            } else {
                this.f1622h = true;
            }
            this.f1622h = false;
            return;
        }
        C21922k c21922k = this.f1619e;
        if (!c21922k.f60854c.f60791k) {
            return;
        }
        this.f1622h = false;
        c21922k.f60857f.clear();
        c21922k.f60854c.m8929i();
        m42592f();
        this.f1622h = true;
    }

    public void setAnimation(int i) {
        this.f1621g = i;
        this.f1620f = null;
        Context context = getContext();
        Map<String, C21944r<C21913e>> map = C21914f.f60839a;
        setCompositionTask(C21914f.m8903a(C22128a.m8611i2("rawRes_", i), new CallableC21920i(context.getApplicationContext(), i)));
    }

    public void setAnimation(String str) {
        this.f1620f = str;
        this.f1621g = 0;
        Context context = getContext();
        Map<String, C21944r<C21913e>> map = C21914f.f60839a;
        setCompositionTask(C21914f.m8903a(str, new CallableC21919h(context.getApplicationContext(), str)));
    }

    @Deprecated
    public void setAnimationFromJson(String str) {
        setCompositionTask(C21914f.m8903a(null, new CallableC21921j(new JsonReader(new StringReader(str)), null)));
    }

    public void setAnimationFromUrl(String str) {
        Context context = getContext();
        Map<String, C21944r<C21913e>> map = C21914f.f60839a;
        setCompositionTask(C21914f.m8903a(C22128a.m8543z2("url_", str), new CallableC21918g(context, str)));
    }

    public void setComposition(C21913e c21913e) {
        boolean z;
        Set<String> set = C21906c.f60801a;
        this.f1619e.setCallback(this);
        this.f1628n = c21913e;
        C21922k c21922k = this.f1619e;
        boolean z2 = false;
        if (c21922k.f60853b == c21913e) {
            z = false;
        } else {
            c21922k.f60866o = false;
            c21922k.m8895c();
            c21922k.f60853b = c21913e;
            c21922k.m8896b();
            Choreographer$FrameCallbackC21902b choreographer$FrameCallbackC21902b = c21922k.f60854c;
            if (choreographer$FrameCallbackC21902b.f60790j == null) {
                z2 = true;
            }
            choreographer$FrameCallbackC21902b.f60790j = c21913e;
            if (z2) {
                choreographer$FrameCallbackC21902b.m8927k((int) Math.max(choreographer$FrameCallbackC21902b.f60788h, c21913e.f60834k), (int) Math.min(choreographer$FrameCallbackC21902b.f60789i, c21913e.f60835l));
            } else {
                choreographer$FrameCallbackC21902b.m8927k((int) c21913e.f60834k, (int) c21913e.f60835l);
            }
            float f = choreographer$FrameCallbackC21902b.f60786f;
            choreographer$FrameCallbackC21902b.f60786f = 0.0f;
            choreographer$FrameCallbackC21902b.m8928j((int) f);
            c21922k.m8881q(c21922k.f60854c.getAnimatedFraction());
            c21922k.f60855d = c21922k.f60855d;
            c21922k.m8880r();
            c21922k.m8880r();
            Iterator it = new ArrayList(c21922k.f60857f).iterator();
            while (it.hasNext()) {
                ((C21922k.AbstractC21937o) it.next()).mo8879a(c21913e);
                it.remove();
            }
            c21922k.f60857f.clear();
            c21913e.f60824a.f60936a = c21922k.f60865n;
            z = true;
        }
        m42592f();
        if (getDrawable() != this.f1619e || z) {
            setImageDrawable(null);
            setImageDrawable(this.f1619e);
            requestLayout();
            for (AbstractC21940n abstractC21940n : this.f1626l) {
                abstractC21940n.mo8878a(c21913e);
            }
        }
    }

    public void setFontAssetDelegate(C21886a c21886a) {
        C21968a c21968a = this.f1619e.f60861j;
    }

    public void setFrame(int i) {
        this.f1619e.m8890h(i);
    }

    public void setImageAssetDelegate(AbstractC21900b abstractC21900b) {
        C21922k c21922k = this.f1619e;
        c21922k.f60860i = abstractC21900b;
        C21969b c21969b = c21922k.f60858g;
        if (c21969b != null) {
            c21969b.f60996c = abstractC21900b;
        }
    }

    public void setImageAssetsFolder(String str) {
        this.f1619e.f60859h = str;
    }

    @Override // androidx.appcompat.widget.AppCompatImageView, android.widget.ImageView
    public void setImageBitmap(Bitmap bitmap) {
        m42593e();
        super.setImageBitmap(bitmap);
    }

    @Override // androidx.appcompat.widget.AppCompatImageView, android.widget.ImageView
    public void setImageDrawable(Drawable drawable) {
        m42593e();
        super.setImageDrawable(drawable);
    }

    @Override // androidx.appcompat.widget.AppCompatImageView, android.widget.ImageView
    public void setImageResource(int i) {
        m42593e();
        super.setImageResource(i);
    }

    public void setMaxFrame(int i) {
        this.f1619e.m8889i(i);
    }

    public void setMaxFrame(String str) {
        this.f1619e.m8888j(str);
    }

    public void setMaxProgress(float f) {
        this.f1619e.m8887k(f);
    }

    public void setMinAndMaxFrame(String str) {
        this.f1619e.m8885m(str);
    }

    public void setMinFrame(int i) {
        this.f1619e.m8884n(i);
    }

    public void setMinFrame(String str) {
        this.f1619e.m8883o(str);
    }

    public void setMinProgress(float f) {
        this.f1619e.m8882p(f);
    }

    public void setPerformanceTrackingEnabled(boolean z) {
        C21922k c21922k = this.f1619e;
        c21922k.f60865n = z;
        C21913e c21913e = c21922k.f60853b;
        if (c21913e != null) {
            c21913e.f60824a.f60936a = z;
        }
    }

    public void setProgress(float f) {
        this.f1619e.m8881q(f);
    }

    public void setRenderMode(EnumC21948t enumC21948t) {
        this.f1625k = enumC21948t;
        m42592f();
    }

    public void setRepeatCount(int i) {
        this.f1619e.f60854c.setRepeatCount(i);
    }

    public void setRepeatMode(int i) {
        this.f1619e.f60854c.setRepeatMode(i);
    }

    public void setScale(float f) {
        C21922k c21922k = this.f1619e;
        c21922k.f60855d = f;
        c21922k.m8880r();
        if (getDrawable() == this.f1619e) {
            setImageDrawable(null);
            setImageDrawable(this.f1619e);
        }
    }

    public void setSpeed(float f) {
        this.f1619e.f60854c.f60783c = f;
    }

    public void setTextDelegate(C21950v c21950v) {
        Objects.requireNonNull(this.f1619e);
    }
}
