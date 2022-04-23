package com.facebook;

import android.app.Fragment;
import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Typeface;
import android.util.AttributeSet;
import android.view.View;
import android.widget.Button;
import androidx.core.content.b;
import com.facebook.appevents.m;
import com.facebook.common.a;
import com.facebook.internal.s;
/* loaded from: classes3-dex2jar.jar:com/facebook/FacebookButtonBase.class */
public abstract class FacebookButtonBase extends Button {

    /* renamed from: a  reason: collision with root package name */
    private String f19356a;

    /* renamed from: b  reason: collision with root package name */
    private String f19357b;

    /* renamed from: c  reason: collision with root package name */
    private View.OnClickListener f19358c;

    /* renamed from: d  reason: collision with root package name */
    private View.OnClickListener f19359d;
    private boolean e;
    private int f;
    private int g;
    private s h;

    public FacebookButtonBase(Context context, AttributeSet attributeSet, int i, int i2, String str, String str2) {
        super(context, attributeSet, 0);
        int a2 = i2 == 0 ? a() : i2;
        a(context, attributeSet, i, a2 == 0 ? a.g.com_facebook_button : a2);
        this.f19356a = str;
        this.f19357b = str2;
        setClickable(true);
        setFocusable(true);
    }

    private int a(String str) {
        if (com.facebook.internal.b.b.a.a(this)) {
            return 0;
        }
        try {
            return (int) Math.ceil(getPaint().measureText(str));
        } catch (Throwable th) {
            com.facebook.internal.b.b.a.a(th, this);
            return 0;
        }
    }

    static /* synthetic */ View.OnClickListener a(FacebookButtonBase facebookButtonBase) {
        if (com.facebook.internal.b.b.a.a(FacebookButtonBase.class)) {
            return null;
        }
        try {
            return facebookButtonBase.f19359d;
        } catch (Throwable th) {
            com.facebook.internal.b.b.a.a(th, FacebookButtonBase.class);
            return null;
        }
    }

    static /* synthetic */ void a(FacebookButtonBase facebookButtonBase, Context context) {
        if (!com.facebook.internal.b.b.a.a(FacebookButtonBase.class)) {
            try {
                if (!com.facebook.internal.b.b.a.a(facebookButtonBase)) {
                    new m(context).a(facebookButtonBase.f19357b);
                }
            } catch (Throwable th) {
                com.facebook.internal.b.b.a.a(th, FacebookButtonBase.class);
            }
        }
    }

    static /* synthetic */ View.OnClickListener b(FacebookButtonBase facebookButtonBase) {
        if (com.facebook.internal.b.b.a.a(FacebookButtonBase.class)) {
            return null;
        }
        try {
            return facebookButtonBase.f19358c;
        } catch (Throwable th) {
            com.facebook.internal.b.b.a.a(th, FacebookButtonBase.class);
            return null;
        }
    }

    protected int a() {
        if (com.facebook.internal.b.b.a.a(this)) {
        }
        return 0;
    }

    public void a(Context context, AttributeSet attributeSet, int i, int i2) {
        if (!com.facebook.internal.b.b.a.a(this)) {
            try {
                if (!com.facebook.internal.b.b.a.a(this) && !isInEditMode()) {
                    TypedArray obtainStyledAttributes = context.getTheme().obtainStyledAttributes(attributeSet, new int[]{16842964}, i, i2);
                    if (obtainStyledAttributes.hasValue(0)) {
                        int resourceId = obtainStyledAttributes.getResourceId(0, 0);
                        if (resourceId != 0) {
                            setBackgroundResource(resourceId);
                        } else {
                            setBackgroundColor(obtainStyledAttributes.getColor(0, 0));
                        }
                    } else {
                        setBackgroundColor(b.c(context, a.C0393a.com_facebook_blue));
                    }
                    obtainStyledAttributes.recycle();
                }
                if (!com.facebook.internal.b.b.a.a(this)) {
                    TypedArray obtainStyledAttributes2 = context.getTheme().obtainStyledAttributes(attributeSet, new int[]{16843119, 16843117, 16843120, 16843118, 16843121}, i, i2);
                    setCompoundDrawablesWithIntrinsicBounds(obtainStyledAttributes2.getResourceId(0, 0), obtainStyledAttributes2.getResourceId(1, 0), obtainStyledAttributes2.getResourceId(2, 0), obtainStyledAttributes2.getResourceId(3, 0));
                    setCompoundDrawablePadding(obtainStyledAttributes2.getDimensionPixelSize(4, 0));
                    obtainStyledAttributes2.recycle();
                }
                if (!com.facebook.internal.b.b.a.a(this)) {
                    TypedArray obtainStyledAttributes3 = context.getTheme().obtainStyledAttributes(attributeSet, new int[]{16842966, 16842967, 16842968, 16842969}, i, i2);
                    setPadding(obtainStyledAttributes3.getDimensionPixelSize(0, 0), obtainStyledAttributes3.getDimensionPixelSize(1, 0), obtainStyledAttributes3.getDimensionPixelSize(2, 0), obtainStyledAttributes3.getDimensionPixelSize(3, 0));
                    obtainStyledAttributes3.recycle();
                }
                if (!com.facebook.internal.b.b.a.a(this)) {
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
                if (!com.facebook.internal.b.b.a.a(this)) {
                    super.setOnClickListener(new View.OnClickListener() { // from class: com.facebook.FacebookButtonBase.1
                        @Override // android.view.View.OnClickListener
                        public final void onClick(View view) {
                            if (!com.facebook.internal.b.b.a.a(this)) {
                                try {
                                    FacebookButtonBase facebookButtonBase = FacebookButtonBase.this;
                                    FacebookButtonBase.a(facebookButtonBase, facebookButtonBase.getContext());
                                    if (FacebookButtonBase.a(FacebookButtonBase.this) != null) {
                                        FacebookButtonBase.a(FacebookButtonBase.this).onClick(view);
                                    } else if (FacebookButtonBase.b(FacebookButtonBase.this) != null) {
                                        FacebookButtonBase.b(FacebookButtonBase.this).onClick(view);
                                    }
                                } catch (Throwable th) {
                                    com.facebook.internal.b.b.a.a(th, this);
                                }
                            }
                        }
                    });
                }
            } catch (Throwable th) {
                com.facebook.internal.b.b.a.a(th, this);
            }
        }
    }

    @Override // android.widget.TextView
    public int getCompoundPaddingLeft() {
        if (com.facebook.internal.b.b.a.a(this)) {
            return 0;
        }
        try {
            return this.e ? this.f : super.getCompoundPaddingLeft();
        } catch (Throwable th) {
            com.facebook.internal.b.b.a.a(th, this);
            return 0;
        }
    }

    @Override // android.widget.TextView
    public int getCompoundPaddingRight() {
        if (com.facebook.internal.b.b.a.a(this)) {
            return 0;
        }
        try {
            return this.e ? this.g : super.getCompoundPaddingRight();
        } catch (Throwable th) {
            com.facebook.internal.b.b.a.a(th, this);
            return 0;
        }
    }

    @Override // android.widget.TextView, android.view.View
    protected void onAttachedToWindow() {
        if (!com.facebook.internal.b.b.a.a(this)) {
            try {
                super.onAttachedToWindow();
                if (!isInEditMode()) {
                    Context context = getContext();
                    if (!com.facebook.internal.b.b.a.a(this)) {
                        new m(context).a(this.f19356a);
                    }
                }
            } catch (Throwable th) {
                com.facebook.internal.b.b.a.a(th, this);
            }
        }
    }

    @Override // android.widget.TextView, android.view.View
    protected void onDraw(Canvas canvas) {
        if (!com.facebook.internal.b.b.a.a(this)) {
            try {
                if ((getGravity() & 1) != 0) {
                    int compoundPaddingLeft = getCompoundPaddingLeft();
                    int compoundPaddingRight = getCompoundPaddingRight();
                    int min = Math.min((((getWidth() - (getCompoundDrawablePadding() + compoundPaddingLeft)) - compoundPaddingRight) - a(getText().toString())) / 2, (compoundPaddingLeft - getPaddingLeft()) / 2);
                    this.f = compoundPaddingLeft - min;
                    this.g = compoundPaddingRight + min;
                    this.e = true;
                }
                super.onDraw(canvas);
                this.e = false;
            } catch (Throwable th) {
                com.facebook.internal.b.b.a.a(th, this);
            }
        }
    }

    public void setFragment(Fragment fragment) {
        if (!com.facebook.internal.b.b.a.a(this)) {
            try {
                this.h = new s(fragment);
            } catch (Throwable th) {
                com.facebook.internal.b.b.a.a(th, this);
            }
        }
    }

    public void setFragment(androidx.fragment.app.Fragment fragment) {
        if (!com.facebook.internal.b.b.a.a(this)) {
            try {
                this.h = new s(fragment);
            } catch (Throwable th) {
                com.facebook.internal.b.b.a.a(th, this);
            }
        }
    }

    @Override // android.view.View
    public void setOnClickListener(View.OnClickListener onClickListener) {
        if (!com.facebook.internal.b.b.a.a(this)) {
            try {
                this.f19358c = onClickListener;
            } catch (Throwable th) {
                com.facebook.internal.b.b.a.a(th, this);
            }
        }
    }
}
