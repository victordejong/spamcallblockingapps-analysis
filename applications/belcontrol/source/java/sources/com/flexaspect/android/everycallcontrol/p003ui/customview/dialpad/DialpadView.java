package com.flexaspect.android.everycallcontrol.p003ui.customview.dialpad;

import android.animation.AnimatorListenerAdapter;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.util.Log;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewPropertyAnimator;
import android.view.accessibility.AccessibilityManager;
import android.widget.EditText;
import android.widget.ImageButton;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.google.zxing.datamatrix.encoder.HighLevelEncoder;
import java.util.Locale;
/* renamed from: com.flexaspect.android.everycallcontrol.ui.customview.dialpad.DialpadView */
/* loaded from: classes-dex2jar.jar:com/flexaspect/android/everycallcontrol/ui/customview/dialpad/DialpadView.class */
public class DialpadView extends LinearLayout {

    /* renamed from: l */
    public static final String f2835l = DialpadView.class.getSimpleName();

    /* renamed from: a */
    public EditText f2836a;

    /* renamed from: b */
    public ImageButton f2837b;

    /* renamed from: c */
    public View f2838c;

    /* renamed from: d */
    public ColorStateList f2839d;

    /* renamed from: f */
    public ViewGroup f2840f;

    /* renamed from: g */
    public TextView f2841g;

    /* renamed from: h */
    public TextView f2842h;

    /* renamed from: j */
    public final int[] f2843j;

    /* renamed from: k */
    public int f2844k;

    /* renamed from: com.flexaspect.android.everycallcontrol.ui.customview.dialpad.DialpadView$a */
    /* loaded from: classes-dex2jar.jar:com/flexaspect/android/everycallcontrol/ui/customview/dialpad/DialpadView$a.class */
    public class C0393a extends AnimatorListenerAdapter {
        public C0393a(DialpadView dialpadView) {
        }
    }

    public DialpadView(Context context) {
        this(context, null);
    }

    public DialpadView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public DialpadView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.f2843j = new int[]{2131363549, 2131362951, 2131363433, 2131363396, 2131362503, 2131362490, 2131363211, 2131363193, 2131362423, 2131362936, 2131363237, 2131363009};
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, jq0.Dialpad);
        this.f2839d = obtainStyledAttributes.getColorStateList(0);
        obtainStyledAttributes.recycle();
        this.f2844k = getResources().getDimensionPixelSize(2131165458);
        TextUtils.getLayoutDirectionFromLocale(Locale.getDefault());
    }

    /* renamed from: a */
    public void m4817a() {
        int[] iArr;
        C0393a c0393a = new C0393a(this);
        int i = 0;
        while (true) {
            if (i < this.f2843j.length) {
                int m4815c = (int) (m4815c(iArr[i]) * 0.66d);
                DialpadKeyButton dialpadKeyButton = (DialpadKeyButton) findViewById(this.f2843j[i]);
                ViewPropertyAnimator animate = dialpadKeyButton.animate();
                dialpadKeyButton.setTranslationY(this.f2844k);
                animate.translationY(0.0f);
                animate.setInterpolator(qv0.c).setStartDelay(m4815c).setDuration((int) (m4814d(this.f2843j[i]) * 0.8d)).setListener(c0393a).start();
                i++;
            } else {
                return;
            }
        }
    }

    /* renamed from: b */
    public final Drawable m4816b(Context context, int i) {
        return Build.VERSION.SDK_INT >= 21 ? context.getDrawable(i) : context.getResources().getDrawable(i);
    }

    /* renamed from: c */
    public final int m4815c(int i) {
        if (i == 2131362951) {
            return 33;
        }
        if (i == 2131363433) {
            return 66;
        }
        if (i == 2131363396) {
            return 99;
        }
        if (i == 2131362503) {
            return 132;
        }
        if (i == 2131362490) {
            return 165;
        }
        if (i == 2131363211) {
            return 198;
        }
        if (i == 2131363193) {
            return HighLevelEncoder.LATCH_TO_BASE256;
        }
        if (i == 2131362423) {
            return 264;
        }
        if (i == 2131362936) {
            return 297;
        }
        if (i == 2131363237) {
            return 330;
        }
        if (i == 2131363549 || i == 2131363009) {
            return 363;
        }
        Log.wtf(f2835l, "Attempted to get animation delay for invalid key button id.");
        return 0;
    }

    /* renamed from: d */
    public final int m4814d(int i) {
        if (i == 2131362951 || i == 2131363433 || i == 2131363396 || i == 2131362503 || i == 2131362490 || i == 2131363211) {
            return 330;
        }
        if (i == 2131363193 || i == 2131362423 || i == 2131362936) {
            return 297;
        }
        if (i == 2131363237 || i == 2131363549 || i == 2131363009) {
            return 264;
        }
        Log.wtf(f2835l, "Attempted to get animation duration for invalid key button id.");
        return 0;
    }

    /* JADX WARN: Removed duplicated region for block: B:19:0x0163  */
    /* JADX WARN: Removed duplicated region for block: B:22:0x0189  */
    /* JADX WARN: Removed duplicated region for block: B:28:0x0196 A[SYNTHETIC] */
    /* renamed from: e */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m4813e() {
        /*
            Method dump skipped, instructions count: 451
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.flexaspect.android.everycallcontrol.p003ui.customview.dialpad.DialpadView.m4813e():void");
    }

    public ImageButton getDeleteButton() {
        return this.f2837b;
    }

    public EditText getDigits() {
        return this.f2836a;
    }

    public View getOverflowMenuButton() {
        return this.f2838c;
    }

    @Override // android.view.View
    public void onFinishInflate() {
        super.onFinishInflate();
        m4813e();
        this.f2836a = (EditText) findViewById(2131362390);
        this.f2837b = (ImageButton) findViewById(2131362363);
        this.f2838c = findViewById(2131362388);
        ViewGroup viewGroup = (ViewGroup) findViewById(2131363068);
        this.f2840f = viewGroup;
        this.f2841g = (TextView) viewGroup.findViewById(2131362579);
        this.f2842h = (TextView) this.f2840f.findViewById(2131362580);
        if (((AccessibilityManager) getContext().getSystemService("accessibility")).isEnabled()) {
            this.f2836a.setSelected(true);
        }
    }

    @Override // android.view.View
    public boolean onHoverEvent(MotionEvent motionEvent) {
        return true;
    }

    public void setCallRateInformation(String str, String str2) {
        if (TextUtils.isEmpty(str) && TextUtils.isEmpty(str2)) {
            this.f2840f.setVisibility(8);
            return;
        }
        this.f2840f.setVisibility(0);
        this.f2841g.setText(str);
        this.f2842h.setText(str2);
    }

    public void setCanDigitsBeEdited(boolean z) {
        findViewById(2131362363).setVisibility(z ? 0 : 8);
        View findViewById = findViewById(2131362388);
        int i = 8;
        if (z) {
            i = 0;
        }
        findViewById.setVisibility(i);
        EditText editText = (EditText) findViewById(2131362390);
        editText.setClickable(z);
        editText.setLongClickable(z);
        editText.setFocusableInTouchMode(z);
        editText.setCursorVisible(false);
    }

    public void setShowVoicemailButton(boolean z) {
        View findViewById = findViewById(2131362387);
        if (findViewById != null) {
            findViewById.setVisibility(z ? 0 : 4);
        }
    }
}
