package p081h.p154f;

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
import androidx.core.content.ContextCompat;
import androidx.fragment.app.Fragment;
import com.facebook.appevents.C2283m;
import com.facebook.common.R$color;
import com.facebook.common.R$style;
import com.facebook.internal.C2486r;
/* renamed from: h.f.g */
/* loaded from: classes-dex2jar.jar:h/f/g.class */
public abstract class AbstractC6126g extends Button {

    /* renamed from: a */
    public String f15230a;

    /* renamed from: b */
    public String f15231b;

    /* renamed from: c */
    public View.OnClickListener f15232c;

    /* renamed from: d */
    public View.OnClickListener f15233d;

    /* renamed from: e */
    public boolean f15234e;

    /* renamed from: f */
    public int f15235f;

    /* renamed from: g */
    public int f15236g;

    /* renamed from: h */
    public C2486r f15237h;

    /* renamed from: h.f.g$a */
    /* loaded from: classes-dex2jar.jar:h/f/g$a.class */
    public class View$OnClickListenerC6127a implements View.OnClickListener {
        public View$OnClickListenerC6127a() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            AbstractC6126g gVar = AbstractC6126g.this;
            gVar.m23773b(gVar.getContext());
            if (AbstractC6126g.this.f15233d != null) {
                AbstractC6126g.this.f15233d.onClick(view);
            } else if (AbstractC6126g.this.f15232c != null) {
                AbstractC6126g.this.f15232c.onClick(view);
            }
        }
    }

    public AbstractC6126g(Context context, AttributeSet attributeSet, int i, int i2, String str, String str2) {
        super(context, attributeSet, 0);
        int c = i2 == 0 ? mo23770c() : i2;
        mo23780a(context, attributeSet, i, c == 0 ? R$style.com_facebook_button : c);
        this.f15230a = str;
        this.f15231b = str2;
        setClickable(true);
        setFocusable(true);
    }

    /* renamed from: a */
    public int m23775a(String str) {
        return (int) Math.ceil(getPaint().measureText(str));
    }

    /* renamed from: a */
    public Activity m23782a() {
        boolean z;
        Context context = getContext();
        while (true) {
            z = context instanceof Activity;
            if (z || !(context instanceof ContextWrapper)) {
                break;
            }
            context = ((ContextWrapper) context).getBaseContext();
        }
        if (z) {
            return (Activity) context;
        }
        throw new C6131k("Unable to get Activity.");
    }

    /* renamed from: a */
    public final void m23781a(Context context) {
        new C2283m(context).m35294b(this.f15230a);
    }

    /* renamed from: a */
    public void mo23780a(Context context, AttributeSet attributeSet, int i, int i2) {
        m23772b(context, attributeSet, i, i2);
        m23769c(context, attributeSet, i, i2);
        m23767d(context, attributeSet, i, i2);
        m23765e(context, attributeSet, i, i2);
        m23764f();
    }

    /* renamed from: a */
    public void m23779a(View.OnClickListener onClickListener) {
        this.f15233d = onClickListener;
    }

    /* renamed from: a */
    public void m23778a(View view) {
        View.OnClickListener onClickListener = this.f15232c;
        if (onClickListener != null) {
            onClickListener.onClick(view);
        }
    }

    /* renamed from: b */
    public abstract int mo23774b();

    /* renamed from: b */
    public final void m23773b(Context context) {
        new C2283m(context).m35294b(this.f15231b);
    }

    /* renamed from: b */
    public final void m23772b(Context context, AttributeSet attributeSet, int i, int i2) {
        if (!isInEditMode()) {
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
                    setBackgroundColor(ContextCompat.getColor(context, R$color.com_facebook_blue));
                }
            } finally {
                obtainStyledAttributes.recycle();
            }
        }
    }

    /* renamed from: c */
    public abstract int mo23770c();

    @SuppressLint({"ResourceType"})
    /* renamed from: c */
    public final void m23769c(Context context, AttributeSet attributeSet, int i, int i2) {
        TypedArray obtainStyledAttributes = context.getTheme().obtainStyledAttributes(attributeSet, new int[]{16843119, 16843117, 16843120, 16843118, 16843121}, i, i2);
        try {
            setCompoundDrawablesWithIntrinsicBounds(obtainStyledAttributes.getResourceId(0, 0), obtainStyledAttributes.getResourceId(1, 0), obtainStyledAttributes.getResourceId(2, 0), obtainStyledAttributes.getResourceId(3, 0));
            setCompoundDrawablePadding(obtainStyledAttributes.getDimensionPixelSize(4, 0));
        } finally {
            obtainStyledAttributes.recycle();
        }
    }

    /* renamed from: d */
    public Fragment m23768d() {
        C2486r rVar = this.f15237h;
        return rVar != null ? rVar.m34602c() : null;
    }

    /* renamed from: d */
    public final void m23767d(Context context, AttributeSet attributeSet, int i, int i2) {
        TypedArray obtainStyledAttributes = context.getTheme().obtainStyledAttributes(attributeSet, new int[]{16842966, 16842967, 16842968, 16842969}, i, i2);
        try {
            setPadding(obtainStyledAttributes.getDimensionPixelSize(0, 0), obtainStyledAttributes.getDimensionPixelSize(1, 0), obtainStyledAttributes.getDimensionPixelSize(2, 0), obtainStyledAttributes.getDimensionPixelSize(3, 0));
        } finally {
            obtainStyledAttributes.recycle();
        }
    }

    /* renamed from: e */
    public android.app.Fragment m23766e() {
        C2486r rVar = this.f15237h;
        return rVar != null ? rVar.m34603b() : null;
    }

    /* renamed from: e */
    public final void m23765e(Context context, AttributeSet attributeSet, int i, int i2) {
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

    /* renamed from: f */
    public final void m23764f() {
        super.setOnClickListener(new View$OnClickListenerC6127a());
    }

    @Override // android.widget.TextView
    public int getCompoundPaddingLeft() {
        return this.f15234e ? this.f15235f : super.getCompoundPaddingLeft();
    }

    @Override // android.widget.TextView
    public int getCompoundPaddingRight() {
        return this.f15234e ? this.f15236g : super.getCompoundPaddingRight();
    }

    @Override // android.widget.TextView, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        if (!isInEditMode()) {
            m23781a(getContext());
        }
    }

    @Override // android.widget.TextView, android.view.View
    public void onDraw(Canvas canvas) {
        if ((getGravity() & 1) != 0) {
            int compoundPaddingLeft = getCompoundPaddingLeft();
            int compoundPaddingRight = getCompoundPaddingRight();
            int min = Math.min((((getWidth() - (getCompoundDrawablePadding() + compoundPaddingLeft)) - compoundPaddingRight) - m23775a(getText().toString())) / 2, (compoundPaddingLeft - getPaddingLeft()) / 2);
            this.f15235f = compoundPaddingLeft - min;
            this.f15236g = compoundPaddingRight + min;
            this.f15234e = true;
        }
        super.onDraw(canvas);
        this.f15234e = false;
    }

    @Override // android.view.View
    public void setOnClickListener(View.OnClickListener onClickListener) {
        this.f15232c = onClickListener;
    }
}
