package com.google.android.gms.internal.ads;

import android.os.RemoteException;
import ba.C0748b;
import com.google.android.gms.measurement.internal.zzfu;
import com.google.firebase.datatransport.TransportRegistrar;
import org.xmlpull.v1.XmlPullParser;
import p068d2.C2267f4;
import p068d2.C2408t;
import p081e6.C2603t;
import p149k8.C3389e;
import p180n6.C3720b;
import p218r2.AbstractC4189g;
import p237t.C4350g;
import p305z4.AbstractC5080d;
import p305z4.AbstractC5082f;
/* renamed from: com.google.android.gms.internal.ads.a */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/a.class */
public final /* synthetic */ class C1676a implements AbstractC5082f {

    /* renamed from: a */
    public static final /* synthetic */ C1676a f6224a = new C1676a();

    /* renamed from: a */
    public static int[] m4795a() {
        return C4350g.m1020d(2);
    }

    /* renamed from: c */
    public static float m4794c() {
        return C2408t.m3591d().m3721m().m3779f();
    }

    /* renamed from: d */
    public static int m4793d(String str, int i, int i2) {
        return (str.hashCode() + i) * i2;
    }

    /* renamed from: e */
    public static RemoteException m4792e(String str, Throwable th) {
        zzciz.zzh(str, th);
        return new RemoteException();
    }

    /* renamed from: f */
    public static C2267f4 m4791f() {
        C2408t.m3591d().m3732b().m3620d();
        return new C2267f4();
    }

    /* renamed from: g */
    public static Object m4790g(Long l, C2603t c2603t, String str, C3720b c3720b) {
        c2603t.m3393d(str, l.longValue());
        return c3720b.m1844b();
    }

    /* renamed from: h */
    public static String m4789h(String str, String str2) {
        return str + str2;
    }

    /* renamed from: i */
    public static String m4788i(StringBuilder sb, String str, String str2, String str3, String str4) {
        sb.append(str);
        sb.append(str2);
        sb.append(str3);
        sb.append(str4);
        return sb.toString();
    }

    /* renamed from: j */
    public static String m4787j(XmlPullParser xmlPullParser, StringBuilder sb, String str) {
        sb.append(xmlPullParser.getPositionDescription());
        sb.append(str);
        return sb.toString();
    }

    /* renamed from: k */
    public static void m4786k(zzfu zzfuVar, String str) {
        zzfuVar.zzau().zze().zza(str);
    }

    /* renamed from: l */
    public static void m4785l(String str, int i, C0748b c0748b) {
        c0748b.m7404g(new C3389e(str, i));
    }

    @Override // p305z4.AbstractC5082f
    /* renamed from: b */
    public Object mo49b(AbstractC5080d abstractC5080d) {
        AbstractC4189g lambda$getComponents$0;
        lambda$getComponents$0 = TransportRegistrar.lambda$getComponents$0(abstractC5080d);
        return lambda$getComponents$0;
    }
}
