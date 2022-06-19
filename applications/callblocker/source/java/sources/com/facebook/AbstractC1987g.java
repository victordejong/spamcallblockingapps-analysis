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
import androidx.core.p017a.C0438a;
import androidx.fragment.app.Fragment;
import com.facebook.common.C1974a;
import com.facebook.internal.C2056n;
import com.facebook.p094a.C1927m;
/* renamed from: com.facebook.g */
/* loaded from: classes-dex2jar.jar:com/facebook/g.class */
public abstract class AbstractC1987g extends Button {

    /* renamed from: a */
    private String f5910a;

    /* renamed from: b */
    private String f5911b;

    /* renamed from: c */
    private View.OnClickListener f5912c;

    /* renamed from: d */
    private View.OnClickListener f5913d;

    /* renamed from: e */
    private boolean f5914e;

    /* renamed from: f */
    private int f5915f;

    /* renamed from: g */
    private int f5916g;

    /* renamed from: h */
    private C2056n f5917h;

    public AbstractC1987g(Context context, AttributeSet attributeSet, int i, int i2, String str, String str2) {
        super(context, attributeSet, 0);
        i2 = i2 == 0 ? getDefaultStyleResource() : i2;
        mo15054a(context, attributeSet, i, i2 == 0 ? C1974a.C1980f.com_facebook_button : i2);
        this.f5910a = str;
        this.f5911b = str2;
        setClickable(true);
        setFocusable(true);
    }

    /* renamed from: a */
    private void m15721a() {
        super.setOnClickListener(new View.OnClickListener() { // from class: com.facebook.g.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                AbstractC1987g.this.m15715b(AbstractC1987g.this.getContext());
                if (AbstractC1987g.this.f5913d != null) {
                    AbstractC1987g.this.f5913d.onClick(view);
                } else if (AbstractC1987g.this.f5912c == null) {
                } else {
                    AbstractC1987g.this.f5912c.onClick(view);
                }
            }
        });
    }

    /* renamed from: a */
    private void m15720a(Context context) {
        new C1927m(context).m15860a(this.f5910a);
    }

    /* renamed from: b */
    public void m15715b(Context context) {
        new C1927m(context).m15860a(this.f5911b);
    }

    /* renamed from: b */
    private void m15714b(Context context, AttributeSet attributeSet, int i, int i2) {
        if (isInEditMode()) {
            return;
        }
        TypedArray obtainStyledAttributes = context.getTheme().obtainStyledAttributes(attributeSet, new int[]{16842964}, i, i2);
        try {
            if (obtainStyledAttributes.hasValue(0)) {
                int resourceId = obtainStyledAttributes.getResourceId(0, 0);
                if (resourceId != 0) {
                    setBackgroundResource(resourceId);
                } else {
                    setBackgroundColor(obtainStyledAttributes.getColor(0, 0));
                }
            } else {
                setBackgroundColor(C0438a.m20892c(context, C1974a.C1975a.com_facebook_blue));
            }
        } finally {
            obtainStyledAttributes.recycle();
        }
    }

    @SuppressLint({"ResourceType"})
    /* renamed from: c */
    private void m15712c(Context context, AttributeSet attributeSet, int i, int i2) {
        TypedArray obtainStyledAttributes = context.getTheme().obtainStyledAttributes(attributeSet, new int[]{16843119, 16843117, 16843120, 16843118, 16843121}, i, i2);
        try {
            setCompoundDrawablesWithIntrinsicBounds(obtainStyledAttributes.getResourceId(0, 0), obtainStyledAttributes.getResourceId(1, 0), obtainStyledAttributes.getResourceId(2, 0), obtainStyledAttributes.getResourceId(3, 0));
            setCompoundDrawablePadding(obtainStyledAttributes.getDimensionPixelSize(4, 0));
        } finally {
            obtainStyledAttributes.recycle();
        }
    }

    /* renamed from: d */
    private void m15711d(Context context, AttributeSet attributeSet, int i, int i2) {
        TypedArray obtainStyledAttributes = context.getTheme().obtainStyledAttributes(attributeSet, new int[]{16842966, 16842967, 16842968, 16842969}, i, i2);
        try {
            setPadding(obtainStyledAttributes.getDimensionPixelSize(0, 0), obtainStyledAttributes.getDimensionPixelSize(1, 0), obtainStyledAttributes.getDimensionPixelSize(2, 0), obtainStyledAttributes.getDimensionPixelSize(3, 0));
        } finally {
            obtainStyledAttributes.recycle();
        }
    }

    /* renamed from: e */
    private void m15710e(Context context, AttributeSet attributeSet, int i, int i2) {
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

    /* renamed from: a */
    public int m15716a(String str) {
        return (int) Math.ceil(getPaint().measureText(str));
    }

    /* renamed from: a */
    public void mo15054a(Context context, AttributeSet attributeSet, int i, int i2) {
        m15714b(context, attributeSet, i, i2);
        m15712c(context, attributeSet, i, i2);
        m15711d(context, attributeSet, i, i2);
        m15710e(context, attributeSet, i, i2);
        m15721a();
    }

    /* renamed from: a */
    public void m15719a(View view) {
        if (this.f5912c != null) {
            this.f5912c.onClick(view);
        }
    }

    public Activity getActivity() {
        Context context;
        Context context2 = getContext();
        while (true) {
            context = context2;
            if ((context instanceof Activity) || !(context instanceof ContextWrapper)) {
                break;
            }
            context2 = ((ContextWrapper) context).getBaseContext();
        }
        if (context instanceof Activity) {
            return (Activity) context;
        }
        throw new FacebookException("Unable to get Activity.");
    }

    @Override // android.widget.TextView
    public int getCompoundPaddingLeft() {
        return this.f5914e ? this.f5915f : super.getCompoundPaddingLeft();
    }

    @Override // android.widget.TextView
    public int getCompoundPaddingRight() {
        return this.f5914e ? this.f5916g : super.getCompoundPaddingRight();
    }

    protected abstract int getDefaultRequestCode();

    protected int getDefaultStyleResource() {
        return 0;
    }

    public Fragment getFragment() {
        return this.f5917h != null ? this.f5917h.m15568b() : null;
    }

    public android.app.Fragment getNativeFragment() {
        return this.f5917h != null ? this.f5917h.m15570a() : null;
    }

    public int getRequestCode() {
        return getDefaultRequestCode();
    }

    @Override // android.widget.TextView, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        if (!isInEditMode()) {
            m15720a(getContext());
        }
    }

    @Override // android.widget.TextView, android.view.View
    public void onDraw(Canvas canvas) {
        if ((getGravity() & 1) != 0) {
            int compoundPaddingLeft = getCompoundPaddingLeft();
            int compoundPaddingRight = getCompoundPaddingRight();
            int min = Math.min((((getWidth() - (getCompoundDrawablePadding() + compoundPaddingLeft)) - compoundPaddingRight) - m15716a(getText().toString())) / 2, (compoundPaddingLeft - getPaddingLeft()) / 2);
            this.f5915f = compoundPaddingLeft - min;
            this.f5916g = compoundPaddingRight + min;
            this.f5914e = true;
        }
        super.onDraw(canvas);
        this.f5914e = false;
    }

    public void setFragment(android.app.Fragment fragment) {
        this.f5917h = new C2056n(fragment);
    }

    public void setFragment(Fragment fragment) {
        this.f5917h = new C2056n(fragment);
    }

    public void setInternalOnClickListener(View.OnClickListener onClickListener) {
        this.f5913d = onClickListener;
    }

    @Override // android.view.View
    public void setOnClickListener(View.OnClickListener onClickListener) {
        this.f5912c = onClickListener;
    }
}
