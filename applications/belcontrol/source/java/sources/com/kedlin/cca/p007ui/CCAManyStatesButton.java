package com.kedlin.cca.p007ui;

import android.content.Context;
import android.util.AttributeSet;
import android.widget.Button;
/* renamed from: com.kedlin.cca.ui.CCAManyStatesButton */
/* loaded from: classes3-dex2jar.jar:com/kedlin/cca/ui/CCAManyStatesButton.class */
public class CCAManyStatesButton extends Button {

    /* renamed from: b */
    public static final int[] f3783b = {2130969748};

    /* renamed from: c */
    public static final int[] f3784c = {2130969743};

    /* renamed from: d */
    public static final int[] f3785d = {2130969747};

    /* renamed from: a */
    public EnumC0651b f3786a = EnumC0651b.OFF;

    /* renamed from: com.kedlin.cca.ui.CCAManyStatesButton$a */
    /* loaded from: classes3-dex2jar.jar:com/kedlin/cca/ui/CCAManyStatesButton$a.class */
    public static /* synthetic */ class C0650a {

        /* renamed from: a */
        public static final /* synthetic */ int[] f3787a;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:10:0x002f -> B:16:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:9:0x002b -> B:12:0x0014). Please submit an issue!!! */
        static {
            int[] iArr = new int[EnumC0651b.values().length];
            f3787a = iArr;
            try {
                iArr[EnumC0651b.OFF.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f3787a[EnumC0651b.DAY.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f3787a[EnumC0651b.NIGHT.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
        }
    }

    /* renamed from: com.kedlin.cca.ui.CCAManyStatesButton$b */
    /* loaded from: classes3-dex2jar.jar:com/kedlin/cca/ui/CCAManyStatesButton$b.class */
    public enum EnumC0651b {
        OFF,
        DAY,
        NIGHT
    }

    public CCAManyStatesButton(Context context) {
        super(context);
        m4314a();
    }

    public CCAManyStatesButton(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        m4314a();
    }

    public CCAManyStatesButton(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        m4314a();
    }

    /* renamed from: a */
    public final void m4314a() {
    }

    /* renamed from: b */
    public boolean m4313b() {
        return this.f3786a == EnumC0651b.DAY;
    }

    /* renamed from: c */
    public boolean m4312c() {
        return this.f3786a == EnumC0651b.OFF;
    }

    public EnumC0651b getDayState() {
        return this.f3786a;
    }

    @Override // android.widget.TextView, android.view.View
    public int[] onCreateDrawableState(int i) {
        int[] onCreateDrawableState = super.onCreateDrawableState(i + 3);
        EnumC0651b enumC0651b = this.f3786a;
        if (enumC0651b != null) {
            int i2 = C0650a.f3787a[enumC0651b.ordinal()];
            if (i2 == 1) {
                Button.mergeDrawableStates(onCreateDrawableState, f3783b);
            } else if (i2 == 2) {
                Button.mergeDrawableStates(onCreateDrawableState, f3784c);
            } else if (i2 == 3) {
                Button.mergeDrawableStates(onCreateDrawableState, f3785d);
            }
        }
        return onCreateDrawableState;
    }

    @Override // android.view.View
    public boolean performClick() {
        setDayState(EnumC0651b.values()[(this.f3786a.ordinal() + 1) % EnumC0651b.values().length]);
        return super.performClick();
    }

    public void setDayState(EnumC0651b enumC0651b) {
        this.f3786a = enumC0651b;
        refreshDrawableState();
    }
}
