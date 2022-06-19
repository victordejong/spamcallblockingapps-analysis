package com.google.android.gms.measurement.p274a;

import android.app.Activity;
import android.content.Context;
import android.os.Bundle;
import androidx.annotation.RecentlyNonNull;
import androidx.annotation.RecentlyNullable;
import com.google.android.gms.internal.measurement.C7415j0;
import com.google.android.gms.measurement.internal.AbstractC7881u5;
import java.util.List;
import java.util.Map;
/* renamed from: com.google.android.gms.measurement.a.a */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/measurement/a/a.class */
public class C7642a {

    /* renamed from: a */
    private final C7415j0 f34962a;

    /* renamed from: com.google.android.gms.measurement.a.a$a */
    /* loaded from: classes2-dex2jar.jar:com/google/android/gms/measurement/a/a$a.class */
    public interface AbstractC7643a extends AbstractC7881u5 {
    }

    public C7642a(C7415j0 c7415j0) {
        this.f34962a = c7415j0;
    }

    @RecentlyNonNull
    /* renamed from: k */
    public static C7642a m6613k(@RecentlyNonNull Context context, @RecentlyNonNull String str, @RecentlyNonNull String str2, String str3, @RecentlyNonNull Bundle bundle) {
        return C7415j0.m7260t(context, str, str2, str3, bundle).m7259u();
    }

    /* renamed from: a */
    public void m6623a(@RecentlyNonNull String str) {
        this.f34962a.m7285F(str);
    }

    /* renamed from: b */
    public void m6622b(@RecentlyNonNull String str, String str2, Bundle bundle) {
        this.f34962a.m7289B(str, str2, bundle);
    }

    /* renamed from: c */
    public void m6621c(@RecentlyNonNull String str) {
        this.f34962a.m7284G(str);
    }

    /* renamed from: d */
    public long m6620d() {
        return this.f34962a.m7281J();
    }

    @RecentlyNullable
    /* renamed from: e */
    public String m6619e() {
        return this.f34962a.m7274f();
    }

    @RecentlyNullable
    /* renamed from: f */
    public String m6618f() {
        return this.f34962a.m7282I();
    }

    @RecentlyNonNull
    /* renamed from: g */
    public List<Bundle> m6617g(String str, String str2) {
        return this.f34962a.m7288C(str, str2);
    }

    @RecentlyNullable
    /* renamed from: h */
    public String m6616h() {
        return this.f34962a.m7279a();
    }

    @RecentlyNullable
    /* renamed from: i */
    public String m6615i() {
        return this.f34962a.m7280K();
    }

    @RecentlyNullable
    /* renamed from: j */
    public String m6614j() {
        return this.f34962a.m7283H();
    }

    /* renamed from: l */
    public int m6612l(@RecentlyNonNull String str) {
        return this.f34962a.m7275e(str);
    }

    @RecentlyNonNull
    /* renamed from: m */
    public Map<String, Object> m6611m(String str, String str2, boolean z) {
        return this.f34962a.m7278b(str, str2, z);
    }

    /* renamed from: n */
    public void m6610n(@RecentlyNonNull String str, @RecentlyNonNull String str2, @RecentlyNonNull Bundle bundle) {
        this.f34962a.m7255y(str, str2, bundle);
    }

    @RecentlyNullable
    /* renamed from: o */
    public void m6609o(@RecentlyNonNull Bundle bundle) {
        this.f34962a.m7276d(bundle, false);
    }

    @RecentlyNullable
    /* renamed from: p */
    public Bundle m6608p(@RecentlyNonNull Bundle bundle) {
        return this.f34962a.m7276d(bundle, true);
    }

    /* renamed from: q */
    public void m6607q(@RecentlyNonNull AbstractC7643a abstractC7643a) {
        this.f34962a.m7257w(abstractC7643a);
    }

    /* renamed from: r */
    public void m6606r(@RecentlyNonNull Bundle bundle) {
        this.f34962a.m7290A(bundle);
    }

    /* renamed from: s */
    public void m6605s(@RecentlyNonNull Bundle bundle) {
        this.f34962a.m7286E(bundle);
    }

    /* renamed from: t */
    public void m6604t(@RecentlyNonNull Activity activity, String str, String str2) {
        this.f34962a.m7287D(activity, str, str2);
    }

    /* renamed from: u */
    public void m6603u(@RecentlyNonNull String str, @RecentlyNonNull String str2, @RecentlyNonNull Object obj) {
        this.f34962a.m7254z(str, str2, obj, true);
    }

    /* renamed from: v */
    public final void m6602v(boolean z) {
        this.f34962a.m7273g(z);
    }
}
