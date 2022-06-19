package com.google.android.material.badge;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.material.C2080R;
import p1727n3.p1789g0.C26232y;
/* loaded from: classes3-dex2jar.jar:com/google/android/material/badge/BadgeDrawable$SavedState.class */
public final class BadgeDrawable$SavedState implements Parcelable {
    public static final Parcelable.Creator<BadgeDrawable$SavedState> CREATOR = new C2086a();

    /* renamed from: a */
    public int f6627a;

    /* renamed from: b */
    public int f6628b;

    /* renamed from: c */
    public int f6629c;

    /* renamed from: d */
    public int f6630d;

    /* renamed from: e */
    public int f6631e;

    /* renamed from: f */
    public CharSequence f6632f;

    /* renamed from: g */
    public int f6633g;

    /* renamed from: h */
    public int f6634h;

    /* renamed from: i */
    public int f6635i;

    /* renamed from: j */
    public boolean f6636j;

    /* renamed from: k */
    public int f6637k;

    /* renamed from: l */
    public int f6638l;

    /* renamed from: m */
    public int f6639m;

    /* renamed from: n */
    public int f6640n;

    /* renamed from: com.google.android.material.badge.BadgeDrawable$SavedState$a */
    /* loaded from: classes3-dex2jar.jar:com/google/android/material/badge/BadgeDrawable$SavedState$a.class */
    public static final class C2086a implements Parcelable.Creator<BadgeDrawable$SavedState> {
        @Override // android.os.Parcelable.Creator
        public BadgeDrawable$SavedState createFromParcel(Parcel parcel) {
            return new BadgeDrawable$SavedState(parcel);
        }

        @Override // android.os.Parcelable.Creator
        public BadgeDrawable$SavedState[] newArray(int i) {
            return new BadgeDrawable$SavedState[i];
        }
    }

    public BadgeDrawable$SavedState(Context context) {
        this.f6629c = 255;
        this.f6630d = -1;
        int i = C2080R.style.TextAppearance_MaterialComponents_Badge;
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(i, C2080R.styleable.TextAppearance);
        obtainStyledAttributes.getDimension(C2080R.styleable.TextAppearance_android_textSize, 0.0f);
        ColorStateList m2368d0 = C26232y.m2368d0(context, obtainStyledAttributes, C2080R.styleable.TextAppearance_android_textColor);
        C26232y.m2368d0(context, obtainStyledAttributes, C2080R.styleable.TextAppearance_android_textColorHint);
        C26232y.m2368d0(context, obtainStyledAttributes, C2080R.styleable.TextAppearance_android_textColorLink);
        obtainStyledAttributes.getInt(C2080R.styleable.TextAppearance_android_textStyle, 0);
        obtainStyledAttributes.getInt(C2080R.styleable.TextAppearance_android_typeface, 1);
        int i2 = C2080R.styleable.TextAppearance_fontFamily;
        i2 = !obtainStyledAttributes.hasValue(i2) ? C2080R.styleable.TextAppearance_android_fontFamily : i2;
        obtainStyledAttributes.getResourceId(i2, 0);
        obtainStyledAttributes.getString(i2);
        obtainStyledAttributes.getBoolean(C2080R.styleable.TextAppearance_textAllCaps, false);
        C26232y.m2368d0(context, obtainStyledAttributes, C2080R.styleable.TextAppearance_android_shadowColor);
        obtainStyledAttributes.getFloat(C2080R.styleable.TextAppearance_android_shadowDx, 0.0f);
        obtainStyledAttributes.getFloat(C2080R.styleable.TextAppearance_android_shadowDy, 0.0f);
        obtainStyledAttributes.getFloat(C2080R.styleable.TextAppearance_android_shadowRadius, 0.0f);
        obtainStyledAttributes.recycle();
        TypedArray obtainStyledAttributes2 = context.obtainStyledAttributes(i, C2080R.styleable.MaterialTextAppearance);
        int i3 = C2080R.styleable.MaterialTextAppearance_android_letterSpacing;
        obtainStyledAttributes2.hasValue(i3);
        obtainStyledAttributes2.getFloat(i3, 0.0f);
        obtainStyledAttributes2.recycle();
        this.f6628b = m2368d0.getDefaultColor();
        this.f6632f = context.getString(C2080R.string.mtrl_badge_numberless_content_description);
        this.f6633g = C2080R.plurals.mtrl_badge_content_description;
        this.f6634h = C2080R.string.mtrl_exceed_max_badge_number_content_description;
        this.f6636j = true;
    }

    public BadgeDrawable$SavedState(Parcel parcel) {
        this.f6629c = 255;
        this.f6630d = -1;
        this.f6627a = parcel.readInt();
        this.f6628b = parcel.readInt();
        this.f6629c = parcel.readInt();
        this.f6630d = parcel.readInt();
        this.f6631e = parcel.readInt();
        this.f6632f = parcel.readString();
        this.f6633g = parcel.readInt();
        this.f6635i = parcel.readInt();
        this.f6637k = parcel.readInt();
        this.f6638l = parcel.readInt();
        this.f6639m = parcel.readInt();
        this.f6640n = parcel.readInt();
        this.f6636j = parcel.readInt() != 0;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeInt(this.f6627a);
        parcel.writeInt(this.f6628b);
        parcel.writeInt(this.f6629c);
        parcel.writeInt(this.f6630d);
        parcel.writeInt(this.f6631e);
        parcel.writeString(this.f6632f.toString());
        parcel.writeInt(this.f6633g);
        parcel.writeInt(this.f6635i);
        parcel.writeInt(this.f6637k);
        parcel.writeInt(this.f6638l);
        parcel.writeInt(this.f6639m);
        parcel.writeInt(this.f6640n);
        parcel.writeInt(this.f6636j ? 1 : 0);
    }
}
