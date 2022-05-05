package com.android.contacts.list;

import android.content.Context;
import android.content.res.TypedArray;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.android.contacts.activities.MainDialtactsActivity;
import com.android.contacts.skin.a;
import com.android.contacts.util.PhoneCapabilityTester;
import com.asus.contacts.c;
/* loaded from: classes-dex2jar.jar:com/android/contacts/list/ContactListPinnedHeaderView.class */
public class ContactListPinnedHeaderView extends ViewGroup {

    /* renamed from: a  reason: collision with root package name */
    protected final Context f1721a;

    /* renamed from: b  reason: collision with root package name */
    private final int f1722b;
    private final int c;
    private final int d;
    private final int e;
    private final int f;
    private final int g;
    private final int h;
    private final int i;
    private final int j;
    private int k;
    private TextView l;
    private TextView m = null;
    private View n;
    private LinearLayout o;
    private final int p;

    public ContactListPinnedHeaderView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f1721a = context;
        TypedArray obtainStyledAttributes = getContext().obtainStyledAttributes(attributeSet, c.a.e);
        this.c = obtainStyledAttributes.getDimensionPixelOffset(14, 0);
        this.d = obtainStyledAttributes.getDimensionPixelSize(15, 12);
        this.e = obtainStyledAttributes.getDimensionPixelSize(17, 1);
        this.k = obtainStyledAttributes.getDimensionPixelSize(12, 30);
        this.h = obtainStyledAttributes.getDimensionPixelOffset(21, 0);
        this.g = obtainStyledAttributes.getDimensionPixelOffset(22, 0);
        this.j = obtainStyledAttributes.getDimensionPixelSize(6, 12);
        boolean isUsingTwoPanes = PhoneCapabilityTester.isUsingTwoPanes(context);
        if (a.b() && (this.f1721a instanceof MainDialtactsActivity)) {
            this.f1722b = getResources().getColor(2131034197);
            this.f = getResources().getColor(2131034197);
            this.i = getResources().getColor(2131034130);
        } else if (!a.c() || !(this.f1721a instanceof MainDialtactsActivity)) {
            this.f1722b = obtainStyledAttributes.getColor(13, -16777216);
            this.f = obtainStyledAttributes.getColor(16, 0);
            this.i = obtainStyledAttributes.getColor(5, -16777216);
        } else {
            this.f1722b = a.a(2);
            this.f = a.a(2);
            this.i = a.a(2);
        }
        this.p = obtainStyledAttributes.getDimensionPixelOffset(30, 0);
        if (PhoneCapabilityTester.IsAsusDevice() || isUsingTwoPanes) {
            setPadding(obtainStyledAttributes.getDimensionPixelOffset(21, 0), obtainStyledAttributes.getDimensionPixelOffset(23, 0), obtainStyledAttributes.getDimensionPixelOffset(22, 0), obtainStyledAttributes.getDimensionPixelOffset(20, 0));
        } else {
            setPadding(obtainStyledAttributes.getDimensionPixelOffset(21, 0), obtainStyledAttributes.getDimensionPixelOffset(23, 0), obtainStyledAttributes.getDimensionPixelOffset(21, 0), obtainStyledAttributes.getDimensionPixelOffset(20, 0));
        }
        obtainStyledAttributes.recycle();
        this.o = new LinearLayout(this.f1721a);
        this.o.setOrientation(0);
        addView(this.o);
        this.l = new TextView(this.f1721a);
        this.l.setTextColor(this.f1722b);
        this.l.setTextSize(0, this.d);
        this.l.setTypeface(this.l.getTypeface(), 1);
        this.l.setGravity(16);
        this.l.setAllCaps(true);
        this.o.addView(this.l);
        this.n = new View(this.f1721a);
        this.n.setBackgroundColor(this.f);
        this.o.addView(this.n);
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-1, getResources().getDimensionPixelOffset(2131099765));
        layoutParams.gravity = 80;
        layoutParams.leftMargin = getResources().getDimensionPixelOffset(2131099767);
        layoutParams.bottomMargin = getResources().getDimensionPixelOffset(2131099766);
        this.n.setLayoutParams(layoutParams);
        LinearLayout.LayoutParams layoutParams2 = new LinearLayout.LayoutParams(-2, -2);
        layoutParams2.gravity = 17;
        this.l.setLayoutParams(layoutParams2);
        if (!PhoneCapabilityTester.IsAsusDevice() && PhoneCapabilityTester.isUsingTwoPanes(this.f1721a)) {
            this.l.setPadding(getResources().getDimensionPixelOffset(2131100245), 0, 0, 0);
        }
    }

    private static boolean a(View view) {
        return view != null && view.getVisibility() == 0;
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
        int i5 = i3 - i;
        this.o.layout(this.h, 0, this.o.getMeasuredWidth() + this.h, this.k);
        if (a(this.m)) {
            this.m.layout((((i5 - this.g) - this.m.getMeasuredWidth()) - this.c) - this.p, 0, ((i5 - this.g) - this.c) - this.p, this.k);
        }
    }

    @Override // android.view.View
    protected void onMeasure(int i, int i2) {
        int resolveSize = resolveSize(0, i);
        this.o.measure(View.MeasureSpec.makeMeasureSpec(resolveSize, Integer.MIN_VALUE), View.MeasureSpec.makeMeasureSpec(this.k, 1073741824));
        if (a(this.m)) {
            this.m.measure(View.MeasureSpec.makeMeasureSpec(resolveSize, Integer.MIN_VALUE), View.MeasureSpec.makeMeasureSpec(this.k, 1073741824));
        }
        setMeasuredDimension(resolveSize, this.k + this.e);
    }

    @Override // android.view.View, android.view.ViewParent
    public void requestLayout() {
        forceLayout();
    }

    public void setCountView(String str) {
        if (this.m == null) {
            this.m = new TextView(this.f1721a);
            this.m.setTextColor(this.i);
            this.m.setTextSize(0, this.j);
            this.m.setGravity(16);
            this.m.setPadding(0, 0, 0, getResources().getDimensionPixelOffset(2131099763));
            addView(this.m);
        }
        this.m.setText(str);
        if (str == null || str.isEmpty()) {
            this.m.setVisibility(8);
        } else {
            this.m.setVisibility(0);
        }
    }

    public void setSectionHeader(String str) {
        if (!TextUtils.isEmpty(str)) {
            this.l.setText(str);
            this.l.setVisibility(0);
            return;
        }
        this.l.setVisibility(8);
    }
}
