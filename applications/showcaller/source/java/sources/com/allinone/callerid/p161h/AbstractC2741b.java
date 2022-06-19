package com.allinone.callerid.p161h;

import android.content.Context;
import android.os.Build;
import android.view.ContextThemeWrapper;
import android.view.LayoutInflater;
import android.view.ViewGroup;
import android.view.WindowManager;
import com.allinone.callerid.util.C3718c0;
import com.allinone.callerid.util.C3724d1;
import com.allinone.callerid.util.C3767h1;
/* renamed from: com.allinone.callerid.h.b */
/* loaded from: classes-dex2jar.jar:com/allinone/callerid/h/b.class */
public abstract class AbstractC2741b {

    /* renamed from: a */
    public boolean f9405a;

    /* renamed from: b */
    protected final Object f9406b = new Object();

    /* renamed from: a */
    public ViewGroup m26723a(Context context, int i) {
        try {
            ViewGroup viewGroup = (ViewGroup) ((LayoutInflater) new ContextThemeWrapper(context, C3724d1.m24419a()).getSystemService("layout_inflater")).inflate(i, (ViewGroup) null);
            if (C3767h1.m24250f0(context).booleanValue() && Build.VERSION.SDK_INT >= 17) {
                viewGroup.setLayoutDirection(1);
            }
            if (C2742c.m26719A0().f9421N) {
                C2742c.m26719A0().f9421N = false;
                return null;
            }
            this.f9405a = true;
            return viewGroup;
        } catch (Exception e) {
            if (C3718c0.f11914a) {
                C3718c0.m24436a("tony", "Exception:" + e.getLocalizedMessage());
            }
            e.printStackTrace();
            return null;
        }
    }

    /* renamed from: b */
    public ViewGroup m26722b(Context context, int i, WindowManager.LayoutParams layoutParams) {
        try {
            WindowManager windowManager = (WindowManager) context.getApplicationContext().getSystemService("window");
            ViewGroup viewGroup = (ViewGroup) ((LayoutInflater) new ContextThemeWrapper(context, C3724d1.m24419a()).getSystemService("layout_inflater")).inflate(i, (ViewGroup) null);
            if (C3767h1.m24250f0(context).booleanValue() && Build.VERSION.SDK_INT >= 17) {
                viewGroup.setLayoutDirection(1);
            }
            windowManager.addView(viewGroup, layoutParams);
            this.f9405a = true;
            return viewGroup;
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }

    /* renamed from: c */
    public void m26721c(Context context, ViewGroup viewGroup, WindowManager.LayoutParams layoutParams) {
        try {
            ((WindowManager) context.getApplicationContext().getSystemService("window")).addView(viewGroup, layoutParams);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
