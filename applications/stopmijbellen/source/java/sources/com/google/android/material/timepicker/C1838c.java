package com.google.android.material.timepicker;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.os.Handler;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.constraintlayout.widget.C0309b;
import androidx.constraintlayout.widget.ConstraintLayout;
import java.util.Objects;
import java.util.WeakHashMap;
import p029c4.C0822f;
import p029c4.C0825g;
import p029c4.C0827i;
import p134j4.C3260w0;
import p163m0.C3589v;
import p163m0.C3611y;
/* renamed from: com.google.android.material.timepicker.c */
/* loaded from: classes-dex2jar.jar:com/google/android/material/timepicker/c.class */
public class C1838c extends ConstraintLayout {

    /* renamed from: s */
    public final Runnable f6934s;

    /* renamed from: t */
    public int f6935t;

    /* renamed from: u */
    public C0822f f6936u;

    /* renamed from: com.google.android.material.timepicker.c$a */
    /* loaded from: classes-dex2jar.jar:com/google/android/material/timepicker/c$a.class */
    public class RunnableC1839a implements Runnable {
        public RunnableC1839a() {
            C1838c.this = r4;
        }

        @Override // java.lang.Runnable
        public void run() {
            C1838c.this.m4492s();
        }
    }

    public C1838c(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public C1838c(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        LayoutInflater.from(context).inflate(2131492978, this);
        C0822f c0822f = new C0822f();
        this.f6936u = c0822f;
        C0825g c0825g = new C0825g(0.5f);
        C0827i c0827i = c0822f.f3010a.f3034a;
        Objects.requireNonNull(c0827i);
        C0827i.C0829b c0829b = new C0827i.C0829b(c0827i);
        c0829b.f3074e = c0825g;
        c0829b.f3075f = c0825g;
        c0829b.f3076g = c0825g;
        c0829b.f3077h = c0825g;
        c0822f.f3010a.f3034a = c0829b.m7299a();
        c0822f.invalidateSelf();
        this.f6936u.m7314q(ColorStateList.valueOf(-1));
        C0822f c0822f2 = this.f6936u;
        WeakHashMap<View, C3611y> weakHashMap = C3589v.f11780a;
        C3589v.C3593d.m2077q(this, c0822f2);
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, C3260w0.f11008B, i, 0);
        this.f6935t = obtainStyledAttributes.getDimensionPixelSize(0, 0);
        this.f6934s = new RunnableC1839a();
        obtainStyledAttributes.recycle();
    }

    @Override // android.view.ViewGroup
    public void addView(View view, int i, ViewGroup.LayoutParams layoutParams) {
        super.addView(view, i, layoutParams);
        if (view.getId() == -1) {
            WeakHashMap<View, C3611y> weakHashMap = C3589v.f11780a;
            view.setId(C3589v.C3594e.m2074a());
        }
        Handler handler = getHandler();
        if (handler != null) {
            handler.removeCallbacks(this.f6934s);
            handler.post(this.f6934s);
        }
    }

    @Override // android.view.View
    public void onFinishInflate() {
        super.onFinishInflate();
        m4492s();
    }

    @Override // androidx.constraintlayout.widget.ConstraintLayout, android.view.ViewGroup
    public void onViewRemoved(View view) {
        super.onViewRemoved(view);
        Handler handler = getHandler();
        if (handler != null) {
            handler.removeCallbacks(this.f6934s);
            handler.post(this.f6934s);
        }
    }

    /* renamed from: s */
    public void m4492s() {
        int i;
        int childCount = getChildCount();
        int i2 = 0;
        int i3 = 1;
        while (true) {
            i = i3;
            if (i2 >= childCount) {
                break;
            }
            int i4 = i;
            if ("skip".equals(getChildAt(i2).getTag())) {
                i4 = i + 1;
            }
            i2++;
            i3 = i4;
        }
        C0309b c0309b = new C0309b();
        c0309b.m8357c(this);
        float f = 0.0f;
        int i5 = 0;
        while (i5 < childCount) {
            View childAt = getChildAt(i5);
            float f2 = f;
            if (childAt.getId() != 2131296477) {
                if ("skip".equals(childAt.getTag())) {
                    f2 = f;
                } else {
                    int id = childAt.getId();
                    int i6 = this.f6935t;
                    if (!c0309b.f1291c.containsKey(Integer.valueOf(id))) {
                        c0309b.f1291c.put(Integer.valueOf(id), new C0309b.C0310a());
                    }
                    C0309b.C0312b c0312b = c0309b.f1291c.get(Integer.valueOf(id)).f1295d;
                    c0312b.f1312A = 2131296477;
                    c0312b.f1313B = i6;
                    c0312b.f1314C = f;
                    f2 = (360.0f / (childCount - i)) + f;
                }
            }
            i5++;
            f = f2;
        }
        c0309b.m8358b(this, true);
        setConstraintSet(null);
        requestLayout();
    }

    @Override // android.view.View
    public void setBackgroundColor(int i) {
        this.f6936u.m7314q(ColorStateList.valueOf(i));
    }
}
