package com.airbnb.lottie;

import android.animation.Animator;
import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Bitmap;
import android.graphics.ColorFilter;
import android.graphics.drawable.Drawable;
import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.View;
import androidx.annotation.FloatRange;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import androidx.appcompat.widget.AppCompatImageView;
import java.lang.ref.WeakReference;
import java.util.HashMap;
import java.util.Map;
import p081h.p082a.p083a.AbstractC5337a;
import p081h.p082a.p083a.AbstractC5352h;
import p081h.p082a.p083a.C5341e;
import p081h.p082a.p083a.C5344f;
import p081h.p082a.p083a.C5356j;
import p081h.p082a.p083a.p092o.C5530f;
/* loaded from: classes-dex2jar.jar:com/airbnb/lottie/LottieAnimationView.class */
public class LottieAnimationView extends AppCompatImageView {

    /* renamed from: h */
    public static final Map<String, C5341e> f779h = new HashMap();

    /* renamed from: i */
    public static final Map<String, WeakReference<C5341e>> f780i = new HashMap();

    /* renamed from: b */
    public EnumC1463c f782b;

    /* renamed from: c */
    public String f783c;
    @Nullable

    /* renamed from: g */
    public AbstractC5337a f787g;

    /* renamed from: a */
    public final C5344f f781a = new C5344f();

    /* renamed from: d */
    public boolean f784d = false;

    /* renamed from: e */
    public boolean f785e = false;

    /* renamed from: f */
    public boolean f786f = false;

    /* loaded from: classes-dex2jar.jar:com/airbnb/lottie/LottieAnimationView$SavedState.class */
    public static class SavedState extends View.BaseSavedState {
        public static final Parcelable.Creator<SavedState> CREATOR = new C1460a();

        /* renamed from: a */
        public String f788a;

        /* renamed from: b */
        public float f789b;

        /* renamed from: c */
        public boolean f790c;

        /* renamed from: d */
        public boolean f791d;

        /* renamed from: e */
        public String f792e;

        /* renamed from: com.airbnb.lottie.LottieAnimationView$SavedState$a */
        /* loaded from: classes-dex2jar.jar:com/airbnb/lottie/LottieAnimationView$SavedState$a.class */
        public static final class C1460a implements Parcelable.Creator<SavedState> {
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public SavedState createFromParcel(Parcel parcel) {
                return new SavedState(parcel, null);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public SavedState[] newArray(int i) {
                return new SavedState[i];
            }
        }

        public SavedState(Parcel parcel) {
            super(parcel);
            this.f788a = parcel.readString();
            this.f789b = parcel.readFloat();
            boolean z = false;
            this.f790c = parcel.readInt() == 1;
            this.f791d = parcel.readInt() == 1 ? true : z;
            this.f792e = parcel.readString();
        }

        public /* synthetic */ SavedState(Parcel parcel, C1461a aVar) {
            this(parcel);
        }

        public SavedState(Parcelable parcelable) {
            super(parcelable);
        }

        @Override // android.view.View.BaseSavedState, android.view.AbsSavedState, android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            super.writeToParcel(parcel, i);
            parcel.writeString(this.f788a);
            parcel.writeFloat(this.f789b);
            parcel.writeInt(this.f790c ? 1 : 0);
            parcel.writeInt(this.f791d ? 1 : 0);
            parcel.writeString(this.f792e);
        }
    }

    /* renamed from: com.airbnb.lottie.LottieAnimationView$a */
    /* loaded from: classes-dex2jar.jar:com/airbnb/lottie/LottieAnimationView$a.class */
    public class C1461a implements AbstractC5352h {
        public C1461a() {
        }

        @Override // p081h.p082a.p083a.AbstractC5352h
        /* renamed from: a */
        public void mo25575a(@Nullable C5341e eVar) {
            if (eVar != null) {
                LottieAnimationView.this.m37036a(eVar);
            }
            LottieAnimationView.this.f787g = null;
        }
    }

    /* renamed from: com.airbnb.lottie.LottieAnimationView$b */
    /* loaded from: classes-dex2jar.jar:com/airbnb/lottie/LottieAnimationView$b.class */
    public class C1462b implements AbstractC5352h {

        /* renamed from: a */
        public final /* synthetic */ EnumC1463c f794a;

        /* renamed from: b */
        public final /* synthetic */ String f795b;

        public C1462b(EnumC1463c cVar, String str) {
            this.f794a = cVar;
            this.f795b = str;
        }

        @Override // p081h.p082a.p083a.AbstractC5352h
        /* renamed from: a */
        public void mo25575a(C5341e eVar) {
            EnumC1463c cVar = this.f794a;
            if (cVar == EnumC1463c.Strong) {
                LottieAnimationView.f779h.put(this.f795b, eVar);
            } else if (cVar == EnumC1463c.Weak) {
                LottieAnimationView.f780i.put(this.f795b, new WeakReference(eVar));
            }
            LottieAnimationView.this.m37036a(eVar);
        }
    }

    /* renamed from: com.airbnb.lottie.LottieAnimationView$c */
    /* loaded from: classes-dex2jar.jar:com/airbnb/lottie/LottieAnimationView$c.class */
    public enum EnumC1463c {
        None,
        Weak,
        Strong
    }

    public LottieAnimationView(Context context) {
        super(context);
        new C1461a();
        m37038a((AttributeSet) null);
    }

    public LottieAnimationView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        new C1461a();
        m37038a(attributeSet);
    }

    public LottieAnimationView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        new C1461a();
        m37038a(attributeSet);
    }

    /* renamed from: a */
    public void m37042a() {
        this.f781a.m25599c();
        m37028c();
    }

    /* renamed from: a */
    public void m37041a(@FloatRange(from = 0.0d, m37520to = 1.0d) float f) {
        this.f781a.m25616a(f);
    }

    /* renamed from: a */
    public void m37040a(Animator.AnimatorListener animatorListener) {
        this.f781a.m25615a(animatorListener);
    }

    /* renamed from: a */
    public void m37039a(@Nullable ColorFilter colorFilter) {
        this.f781a.m25613a(colorFilter);
    }

    /* renamed from: a */
    public final void m37038a(@Nullable AttributeSet attributeSet) {
        TypedArray obtainStyledAttributes = getContext().obtainStyledAttributes(attributeSet, R$styleable.LottieAnimationView);
        this.f782b = EnumC1463c.values()[obtainStyledAttributes.getInt(R$styleable.LottieAnimationView_lottie_cacheStrategy, EnumC1463c.Weak.ordinal())];
        String string = obtainStyledAttributes.getString(R$styleable.LottieAnimationView_lottie_fileName);
        if (!isInEditMode() && string != null) {
            m37035a(string);
        }
        if (obtainStyledAttributes.getBoolean(R$styleable.LottieAnimationView_lottie_autoPlay, false)) {
            this.f781a.m25584p();
            this.f785e = true;
        }
        this.f781a.m25600b(obtainStyledAttributes.getBoolean(R$styleable.LottieAnimationView_lottie_loop, false));
        m37030b(obtainStyledAttributes.getString(R$styleable.LottieAnimationView_lottie_imageAssetsFolder));
        m37041a(obtainStyledAttributes.getFloat(R$styleable.LottieAnimationView_lottie_progress, 0.0f));
        m37033a(obtainStyledAttributes.getBoolean(R$styleable.LottieAnimationView_lottie_enableMergePathsForKitKatAndAbove, false));
        if (obtainStyledAttributes.hasValue(R$styleable.LottieAnimationView_lottie_colorFilter)) {
            m37039a(new C5356j(obtainStyledAttributes.getColor(R$styleable.LottieAnimationView_lottie_colorFilter, 0)));
        }
        if (obtainStyledAttributes.hasValue(R$styleable.LottieAnimationView_lottie_scale)) {
            this.f781a.m25604b(obtainStyledAttributes.getFloat(R$styleable.LottieAnimationView_lottie_scale, 1.0f));
        }
        obtainStyledAttributes.recycle();
        if (C5530f.m25253a(getContext()) == 0.0f) {
            this.f781a.m25582r();
        }
        m37028c();
    }

    /* renamed from: a */
    public void m37036a(@NonNull C5341e eVar) {
        this.f781a.setCallback(this);
        boolean a = this.f781a.m25612a(eVar);
        m37028c();
        if (a) {
            setImageDrawable(null);
            setImageDrawable(this.f781a);
            requestLayout();
        }
    }

    /* renamed from: a */
    public void m37035a(String str) {
        m37034a(str, this.f782b);
    }

    /* renamed from: a */
    public void m37034a(String str, EnumC1463c cVar) {
        this.f783c = str;
        if (f780i.containsKey(str)) {
            C5341e eVar = f780i.get(str).get();
            if (eVar != null) {
                m37036a(eVar);
                return;
            }
        } else if (f779h.containsKey(str)) {
            m37036a(f779h.get(str));
            return;
        }
        this.f783c = str;
        this.f781a.m25599c();
        m37032b();
        this.f787g = C5341e.C5343b.m25626a(getContext(), str, new C1462b(cVar, str));
    }

    /* renamed from: a */
    public void m37033a(boolean z) {
        this.f781a.m25606a(z);
    }

    /* renamed from: b */
    public final void m37032b() {
        AbstractC5337a aVar = this.f787g;
        if (aVar != null) {
            aVar.cancel();
            this.f787g = null;
        }
    }

    /* renamed from: b */
    public void m37031b(Animator.AnimatorListener animatorListener) {
        this.f781a.m25603b(animatorListener);
    }

    /* renamed from: b */
    public void m37030b(String str) {
        this.f781a.m25601b(str);
    }

    /* renamed from: b */
    public void m37029b(boolean z) {
        this.f781a.m25600b(z);
    }

    /* renamed from: c */
    public final void m37028c() {
        int i = 1;
        if (this.f786f && this.f781a.m25586n()) {
            i = 2;
        }
        setLayerType(i, null);
    }

    /* renamed from: d */
    public boolean m37027d() {
        return this.f781a.m25586n();
    }

    /* renamed from: e */
    public void m37026e() {
        this.f781a.m25584p();
        m37028c();
    }

    @VisibleForTesting
    /* renamed from: f */
    public void m37025f() {
        C5344f fVar = this.f781a;
        if (fVar != null) {
            fVar.m25583q();
        }
    }

    @Override // android.widget.ImageView, android.view.View, android.graphics.drawable.Drawable.Callback
    public void invalidateDrawable(@NonNull Drawable drawable) {
        Drawable drawable2 = getDrawable();
        C5344f fVar = this.f781a;
        if (drawable2 == fVar) {
            super.invalidateDrawable(fVar);
        } else {
            super.invalidateDrawable(drawable);
        }
    }

    @Override // android.widget.ImageView, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        if (this.f785e && this.f784d) {
            m37026e();
        }
    }

    @Override // android.widget.ImageView, android.view.View
    public void onDetachedFromWindow() {
        if (m37027d()) {
            m37042a();
            this.f784d = true;
        }
        m37025f();
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
        this.f783c = savedState.f788a;
        if (!TextUtils.isEmpty(this.f783c)) {
            m37035a(this.f783c);
        }
        m37041a(savedState.f789b);
        m37029b(savedState.f791d);
        if (savedState.f790c) {
            m37026e();
        }
        this.f781a.m25601b(savedState.f792e);
    }

    @Override // android.view.View
    public Parcelable onSaveInstanceState() {
        SavedState savedState = new SavedState(super.onSaveInstanceState());
        savedState.f788a = this.f783c;
        savedState.f789b = this.f781a.m25589k();
        savedState.f790c = this.f781a.m25586n();
        savedState.f791d = this.f781a.m25585o();
        savedState.f792e = this.f781a.m25590j();
        return savedState;
    }

    @Override // androidx.appcompat.widget.AppCompatImageView, android.widget.ImageView
    public void setImageBitmap(Bitmap bitmap) {
        m37025f();
        m37032b();
        super.setImageBitmap(bitmap);
    }

    @Override // androidx.appcompat.widget.AppCompatImageView, android.widget.ImageView
    public void setImageDrawable(Drawable drawable) {
        if (drawable != this.f781a) {
            m37025f();
        }
        m37032b();
        super.setImageDrawable(drawable);
    }

    @Override // androidx.appcompat.widget.AppCompatImageView, android.widget.ImageView
    public void setImageResource(int i) {
        m37025f();
        m37032b();
        super.setImageResource(i);
    }
}
