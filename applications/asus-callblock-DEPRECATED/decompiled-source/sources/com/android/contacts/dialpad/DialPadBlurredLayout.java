package com.android.contacts.dialpad;

import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.renderscript.Allocation;
import android.renderscript.Element;
import android.renderscript.RenderScript;
import android.renderscript.ScriptIntrinsicBlur;
import android.util.AttributeSet;
import android.util.Log;
import android.view.View;
import android.widget.LinearLayout;
import com.asus.contacts.c;
/* loaded from: classes-dex2jar.jar:com/android/contacts/dialpad/DialPadBlurredLayout.class */
public class DialPadBlurredLayout extends LinearLayout {

    /* renamed from: a  reason: collision with root package name */
    private static RenderScript f896a;

    /* renamed from: b  reason: collision with root package name */
    private static ScriptIntrinsicBlur f897b;
    private int c;
    private int d;
    private View e;
    private int f;
    private int g;
    private boolean h;
    private Bitmap i;
    private Bitmap j;
    private Canvas k;
    private Allocation l;
    private Allocation m;

    public DialPadBlurredLayout(Context context) {
        this(context, null);
    }

    public DialPadBlurredLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        Resources resources = getResources();
        int integer = resources.getInteger(2131361813);
        int integer2 = resources.getInteger(2131361815);
        int color = resources.getColor(2131034341);
        if (f896a == null || f897b == null) {
            Log.d("DialPadBlurredLayout", "still need to initial RenderScript...");
            a(context);
        }
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, c.a.f2602b);
        setBlurRadius(obtainStyledAttributes.getInt(0, integer));
        setDownSampleFactor(obtainStyledAttributes.getInt(1, integer2));
        setOverlayColor(obtainStyledAttributes.getColor(2, color));
        obtainStyledAttributes.recycle();
    }

    public static void a(Context context) {
        Log.d("DialPadBlurredLayout", "[initializeRenderScript]");
        RenderScript create = RenderScript.create(context);
        f896a = create;
        f897b = ScriptIntrinsicBlur.create(create, Element.U8_4(create));
    }

    /* JADX WARN: Removed duplicated region for block: B:23:0x008d  */
    /* JADX WARN: Removed duplicated region for block: B:37:? A[RETURN, SYNTHETIC] */
    @Override // android.view.ViewGroup, android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    protected void dispatchDraw(android.graphics.Canvas r7) {
        /*
            Method dump skipped, instructions count: 432
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.contacts.dialpad.DialPadBlurredLayout.dispatchDraw(android.graphics.Canvas):void");
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        if (f897b != null) {
            f897b.destroy();
            f897b = null;
        }
        if (f896a != null) {
            f896a.destroy();
            f896a = null;
        }
    }

    public void setBlurRadius(int i) {
        f897b.setRadius(i);
    }

    public void setBlurredView(View view) {
        this.e = view;
    }

    public void setDownSampleFactor(int i) {
        if (i <= 0) {
            throw new IllegalArgumentException("Downsample factor must be greater than 0.");
        } else if (this.c != i) {
            this.c = i;
            this.h = true;
        }
    }

    public void setOverlayColor(int i) {
        this.d = i;
    }
}
