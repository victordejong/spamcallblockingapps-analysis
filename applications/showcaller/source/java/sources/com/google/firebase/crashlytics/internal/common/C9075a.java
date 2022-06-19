package com.google.firebase.crashlytics.internal.common;

import android.content.Context;
import android.content.pm.PackageInfo;
import com.google.firebase.crashlytics.p293d.p303m.AbstractC9074b;
/* renamed from: com.google.firebase.crashlytics.internal.common.a */
/* loaded from: classes2-dex2jar.jar:com/google/firebase/crashlytics/internal/common/a.class */
public class C9075a {

    /* renamed from: a */
    public final String f39267a;

    /* renamed from: b */
    public final String f39268b;

    /* renamed from: c */
    public final String f39269c;

    /* renamed from: d */
    public final String f39270d;

    /* renamed from: e */
    public final String f39271e;

    /* renamed from: f */
    public final String f39272f;

    /* renamed from: g */
    public final AbstractC9074b f39273g;

    public C9075a(String str, String str2, String str3, String str4, String str5, String str6, AbstractC9074b abstractC9074b) {
        this.f39267a = str;
        this.f39268b = str2;
        this.f39269c = str3;
        this.f39270d = str4;
        this.f39271e = str5;
        this.f39272f = str6;
        this.f39273g = abstractC9074b;
    }

    /* renamed from: a */
    public static C9075a m1948a(Context context, C9125t c9125t, String str, String str2, AbstractC9074b abstractC9074b) {
        String packageName = context.getPackageName();
        String m1778e = c9125t.m1778e();
        PackageInfo packageInfo = context.getPackageManager().getPackageInfo(packageName, 0);
        String num = Integer.toString(packageInfo.versionCode);
        String str3 = packageInfo.versionName;
        String str4 = str3;
        if (str3 == null) {
            str4 = "0.0";
        }
        return new C9075a(str, str2, m1778e, packageName, num, str4, abstractC9074b);
    }
}
