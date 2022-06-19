package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.util.DisplayMetrics;
import android.view.Display;
import android.view.WindowManager;
import com.google.android.gms.ads.internal.util.zzd;
import com.google.android.gms.ads.internal.util.zzj;
import com.google.android.gms.ads.internal.zzr;
import java.util.Map;
/* renamed from: com.google.android.gms.internal.ads.px */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/px.class */
public final class C12839px extends C12843qa implements AbstractC12607hi<adt> {

    /* renamed from: a */
    private final adt f49699a;

    /* renamed from: b */
    private final Context f49700b;

    /* renamed from: c */
    private final WindowManager f49701c;

    /* renamed from: d */
    private final C12166ab f49702d;

    /* renamed from: e */
    private DisplayMetrics f49703e;

    /* renamed from: f */
    private float f49704f;

    /* renamed from: i */
    private int f49707i;

    /* renamed from: g */
    private int f49705g = -1;

    /* renamed from: h */
    private int f49706h = -1;

    /* renamed from: j */
    private int f49708j = -1;

    /* renamed from: k */
    private int f49709k = -1;

    /* renamed from: l */
    private int f49710l = -1;

    /* renamed from: m */
    private int f49711m = -1;

    public C12839px(adt adtVar, Context context, C12166ab c12166ab) {
        super(adtVar);
        this.f49699a = adtVar;
        this.f49700b = context;
        this.f49702d = c12166ab;
        this.f49701c = (WindowManager) context.getSystemService("window");
    }

    /* renamed from: a */
    public final void m14251a(int i, int i2) {
        int i3 = 0;
        if (this.f49700b instanceof Activity) {
            zzr.zzkv();
            i3 = zzj.zzh((Activity) this.f49700b)[0];
        }
        if (this.f49699a.mo13724z() == null || !this.f49699a.mo13724z().m18772d()) {
            int width = this.f49699a.getWidth();
            int height = this.f49699a.getHeight();
            int i4 = width;
            int i5 = height;
            if (((Boolean) ekb.m14831e().m18571a(C12187aq.f42621K)).booleanValue()) {
                int i6 = width;
                if (width == 0) {
                    i6 = width;
                    if (this.f49699a.mo13724z() != null) {
                        i6 = this.f49699a.mo13724z().f40148c;
                    }
                }
                i4 = i6;
                i5 = height;
                if (height == 0) {
                    i4 = i6;
                    i5 = height;
                    if (this.f49699a.mo13724z() != null) {
                        i5 = this.f49699a.mo13724z().f40147b;
                        i4 = i6;
                    }
                }
            }
            this.f49710l = ekb.m14835a().m13936b(this.f49700b, i4);
            this.f49711m = ekb.m14835a().m13936b(this.f49700b, i5);
        }
        m14246a(i, i2 - i3, this.f49710l, this.f49711m);
        this.f49699a.mo13808B().mo18784b(i, i2);
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12607hi
    /* renamed from: a */
    public final /* synthetic */ void mo14250a(adt adtVar, Map map) {
        this.f49703e = new DisplayMetrics();
        Display defaultDisplay = this.f49701c.getDefaultDisplay();
        defaultDisplay.getMetrics(this.f49703e);
        this.f49704f = this.f49703e.density;
        this.f49707i = defaultDisplay.getRotation();
        ekb.m14835a();
        DisplayMetrics displayMetrics = this.f49703e;
        this.f49705g = C13077yq.m13935b(displayMetrics, displayMetrics.widthPixels);
        ekb.m14835a();
        DisplayMetrics displayMetrics2 = this.f49703e;
        this.f49706h = C13077yq.m13935b(displayMetrics2, displayMetrics2.heightPixels);
        Activity mo13751d = this.f49699a.mo13751d();
        if (mo13751d == null || mo13751d.getWindow() == null) {
            this.f49708j = this.f49705g;
            this.f49709k = this.f49706h;
        } else {
            zzr.zzkv();
            int[] zzf = zzj.zzf(mo13751d);
            ekb.m14835a();
            this.f49708j = C13077yq.m13935b(this.f49703e, zzf[0]);
            ekb.m14835a();
            this.f49709k = C13077yq.m13935b(this.f49703e, zzf[1]);
        }
        if (this.f49699a.mo13724z().m18772d()) {
            this.f49710l = this.f49705g;
            this.f49711m = this.f49706h;
        } else {
            this.f49699a.measure(0, 0);
        }
        m14245a(this.f49705g, this.f49706h, this.f49708j, this.f49709k, this.f49704f, this.f49707i);
        C12840py c12840py = new C12840py();
        C12166ab c12166ab = this.f49702d;
        Intent intent = new Intent("android.intent.action.DIAL");
        intent.setData(Uri.parse("tel:"));
        c12840py.f49713b = c12166ab.m18925a(intent);
        C12166ab c12166ab2 = this.f49702d;
        Intent intent2 = new Intent("android.intent.action.VIEW");
        intent2.setData(Uri.parse("sms:"));
        c12840py.f49712a = c12166ab2.m18925a(intent2);
        c12840py.f49714c = this.f49702d.m18924b();
        c12840py.f49715d = this.f49702d.m18926a();
        c12840py.f49716e = true;
        this.f49699a.mo13769a("onDeviceFeaturesReceived", new C12838pw(c12840py).m14252a());
        int[] iArr = new int[2];
        this.f49699a.getLocationOnScreen(iArr);
        m14251a(ekb.m14835a().m13936b(this.f49700b, iArr[0]), ekb.m14835a().m13936b(this.f49700b, iArr[1]));
        if (zzd.isLoggable(2)) {
            zzd.zzey("Dispatching Ready Event.");
        }
        m14243b(this.f49699a.mo13739k().zzbrz);
    }
}
