package com.unknownphone.callblocker.tutorial_main;

import android.annotation.SuppressLint;
import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import androidx.core.app.C0456a;
import androidx.fragment.app.AbstractC0670i;
import androidx.fragment.app.AbstractC0692m;
import androidx.fragment.app.ActivityC0664d;
import androidx.fragment.app.Fragment;
import androidx.viewpager.widget.ViewPager;
import com.google.android.material.tabs.TabLayout;
import com.unknownphone.callblocker.activity.MainActivity;
import com.unknownphone.callblocker.custom.AbstractC5281a;
import com.unknownphone.callblocker.custom.C5287g;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/unknownphone/callblocker/tutorial_main/MainTutorialActivity.class */
public class MainTutorialActivity extends ActivityC0664d implements ViewPager.AbstractC1093f {

    /* renamed from: k */
    private List<Short> f22370k;

    /* renamed from: l */
    private List<Short> f22371l;

    /* renamed from: m */
    private SharedPreferences f22372m;

    /* renamed from: n */
    private ViewPager f22373n;

    /* renamed from: o */
    private AbstractC5281a f22374o = new AbstractC5281a() { // from class: com.unknownphone.callblocker.tutorial_main.MainTutorialActivity.1
        @Override // com.unknownphone.callblocker.custom.AbstractC5281a
        /* renamed from: a */
        public void mo892a() {
            if (MainTutorialActivity.this.m899f() || !MainTutorialActivity.this.m905a(MainTutorialActivity.this.f22370k)) {
                MainTutorialActivity.this.f22373n.m18104a(3, true);
            } else {
                MainTutorialActivity.this.m894i();
            }
        }
    };

    /* renamed from: p */
    private AbstractC5281a f22375p = new AbstractC5281a() { // from class: com.unknownphone.callblocker.tutorial_main.MainTutorialActivity.2
        @Override // com.unknownphone.callblocker.custom.AbstractC5281a
        /* renamed from: a */
        public void mo892a() {
            if (MainTutorialActivity.this.m896h() || !MainTutorialActivity.this.m905a(MainTutorialActivity.this.f22371l)) {
                MainTutorialActivity.this.f22373n.m18104a(4, true);
            } else {
                MainTutorialActivity.this.m894i();
            }
        }
    };

    /* renamed from: q */
    private AbstractC5281a f22376q = new AbstractC5281a() { // from class: com.unknownphone.callblocker.tutorial_main.MainTutorialActivity.3
        @Override // com.unknownphone.callblocker.custom.AbstractC5281a
        /* renamed from: a */
        public void mo892a() {
            if (MainTutorialActivity.this.isTaskRoot()) {
                MainTutorialActivity.this.startActivity(new Intent(MainTutorialActivity.this, MainActivity.class));
            }
            MainTutorialActivity.this.finish();
        }
    };

    /* renamed from: com.unknownphone.callblocker.tutorial_main.MainTutorialActivity$a */
    /* loaded from: classes-dex2jar.jar:com/unknownphone/callblocker/tutorial_main/MainTutorialActivity$a.class */
    private class C5376a extends AbstractC0692m {

        /* renamed from: b */
        private ViewPager f22381b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C5376a(AbstractC0670i abstractC0670i, ViewPager viewPager) {
            super(abstractC0670i, 1);
            MainTutorialActivity.this = r5;
            this.f22381b = viewPager;
        }

        @Override // androidx.fragment.app.AbstractC0692m
        /* renamed from: a */
        public Fragment mo869a(int i) {
            Fragment m874a;
            switch (i) {
                case 1:
                    m874a = View$OnClickListenerC5379b.m887a(this.f22381b);
                    break;
                case 2:
                    m874a = View$OnClickListenerC5381c.m883a(this.f22381b, MainTutorialActivity.this.f22374o);
                    break;
                case 3:
                    m874a = View$OnClickListenerC5383d.m879a(this.f22381b, MainTutorialActivity.this.f22375p);
                    break;
                case 4:
                    m874a = View$OnClickListenerC5385e.m874a(MainTutorialActivity.this.f22376q);
                    break;
                default:
                    m874a = View$OnClickListenerC5377a.m891a(this.f22381b);
                    break;
            }
            return m874a;
        }

        @Override // androidx.viewpager.widget.AbstractC1099a
        /* renamed from: b */
        public int mo868b() {
            return 5;
        }
    }

    /* renamed from: a */
    public boolean m905a(List<Short> list) {
        return list.size() >= 2 && list.get(list.size() - 1).shortValue() == 10 && list.get(list.size() - 2).shortValue() == 0;
    }

    /* renamed from: f */
    public boolean m899f() {
        boolean z = true;
        boolean z2 = C0456a.m20898a((Context) this, "android.permission.READ_CONTACTS") == 0;
        ArrayList arrayList = new ArrayList();
        if (!z2) {
            arrayList.add("android.permission.READ_CONTACTS");
        }
        if (arrayList.size() != 0) {
            this.f22372m.edit().putBoolean("asked_for_read_contacts_permission", true).apply();
            C0456a.m20820a(this, (String[]) arrayList.toArray(new String[0]), 332);
        }
        if (arrayList.size() != 0) {
            z = false;
        }
        return z;
    }

    @SuppressLint({"InlinedApi"})
    /* renamed from: h */
    public boolean m896h() {
        List<String> m1071e = C5287g.m1071e(this);
        if (m1071e.size() != 0) {
            C0456a.m20820a(this, (String[]) m1071e.toArray(new String[0]), 238);
        }
        return m1071e.size() == 0;
    }

    /* renamed from: i */
    public void m894i() {
        Intent intent = new Intent();
        intent.setAction("android.settings.APPLICATION_DETAILS_SETTINGS");
        intent.setData(Uri.fromParts("package", getPackageName(), null));
        startActivity(intent);
    }

    @Override // androidx.viewpager.widget.ViewPager.AbstractC1093f
    /* renamed from: a */
    public void mo909a(int i) {
        switch (i) {
            case 2:
                this.f22370k.add(Short.valueOf(!C0456a.m20821a((Activity) this, "android.permission.READ_CONTACTS") ? (short) 0 : (short) 1));
                m899f();
                return;
            case 3:
                this.f22371l.add(Short.valueOf((C0456a.m20821a((Activity) this, "android.permission.CALL_PHONE") || C0456a.m20821a((Activity) this, "android.permission.READ_CALL_LOG") || C0456a.m20821a((Activity) this, "android.permission.READ_PHONE_STATE") || Build.VERSION.SDK_INT < 28 || C0456a.m20821a((Activity) this, "android.permission.ANSWER_PHONE_CALLS")) ? (short) 1 : (short) 0));
                m896h();
                this.f22372m.edit().putBoolean("seen_tutorial", true).apply();
                return;
            default:
                return;
        }
    }

    @Override // androidx.viewpager.widget.ViewPager.AbstractC1093f
    /* renamed from: a */
    public void mo908a(int i, float f, int i2) {
    }

    @Override // androidx.viewpager.widget.ViewPager.AbstractC1093f
    /* renamed from: b */
    public void mo904b(int i) {
    }

    @Override // androidx.fragment.app.ActivityC0664d, androidx.activity.ActivityC0078b, androidx.core.app.ActivityC0469e, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(2131492905);
        this.f22370k = new ArrayList();
        this.f22371l = new ArrayList();
        this.f22373n = (ViewPager) findViewById(2131296746);
        ((TabLayout) findViewById(2131296689)).m2459a(this.f22373n, true);
        this.f22373n.setAdapter(new C5376a(m19874m(), this.f22373n));
        this.f22373n.m18093a(this);
        this.f22372m = getSharedPreferences("com.unknownphone.callblocker.PREFS", 0);
    }

    @Override // androidx.fragment.app.ActivityC0664d, android.app.Activity, androidx.core.app.C0456a.AbstractC0458a
    public void onRequestPermissionsResult(int i, String[] strArr, int[] iArr) {
        boolean z = false;
        for (int i2 : iArr) {
            if (i2 != 0) {
                z = true;
            }
        }
        if (i == 332) {
            this.f22370k.add(Short.valueOf(!C0456a.m20821a((Activity) this, "android.permission.READ_CONTACTS") ? (short) 10 : (short) 11));
            if (z && m905a(this.f22370k)) {
                return;
            }
            this.f22373n.m18104a(3, true);
        } else if (i != 238) {
            super.onRequestPermissionsResult(i, strArr, iArr);
        } else {
            this.f22371l.add(Short.valueOf((C0456a.m20821a((Activity) this, "android.permission.CALL_PHONE") || C0456a.m20821a((Activity) this, "android.permission.READ_CALL_LOG") || C0456a.m20821a((Activity) this, "android.permission.READ_PHONE_STATE") || Build.VERSION.SDK_INT < 28 || C0456a.m20821a((Activity) this, "android.permission.ANSWER_PHONE_CALLS")) ? (short) 11 : (short) 10));
            if (z && m905a(this.f22371l)) {
                return;
            }
            this.f22373n.m18104a(4, true);
        }
    }
}
