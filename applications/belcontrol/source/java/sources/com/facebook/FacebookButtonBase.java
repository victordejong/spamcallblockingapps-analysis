package com.facebook;

import android.annotation.SuppressLint;
import android.app.Activity;
import android.content.Context;
import android.content.ContextWrapper;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Typeface;
import android.util.AttributeSet;
import android.view.View;
import android.widget.Button;
import androidx.fragment.app.Fragment;
/* loaded from: classes-dex2jar.jar:com/facebook/FacebookButtonBase.class */
public abstract class FacebookButtonBase extends Button {

    /* renamed from: a */
    public String f2453a;

    /* renamed from: b */
    public String f2454b;

    /* renamed from: c */
    public View.OnClickListener f2455c;

    /* renamed from: d */
    public View.OnClickListener f2456d;

    /* renamed from: f */
    public boolean f2457f;

    /* renamed from: g */
    public int f2458g;

    /* renamed from: h */
    public int f2459h;

    /* renamed from: j */
    public pm0 f2460j;

    /* renamed from: com.facebook.FacebookButtonBase$a */
    /* loaded from: classes-dex2jar.jar:com/facebook/FacebookButtonBase$a.class */
    public class View$OnClickListenerC0336a implements View.OnClickListener {
        public View$OnClickListenerC0336a() {
            FacebookButtonBase.this = r4;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            View.OnClickListener onClickListener;
            FacebookButtonBase facebookButtonBase = FacebookButtonBase.this;
            facebookButtonBase.m5221g(facebookButtonBase.getContext());
            if (FacebookButtonBase.this.f2456d != null) {
                onClickListener = FacebookButtonBase.this.f2456d;
            } else if (FacebookButtonBase.this.f2455c == null) {
                return;
            } else {
                onClickListener = FacebookButtonBase.this.f2455c;
            }
            onClickListener.onClick(view);
        }
    }

    public FacebookButtonBase(Context context, AttributeSet attributeSet, int i, int i2, String str, String str2) {
        super(context, attributeSet, 0);
        int defaultStyleResource = i2 == 0 ? getDefaultStyleResource() : i2;
        m5223e(context, attributeSet, i, defaultStyleResource == 0 ? vl0.com_facebook_button : defaultStyleResource);
        this.f2453a = str;
        this.f2454b = str2;
        setClickable(true);
        setFocusable(true);
    }

    /* renamed from: d */
    public void m5224d(View view) {
        View.OnClickListener onClickListener = this.f2455c;
        if (onClickListener != null) {
            onClickListener.onClick(view);
        }
    }

    /* renamed from: e */
    public void m5223e(Context context, AttributeSet attributeSet, int i, int i2) {
        m5219i(context, attributeSet, i, i2);
        m5218j(context, attributeSet, i, i2);
        m5217k(context, attributeSet, i, i2);
        m5216l(context, attributeSet, i, i2);
        m5215m();
    }

    /* renamed from: f */
    public final void m5222f(Context context) {
        new xj0(context).h(this.f2453a);
    }

    /* renamed from: g */
    public final void m5221g(Context context) {
        new xj0(context).h(this.f2454b);
    }

    public Activity getActivity() {
        Context context;
        boolean z;
        Context context2 = getContext();
        while (true) {
            context = context2;
            z = context instanceof Activity;
            if (z || !(context instanceof ContextWrapper)) {
                break;
            }
            context2 = ((ContextWrapper) context).getBaseContext();
        }
        if (z) {
            return (Activity) context;
        }
        throw new ri0("Unable to get Activity.");
    }

    @Override // android.widget.TextView
    public int getCompoundPaddingLeft() {
        return this.f2457f ? this.f2458g : super.getCompoundPaddingLeft();
    }

    @Override // android.widget.TextView
    public int getCompoundPaddingRight() {
        return this.f2457f ? this.f2459h : super.getCompoundPaddingRight();
    }

    public abstract int getDefaultRequestCode();

    public int getDefaultStyleResource() {
        return 0;
    }

    public Fragment getFragment() {
        pm0 pm0Var = this.f2460j;
        return pm0Var != null ? pm0Var.c() : null;
    }

    public android.app.Fragment getNativeFragment() {
        pm0 pm0Var = this.f2460j;
        return pm0Var != null ? pm0Var.b() : null;
    }

    public int getRequestCode() {
        return getDefaultRequestCode();
    }

    /* renamed from: h */
    public int m5220h(String str) {
        return (int) Math.ceil(getPaint().measureText(str));
    }

    /* renamed from: i */
    public final void m5219i(Context context, AttributeSet attributeSet, int i, int i2) {
        int d;
        if (isInEditMode()) {
            return;
        }
        TypedArray obtainStyledAttributes = context.getTheme().obtainStyledAttributes(attributeSet, new int[]{16842964}, i, i2);
        try {
            if (obtainStyledAttributes.hasValue(0)) {
                int resourceId = obtainStyledAttributes.getResourceId(0, 0);
                if (resourceId != 0) {
                    setBackgroundResource(resourceId);
                }
                d = obtainStyledAttributes.getColor(0, 0);
            } else {
                d = g8.d(context, pl0.com_facebook_blue);
            }
            setBackgroundColor(d);
        } finally {
            obtainStyledAttributes.recycle();
        }
    }

    @SuppressLint({"ResourceType"})
    /* renamed from: j */
    public final void m5218j(Context context, AttributeSet attributeSet, int i, int i2) {
        TypedArray obtainStyledAttributes = context.getTheme().obtainStyledAttributes(attributeSet, new int[]{16843119, 16843117, 16843120, 16843118, 16843121}, i, i2);
        try {
            setCompoundDrawablesWithIntrinsicBounds(obtainStyledAttributes.getResourceId(0, 0), obtainStyledAttributes.getResourceId(1, 0), obtainStyledAttributes.getResourceId(2, 0), obtainStyledAttributes.getResourceId(3, 0));
            setCompoundDrawablePadding(obtainStyledAttributes.getDimensionPixelSize(4, 0));
        } finally {
            obtainStyledAttributes.recycle();
        }
    }

    /* renamed from: k */
    public final void m5217k(Context context, AttributeSet attributeSet, int i, int i2) {
        TypedArray obtainStyledAttributes = context.getTheme().obtainStyledAttributes(attributeSet, new int[]{16842966, 16842967, 16842968, 16842969}, i, i2);
        try {
            setPadding(obtainStyledAttributes.getDimensionPixelSize(0, 0), obtainStyledAttributes.getDimensionPixelSize(1, 0), obtainStyledAttributes.getDimensionPixelSize(2, 0), obtainStyledAttributes.getDimensionPixelSize(3, 0));
        } finally {
            obtainStyledAttributes.recycle();
        }
    }

    /* renamed from: l */
    public final void m5216l(Context context, AttributeSet attributeSet, int i, int i2) {
        TypedArray obtainStyledAttributes = context.getTheme().obtainStyledAttributes(attributeSet, new int[]{16842904}, i, i2);
        try {
            setTextColor(obtainStyledAttributes.getColorStateList(0));
            obtainStyledAttributes.recycle();
            obtainStyledAttributes = context.getTheme().obtainStyledAttributes(attributeSet, new int[]{16842927}, i, i2);
            try {
                setGravity(obtainStyledAttributes.getInt(0, 17));
                obtainStyledAttributes.recycle();
                obtainStyledAttributes = context.getTheme().obtainStyledAttributes(attributeSet, new int[]{16842901, 16842903, 16843087}, i, i2);
                try {
                    setTextSize(0, obtainStyledAttributes.getDimensionPixelSize(0, 0));
                    setTypeface(Typeface.defaultFromStyle(obtainStyledAttributes.getInt(1, 1)));
                    setText(obtainStyledAttributes.getString(2));
                } finally {
                }
            } finally {
            }
        } finally {
        }
    }

    /* renamed from: m */
    public final void m5215m() {
        super.setOnClickListener(new View$OnClickListenerC0336a());
    }

    @Override // android.widget.TextView, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        if (!isInEditMode()) {
            m5222f(getContext());
        }
    }

    @Override // android.widget.TextView, android.view.View
    public void onDraw(Canvas canvas) {
        if ((getGravity() & 1) != 0) {
            int compoundPaddingLeft = getCompoundPaddingLeft();
            int compoundPaddingRight = getCompoundPaddingRight();
            int min = Math.min((((getWidth() - (getCompoundDrawablePadding() + compoundPaddingLeft)) - compoundPaddingRight) - m5220h(getText().toString())) / 2, (compoundPaddingLeft - getPaddingLeft()) / 2);
            this.f2458g = compoundPaddingLeft - min;
            this.f2459h = compoundPaddingRight + min;
            this.f2457f = true;
        }
        super.onDraw(canvas);
        this.f2457f = false;
    }

    public void setFragment(android.app.Fragment fragment) {
        this.f2460j = new pm0(fragment);
    }

    public void setFragment(Fragment fragment) {
        this.f2460j = new pm0(fragment);
    }

    public void setInternalOnClickListener(View.OnClickListener onClickListener) {
        this.f2456d = onClickListener;
    }

    @Override // android.view.View
    public void setOnClickListener(View.OnClickListener onClickListener) {
        this.f2455c = onClickListener;
    }
}
