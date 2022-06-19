package com.callerid.block.p038f;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.ViewGroup;
import android.view.WindowManager;
/* renamed from: com.callerid.block.f.b */
/* loaded from: classes-dex2jar.jar:com/callerid/block/f/b.class */
public abstract class AbstractC0952b {

    /* renamed from: a */
    public static ViewGroup f4315a;

    /* renamed from: b */
    protected static final Object f4316b = new Object();

    /* renamed from: a */
    protected static ViewGroup m10458a(Context context, int i, WindowManager.LayoutParams layoutParams) {
        try {
            WindowManager windowManager = (WindowManager) context.getApplicationContext().getSystemService("window");
            ViewGroup viewGroup = f4315a;
            if (viewGroup != null && windowManager != null) {
                try {
                    windowManager.removeView(viewGroup);
                    f4315a = null;
                } catch (Exception e) {
                    e.printStackTrace();
                }
            }
            LayoutInflater layoutInflater = (LayoutInflater) context.getSystemService("layout_inflater");
            if (layoutInflater == null) {
                return null;
            }
            ViewGroup viewGroup2 = (ViewGroup) layoutInflater.inflate(i, (ViewGroup) null);
            f4315a = viewGroup2;
            if (windowManager == null) {
                return null;
            }
            windowManager.addView(viewGroup2, layoutParams);
            return viewGroup2;
        } catch (Exception e2) {
            e2.printStackTrace();
            return null;
        }
    }
}
