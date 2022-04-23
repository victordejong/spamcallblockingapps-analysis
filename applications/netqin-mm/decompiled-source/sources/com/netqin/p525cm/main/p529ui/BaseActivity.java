package com.netqin.p525cm.main.p529ui;

import android.app.Activity;
import android.content.Context;
import android.content.pm.ActivityInfo;
import android.content.res.TypedArray;
import android.os.Build;
import android.os.Bundle;
import androidx.fragment.app.FragmentActivity;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
import p131c.p431l.p432a.p468n.C6852k;
/* renamed from: com.netqin.cm.main.ui.BaseActivity */
/* loaded from: classes2-dex2jar.jar:com/netqin/cm/main/ui/BaseActivity.class */
public class BaseActivity extends FragmentActivity {

    /* renamed from: q */
    public Activity f35625q;

    /* renamed from: r */
    public Context f35626r;

    /* renamed from: s */
    public boolean f35627s = false;

    /* renamed from: a */
    public void m3325a(Runnable runnable) {
        getWindow().getDecorView().post(runnable);
    }

    /* renamed from: a */
    public void m3324a(Runnable runnable, long j) {
        getWindow().getDecorView().postDelayed(runnable, j);
    }

    /* renamed from: k */
    public final void m3323k() {
        C6852k.m19564a(this.f35626r);
    }

    /* renamed from: l */
    public final boolean m3322l() {
        try {
            Field declaredField = Activity.class.getDeclaredField("mActivityInfo");
            declaredField.setAccessible(true);
            ((ActivityInfo) declaredField.get(this)).screenOrientation = -1;
            declaredField.setAccessible(false);
            return true;
        } catch (Exception e) {
            e.printStackTrace();
            return false;
        }
    }

    /* renamed from: m */
    public final boolean m3321m() {
        boolean z;
        Exception e;
        Method method;
        try {
            TypedArray obtainStyledAttributes = obtainStyledAttributes((int[]) Class.forName("com.android.internal.R$styleable").getField("Window").get(null));
            method = ActivityInfo.class.getMethod("isTranslucentOrFloating", TypedArray.class);
            method.setAccessible(true);
            z = ((Boolean) method.invoke(null, obtainStyledAttributes)).booleanValue();
        } catch (Exception e2) {
            e = e2;
            z = false;
        }
        try {
            method.setAccessible(false);
        } catch (Exception e3) {
            e = e3;
            e.printStackTrace();
            return z;
        }
        return z;
    }

    @Override // androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        if (Build.VERSION.SDK_INT == 26 && m3321m()) {
            m3322l();
        }
        super.onCreate(bundle);
        requestWindowFeature(1);
        getWindow().setSoftInputMode(3);
        if (Build.VERSION.SDK_INT != 26 && m3321m()) {
            setRequestedOrientation(1);
        }
        this.f35625q = this;
        this.f35626r = getApplicationContext();
        this.f35627s = true;
    }

    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onDestroy() {
        super.onDestroy();
        this.f35627s = false;
    }

    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onResume() {
        super.onResume();
        m3323k();
    }

    @Override // androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
    }

    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onStart() {
        super.onStart();
    }

    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onStop() {
        super.onStop();
    }
}
