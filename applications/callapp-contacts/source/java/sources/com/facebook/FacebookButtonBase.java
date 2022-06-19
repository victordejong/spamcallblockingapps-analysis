package com.facebook;

import android.app.Fragment;
import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Typeface;
import android.util.AttributeSet;
import android.view.View;
import android.widget.Button;
import androidx.core.content.C0790b;
import com.facebook.appevents.C10097m;
import com.facebook.common.C10165a;
import com.facebook.internal.C10326s;
import com.facebook.internal.p299b.p301b.C10249a;
/* loaded from: classes3-dex2jar.jar:com/facebook/FacebookButtonBase.class */
public abstract class FacebookButtonBase extends Button {

    /* renamed from: a */
    private String f33053a;

    /* renamed from: b */
    private String f33054b;

    /* renamed from: c */
    private View.OnClickListener f33055c;

    /* renamed from: d */
    private View.OnClickListener f33056d;

    /* renamed from: e */
    private boolean f33057e;

    /* renamed from: f */
    private int f33058f;

    /* renamed from: g */
    private int f33059g;

    /* renamed from: h */
    private C10326s f33060h;

    public FacebookButtonBase(Context context, AttributeSet attributeSet, int i, int i2, String str, String str2) {
        super(context, attributeSet, 0);
        int mo22786a = i2 == 0 ? mo22786a() : i2;
        mo22785a(context, attributeSet, i, mo22786a == 0 ? C10165a.C10172g.com_facebook_button : mo22786a);
        this.f33053a = str;
        this.f33054b = str2;
        setClickable(true);
        setFocusable(true);
    }

    /* renamed from: a */
    private int m23806a(String str) {
        if (C10249a.m23108a(this)) {
            return 0;
        }
        try {
            return (int) Math.ceil(getPaint().measureText(str));
        } catch (Throwable th) {
            C10249a.m23106a(th, this);
            return 0;
        }
    }

    /* renamed from: a */
    static /* synthetic */ View.OnClickListener m23808a(FacebookButtonBase facebookButtonBase) {
        if (C10249a.m23108a(FacebookButtonBase.class)) {
            return null;
        }
        try {
            return facebookButtonBase.f33056d;
        } catch (Throwable th) {
            C10249a.m23106a(th, FacebookButtonBase.class);
            return null;
        }
    }

    /* renamed from: a */
    static /* synthetic */ void m23807a(FacebookButtonBase facebookButtonBase, Context context) {
        if (C10249a.m23108a(FacebookButtonBase.class)) {
            return;
        }
        try {
            if (C10249a.m23108a(facebookButtonBase)) {
                return;
            }
            new C10097m(context).m23416a(facebookButtonBase.f33054b);
        } catch (Throwable th) {
            C10249a.m23106a(th, FacebookButtonBase.class);
        }
    }

    /* renamed from: b */
    static /* synthetic */ View.OnClickListener m23805b(FacebookButtonBase facebookButtonBase) {
        if (C10249a.m23108a(FacebookButtonBase.class)) {
            return null;
        }
        try {
            return facebookButtonBase.f33055c;
        } catch (Throwable th) {
            C10249a.m23106a(th, FacebookButtonBase.class);
            return null;
        }
    }

    /* renamed from: a */
    protected int mo22786a() {
        if (C10249a.m23108a(this)) {
        }
        return 0;
    }

    /* renamed from: a */
    public void mo22785a(Context context, AttributeSet attributeSet, int i, int i2) {
        if (C10249a.m23108a(this)) {
            return;
        }
        try {
            if (!C10249a.m23108a(this) && !isInEditMode()) {
                TypedArray obtainStyledAttributes = context.getTheme().obtainStyledAttributes(attributeSet, new int[]{16842964}, i, i2);
                if (obtainStyledAttributes.hasValue(0)) {
                    int resourceId = obtainStyledAttributes.getResourceId(0, 0);
                    if (resourceId != 0) {
                        setBackgroundResource(resourceId);
                    } else {
                        setBackgroundColor(obtainStyledAttributes.getColor(0, 0));
                    }
                } else {
                    setBackgroundColor(C0790b.m44492c(context, C10165a.C10166a.com_facebook_blue));
                }
                obtainStyledAttributes.recycle();
            }
            if (!C10249a.m23108a(this)) {
                TypedArray obtainStyledAttributes2 = context.getTheme().obtainStyledAttributes(attributeSet, new int[]{16843119, 16843117, 16843120, 16843118, 16843121}, i, i2);
                setCompoundDrawablesWithIntrinsicBounds(obtainStyledAttributes2.getResourceId(0, 0), obtainStyledAttributes2.getResourceId(1, 0), obtainStyledAttributes2.getResourceId(2, 0), obtainStyledAttributes2.getResourceId(3, 0));
                setCompoundDrawablePadding(obtainStyledAttributes2.getDimensionPixelSize(4, 0));
                obtainStyledAttributes2.recycle();
            }
            if (!C10249a.m23108a(this)) {
                TypedArray obtainStyledAttributes3 = context.getTheme().obtainStyledAttributes(attributeSet, new int[]{16842966, 16842967, 16842968, 16842969}, i, i2);
                setPadding(obtainStyledAttributes3.getDimensionPixelSize(0, 0), obtainStyledAttributes3.getDimensionPixelSize(1, 0), obtainStyledAttributes3.getDimensionPixelSize(2, 0), obtainStyledAttributes3.getDimensionPixelSize(3, 0));
                obtainStyledAttributes3.recycle();
            }
            if (!C10249a.m23108a(this)) {
                TypedArray obtainStyledAttributes4 = context.getTheme().obtainStyledAttributes(attributeSet, new int[]{16842904}, i, i2);
                setTextColor(obtainStyledAttributes4.getColorStateList(0));
                obtainStyledAttributes4.recycle();
                TypedArray obtainStyledAttributes5 = context.getTheme().obtainStyledAttributes(attributeSet, new int[]{16842927}, i, i2);
                setGravity(obtainStyledAttributes5.getInt(0, 17));
                obtainStyledAttributes5.recycle();
                TypedArray obtainStyledAttributes6 = context.getTheme().obtainStyledAttributes(attributeSet, new int[]{16842901, 16842903, 16843087}, i, i2);
                setTextSize(0, obtainStyledAttributes6.getDimensionPixelSize(0, 0));
                setTypeface(Typeface.defaultFromStyle(obtainStyledAttributes6.getInt(1, 1)));
                setText(obtainStyledAttributes6.getString(2));
                obtainStyledAttributes6.recycle();
            }
            if (C10249a.m23108a(this)) {
                return;
            }
            super.setOnClickListener(new View.OnClickListener() { // from class: com.facebook.FacebookButtonBase.1
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    if (C10249a.m23108a(this)) {
                        return;
                    }
                    try {
                        FacebookButtonBase facebookButtonBase = FacebookButtonBase.this;
                        FacebookButtonBase.m23807a(facebookButtonBase, facebookButtonBase.getContext());
                        if (FacebookButtonBase.m23808a(FacebookButtonBase.this) != null) {
                            FacebookButtonBase.m23808a(FacebookButtonBase.this).onClick(view);
                        } else if (FacebookButtonBase.m23805b(FacebookButtonBase.this) == null) {
                        } else {
                            FacebookButtonBase.m23805b(FacebookButtonBase.this).onClick(view);
                        }
                    } catch (Throwable th) {
                        C10249a.m23106a(th, this);
                    }
                }
            });
        } catch (Throwable th) {
            C10249a.m23106a(th, this);
        }
    }

    @Override // android.widget.TextView
    public int getCompoundPaddingLeft() {
        if (C10249a.m23108a(this)) {
            return 0;
        }
        try {
            return this.f33057e ? this.f33058f : super.getCompoundPaddingLeft();
        } catch (Throwable th) {
            C10249a.m23106a(th, this);
            return 0;
        }
    }

    @Override // android.widget.TextView
    public int getCompoundPaddingRight() {
        if (C10249a.m23108a(this)) {
            return 0;
        }
        try {
            return this.f33057e ? this.f33059g : super.getCompoundPaddingRight();
        } catch (Throwable th) {
            C10249a.m23106a(th, this);
            return 0;
        }
    }

    @Override // android.widget.TextView, android.view.View
    protected void onAttachedToWindow() {
        if (C10249a.m23108a(this)) {
            return;
        }
        try {
            super.onAttachedToWindow();
            if (isInEditMode()) {
                return;
            }
            Context context = getContext();
            if (C10249a.m23108a(this)) {
                return;
            }
            new C10097m(context).m23416a(this.f33053a);
        } catch (Throwable th) {
            C10249a.m23106a(th, this);
        }
    }

    @Override // android.widget.TextView, android.view.View
    protected void onDraw(Canvas canvas) {
        if (C10249a.m23108a(this)) {
            return;
        }
        try {
            if ((getGravity() & 1) != 0) {
                int compoundPaddingLeft = getCompoundPaddingLeft();
                int compoundPaddingRight = getCompoundPaddingRight();
                int min = Math.min((((getWidth() - (getCompoundDrawablePadding() + compoundPaddingLeft)) - compoundPaddingRight) - m23806a(getText().toString())) / 2, (compoundPaddingLeft - getPaddingLeft()) / 2);
                this.f33058f = compoundPaddingLeft - min;
                this.f33059g = compoundPaddingRight + min;
                this.f33057e = true;
            }
            super.onDraw(canvas);
            this.f33057e = false;
        } catch (Throwable th) {
            C10249a.m23106a(th, this);
        }
    }

    public void setFragment(Fragment fragment) {
        if (C10249a.m23108a(this)) {
            return;
        }
        try {
            this.f33060h = new C10326s(fragment);
        } catch (Throwable th) {
            C10249a.m23106a(th, this);
        }
    }

    public void setFragment(androidx.fragment.app.Fragment fragment) {
        if (C10249a.m23108a(this)) {
            return;
        }
        try {
            this.f33060h = new C10326s(fragment);
        } catch (Throwable th) {
            C10249a.m23106a(th, this);
        }
    }

    @Override // android.view.View
    public void setOnClickListener(View.OnClickListener onClickListener) {
        if (C10249a.m23108a(this)) {
            return;
        }
        try {
            this.f33055c = onClickListener;
        } catch (Throwable th) {
            C10249a.m23106a(th, this);
        }
    }
}
