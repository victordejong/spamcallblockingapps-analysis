package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.webkit.WebChromeClient;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import com.google.android.gms.ads.internal.overlay.zze;
import com.google.android.gms.ads.internal.zzb;
import com.google.android.gms.ads.internal.zzk;
import com.google.android.gms.common.util.Predicate;
import com.google.android.gms.common.util.VisibleForTesting;
import com.google.android.gms.dynamic.IObjectWrapper;
@VisibleForTesting
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzbgj.class */
public interface zzbgj extends zzk, zzajr, zzaks, zzbdu, zzbfy, zzbhi, zzbhl, zzbhp, zzbhq, zzbhs, zzbht, zzqu {
    /* renamed from: A */
    void mo15608A();

    /* renamed from: B */
    void mo15607B();

    /* renamed from: C */
    void mo15606C();

    /* renamed from: D */
    WebViewClient mo15605D();

    /* renamed from: E */
    boolean mo15604E();

    /* renamed from: F */
    void mo15603F();

    /* renamed from: G */
    void mo15456G();

    /* renamed from: H */
    boolean mo15602H();

    /* renamed from: I */
    zzsc mo15601I();

    /* renamed from: J */
    zzsu mo15600J();

    /* renamed from: K */
    Context mo15599K();

    /* renamed from: L */
    boolean mo15598L();

    /* renamed from: N */
    boolean mo15596N();

    /* renamed from: O */
    zze mo15595O();

    /* renamed from: P */
    boolean mo15594P();

    /* renamed from: a */
    zzbbx mo15516a();

    /* renamed from: a */
    void mo15593a(int i);

    /* renamed from: a */
    void mo15592a(ViewGroup viewGroup, Activity activity, String str, String str2);

    /* renamed from: a */
    void mo15591a(zze zzeVar);

    /* renamed from: a */
    void mo15590a(IObjectWrapper iObjectWrapper);

    /* renamed from: a */
    void mo15589a(zzadn zzadnVar);

    /* renamed from: a */
    void mo15588a(zzads zzadsVar);

    /* renamed from: a */
    void mo15586a(zzbhd zzbhdVar);

    /* renamed from: a */
    void mo15585a(zzbhy zzbhyVar);

    /* renamed from: a */
    void mo15584a(zzdnv zzdnvVar, zzdnw zzdnwVar);

    /* renamed from: a */
    void mo15583a(zzsc zzscVar);

    /* renamed from: a */
    void mo15581a(String str, Predicate<zzahq<? super zzbgj>> predicate);

    /* renamed from: a */
    void mo15580a(String str, zzahq<? super zzbgj> zzahqVar);

    /* renamed from: a */
    void mo15579a(String str, zzbfl zzbflVar);

    /* renamed from: a */
    void mo15578a(String str, String str2, String str3);

    /* renamed from: b */
    Activity mo15528b();

    /* renamed from: b */
    void mo15573b(Context context);

    /* renamed from: b */
    void mo15572b(zze zzeVar);

    /* renamed from: b */
    void mo15570b(String str, zzahq<? super zzbgj> zzahqVar);

    /* renamed from: b */
    void mo15568b(boolean z);

    /* renamed from: b */
    boolean mo15567b(boolean z, int i);

    /* renamed from: c */
    zzbhy mo15517c();

    /* renamed from: d */
    zzabp mo15566d();

    /* renamed from: d */
    void mo15564d(boolean z);

    void destroy();

    /* renamed from: e */
    void mo15563e(boolean z);

    /* renamed from: e */
    boolean mo15526e();

    /* renamed from: f */
    zzb mo15562f();

    /* renamed from: f */
    void mo15561f(boolean z);

    /* renamed from: g */
    void mo15559g(boolean z);

    /* renamed from: g */
    boolean mo15560g();

    @Override // com.google.android.gms.internal.ads.zzbdu, com.google.android.gms.internal.ads.zzbhi
    Context getContext();

    int getHeight();

    ViewGroup.LayoutParams getLayoutParams();

    void getLocationOnScreen(int[] iArr);

    ViewParent getParent();

    View getView();

    WebView getWebView();

    int getWidth();

    /* renamed from: h */
    zzeg mo15518h();

    /* renamed from: i */
    zzbhd mo15558i();

    /* renamed from: k */
    void mo15556k();

    /* renamed from: l */
    zze mo15555l();

    void loadData(String str, String str2, String str3);

    void loadDataWithBaseURL(String str, String str2, String str3, String str4, String str5);

    void loadUrl(String str);

    void measure(int i, int i2);

    void onPause();

    void onResume();

    /* renamed from: r */
    void mo15551r();

    @Override // com.google.android.gms.internal.ads.zzbdu
    void setBackgroundColor(int i);

    void setOnClickListener(View.OnClickListener onClickListener);

    void setOnTouchListener(View.OnTouchListener onTouchListener);

    void setRequestedOrientation(int i);

    void setWebChromeClient(WebChromeClient webChromeClient);

    void setWebViewClient(WebViewClient webViewClient);

    /* renamed from: t */
    String mo15549t();

    /* renamed from: v */
    zzads mo15547v();

    /* renamed from: w */
    IObjectWrapper mo15546w();

    /* renamed from: y */
    void mo15544y();

    /* renamed from: z */
    zzbhv mo15543z();
}
