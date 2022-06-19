package com.cocosw.bottomsheet;

import android.annotation.TargetApi;
import android.app.Activity;
import android.app.Dialog;
import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.util.DisplayMetrics;
import android.view.Window;
import android.view.WindowManager;
import java.lang.reflect.Method;
@TargetApi(19)
/* renamed from: com.cocosw.bottomsheet.l */
/* loaded from: classes-dex2jar.jar:com/cocosw/bottomsheet/l.class */
public class C1608l {

    /* renamed from: a */
    public final Dialog f5974a;

    /* renamed from: b */
    public boolean f5975b;

    /* renamed from: c */
    public int f5976c;

    /* renamed from: d */
    public boolean f5977d;

    /* renamed from: e */
    public String f5978e;

    /* renamed from: f */
    public float f5979f;

    /* JADX WARN: Finally extract failed */
    public C1608l(Dialog dialog, Context context) {
        this.f5974a = dialog;
        WindowManager windowManager = (WindowManager) context.getSystemService("window");
        int i = 0;
        this.f5977d = context.getResources().getConfiguration().orientation == 1;
        try {
            Method declaredMethod = Class.forName("android.os.SystemProperties").getDeclaredMethod("get", String.class);
            declaredMethod.setAccessible(true);
            this.f5978e = (String) declaredMethod.invoke(null, "qemu.hw.mainkeys");
        } catch (Throwable th) {
            this.f5978e = null;
        }
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(new int[]{16843760});
        try {
            this.f5975b = obtainStyledAttributes.getBoolean(0, false);
            obtainStyledAttributes.recycle();
            if ((((Activity) context).getWindow().getAttributes().flags & 134217728) != 0) {
                this.f5975b = true;
            }
            DisplayMetrics displayMetrics = new DisplayMetrics();
            windowManager.getDefaultDisplay().getRealMetrics(displayMetrics);
            float f = displayMetrics.widthPixels;
            float f2 = displayMetrics.density;
            this.f5979f = Math.min(f / f2, displayMetrics.heightPixels / f2);
            if (this.f5975b) {
                Window window = this.f5974a.getWindow();
                WindowManager.LayoutParams attributes = window.getAttributes();
                attributes.flags |= 67108864;
                window.setAttributes(attributes);
                window.setFlags(134217728, 134217728);
            }
            Resources resources = context.getResources();
            int identifier = resources.getIdentifier("status_bar_height", "dimen", "android");
            this.f5976c = identifier > 0 ? resources.getDimensionPixelSize(identifier) : i;
        } catch (Throwable th2) {
            obtainStyledAttributes.recycle();
            throw th2;
        }
    }
}
