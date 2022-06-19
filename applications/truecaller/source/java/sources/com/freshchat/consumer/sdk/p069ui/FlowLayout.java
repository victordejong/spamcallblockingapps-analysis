package com.freshchat.consumer.sdk.p069ui;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.util.TypedValue;
import android.view.ViewGroup;
import com.freshchat.consumer.sdk.C1298R;
import java.util.ArrayList;
import java.util.List;
/* renamed from: com.freshchat.consumer.sdk.ui.FlowLayout */
/* loaded from: classes2-dex2jar.jar:com/freshchat/consumer/sdk/ui/FlowLayout.class */
public class FlowLayout extends ViewGroup {

    /* renamed from: md */
    private static final String f4791md = FlowLayout.class.getSimpleName();

    /* renamed from: me */
    private boolean f4792me;

    /* renamed from: mf */
    private int f4793mf;

    /* renamed from: mg */
    private int f4794mg;

    /* renamed from: mh */
    private int f4795mh;

    /* renamed from: mi */
    private float f4796mi;

    /* renamed from: mj */
    private float f4797mj;

    /* renamed from: mk */
    private boolean f4798mk;

    /* renamed from: ml */
    private int f4799ml;

    /* renamed from: mm */
    private int f4800mm;

    /* renamed from: mn */
    private int f4801mn;

    /* renamed from: mo */
    private int f4802mo;

    /* renamed from: mp */
    private List<Float> f4803mp;

    /* renamed from: mq */
    private List<Integer> f4804mq;

    /* renamed from: mr */
    private List<Integer> f4805mr;

    /* renamed from: ms */
    private List<Integer> f4806ms;

    public FlowLayout(Context context) {
        this(context, null);
    }

    public FlowLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f4792me = true;
        this.f4793mf = 0;
        this.f4794mg = 0;
        this.f4795mh = -65538;
        this.f4796mi = 0.0f;
        this.f4797mj = 0.0f;
        this.f4798mk = false;
        this.f4799ml = Integer.MAX_VALUE;
        this.f4800mm = -1;
        this.f4801mn = -65536;
        this.f4803mp = new ArrayList();
        this.f4804mq = new ArrayList();
        this.f4805mr = new ArrayList();
        this.f4806ms = new ArrayList();
        TypedArray obtainStyledAttributes = context.getTheme().obtainStyledAttributes(attributeSet, C1298R.styleable.freshchatFlowLayout, 0, 0);
        try {
            this.f4792me = obtainStyledAttributes.getBoolean(C1298R.styleable.freshchatFlowLayout_freshchatFlFlow, true);
            try {
                this.f4793mf = obtainStyledAttributes.getInt(C1298R.styleable.freshchatFlowLayout_freshchatFlChildSpacing, 0);
            } catch (NumberFormatException e) {
                this.f4793mf = obtainStyledAttributes.getDimensionPixelSize(C1298R.styleable.freshchatFlowLayout_freshchatFlChildSpacing, (int) m39299a(0.0f));
            }
            try {
                this.f4794mg = obtainStyledAttributes.getInt(C1298R.styleable.freshchatFlowLayout_freshchatFlMinChildSpacing, 0);
            } catch (NumberFormatException e2) {
                this.f4794mg = obtainStyledAttributes.getDimensionPixelSize(C1298R.styleable.freshchatFlowLayout_freshchatFlMinChildSpacing, (int) m39299a(0.0f));
            }
            try {
                this.f4795mh = obtainStyledAttributes.getInt(C1298R.styleable.freshchatFlowLayout_freshchatFlChildSpacingForLastRow, -65538);
            } catch (NumberFormatException e3) {
                this.f4795mh = obtainStyledAttributes.getDimensionPixelSize(C1298R.styleable.freshchatFlowLayout_freshchatFlChildSpacingForLastRow, (int) m39299a(0.0f));
            }
            try {
                this.f4796mi = obtainStyledAttributes.getInt(C1298R.styleable.freshchatFlowLayout_freshchatFlRowSpacing, 0);
            } catch (NumberFormatException e4) {
                this.f4796mi = obtainStyledAttributes.getDimension(C1298R.styleable.freshchatFlowLayout_freshchatFlRowSpacing, m39299a(0.0f));
            }
            this.f4799ml = obtainStyledAttributes.getInt(C1298R.styleable.freshchatFlowLayout_freshchatFlMaxRows, Integer.MAX_VALUE);
            this.f4798mk = obtainStyledAttributes.getBoolean(C1298R.styleable.freshchatFlowLayout_freshchatFlRtl, false);
            this.f4800mm = obtainStyledAttributes.getInt(C1298R.styleable.freshchatFlowLayout_android_gravity, -1);
            this.f4801mn = obtainStyledAttributes.getInt(C1298R.styleable.freshchatFlowLayout_freshchatFlRowVerticalGravity, -65536);
        } finally {
            obtainStyledAttributes.recycle();
        }
    }

    /* renamed from: a */
    private float m39299a(float f) {
        return TypedValue.applyDimension(1, f, getResources().getDisplayMetrics());
    }

    /* renamed from: a */
    private int m39298a(int i, int i2, int i3, int i4) {
        int i5 = 0;
        if (this.f4793mf != -65536) {
            i5 = 0;
            if (i4 < this.f4805mr.size()) {
                i5 = 0;
                if (i4 < this.f4806ms.size()) {
                    i5 = this.f4806ms.get(i4).intValue() <= 0 ? 0 : i != 1 ? i != 5 ? 0 : (i2 - i3) - this.f4805mr.get(i4).intValue() : ((i2 - i3) - this.f4805mr.get(i4).intValue()) / 2;
                }
            }
        }
        return i5;
    }

    /* renamed from: b */
    private float m39297b(int i, int i2, int i3, int i4) {
        return i == -65536 ? i4 > 1 ? (i2 - i3) / (i4 - 1) : 0.0f : i;
    }

    @Override // android.view.ViewGroup
    public ViewGroup.LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        return new ViewGroup.MarginLayoutParams(getContext(), attributeSet);
    }

    @Override // android.view.ViewGroup
    public ViewGroup.LayoutParams generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return new ViewGroup.MarginLayoutParams(layoutParams);
    }

    public int getChildSpacing() {
        return this.f4793mf;
    }

    public int getChildSpacingForLastRow() {
        return this.f4795mh;
    }

    public int getMaxRows() {
        return this.f4799ml;
    }

    public int getMinChildSpacing() {
        return this.f4794mg;
    }

    public float getRowSpacing() {
        return this.f4796mi;
    }

    public int getRowsCount() {
        return this.f4806ms.size();
    }

    /* JADX WARN: Removed duplicated region for block: B:16:0x00cd  */
    @Override // android.view.ViewGroup, android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void onLayout(boolean r8, int r9, int r10, int r11, int r12) {
        /*
            Method dump skipped, instructions count: 657
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.freshchat.consumer.sdk.p069ui.FlowLayout.onLayout(boolean, int, int, int, int):void");
    }

    /* JADX WARN: Removed duplicated region for block: B:49:0x0315  */
    /* JADX WARN: Removed duplicated region for block: B:52:0x032a  */
    /* JADX WARN: Removed duplicated region for block: B:53:0x032f  */
    /* JADX WARN: Removed duplicated region for block: B:58:0x0383  */
    /* JADX WARN: Removed duplicated region for block: B:63:0x0398  */
    /* JADX WARN: Removed duplicated region for block: B:68:0x03bb  */
    /* JADX WARN: Removed duplicated region for block: B:75:0x03fb  */
    /* JADX WARN: Removed duplicated region for block: B:78:0x040b  */
    @Override // android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void onMeasure(int r8, int r9) {
        /*
            Method dump skipped, instructions count: 1046
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.freshchat.consumer.sdk.p069ui.FlowLayout.onMeasure(int, int):void");
    }

    public void setChildSpacing(int i) {
        this.f4793mf = i;
        requestLayout();
    }

    public void setChildSpacingForLastRow(int i) {
        this.f4795mh = i;
        requestLayout();
    }

    public void setFlow(boolean z) {
        this.f4792me = z;
        requestLayout();
    }

    public void setGravity(int i) {
        if (this.f4800mm != i) {
            this.f4800mm = i;
            requestLayout();
        }
    }

    public void setMaxRows(int i) {
        this.f4799ml = i;
        requestLayout();
    }

    public void setMinChildSpacing(int i) {
        this.f4794mg = i;
        requestLayout();
    }

    public void setRowSpacing(float f) {
        this.f4796mi = f;
        requestLayout();
    }

    public void setRowVerticalGravity(int i) {
        if (this.f4801mn != i) {
            this.f4801mn = i;
            requestLayout();
        }
    }

    public void setRtl(boolean z) {
        this.f4798mk = z;
        requestLayout();
    }
}
