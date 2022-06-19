package com.kedlin.cca.p007ui;

import android.content.Context;
import android.view.ContextThemeWrapper;
import android.view.LayoutInflater;
import android.view.ViewGroup;
import android.widget.LinearLayout;
/* renamed from: com.kedlin.cca.ui.Slide */
/* loaded from: classes3-dex2jar.jar:com/kedlin/cca/ui/Slide.class */
public abstract class Slide extends LinearLayout {
    public Slide(Context context) {
        super(context);
    }

    /* renamed from: d */
    public static Slide m4111d(Context context, Class<? extends Slide> cls) {
        Slide slide;
        try {
            slide = cls.getConstructor(Context.class).newInstance(context);
        } catch (Throwable th) {
            j91.m1504l(context, "Error inflating slide", th);
            slide = null;
        }
        return slide;
    }

    /* renamed from: a */
    public void mo4099a() {
    }

    /* renamed from: b */
    public final void m4113b() {
        int styleId = getStyleId();
        (styleId == -1 ? getContext().getSystemService("layout_inflater") : LayoutInflater.from(new ContextThemeWrapper(getContext(), styleId))).inflate(getLayoutId(), (ViewGroup) this, true);
        mo4093e();
    }

    /* renamed from: c */
    public final void m4112c(int i) {
        LayoutInflater.from(new ContextThemeWrapper(getContext(), i)).inflate(getLayoutId(), (ViewGroup) this, true);
        mo4093e();
    }

    /* renamed from: e */
    public void mo4093e() {
    }

    public abstract int getLayoutId();

    public int getStyleId() {
        return -1;
    }
}
