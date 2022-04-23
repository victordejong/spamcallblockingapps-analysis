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
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/px.class */
public final class px extends qa implements hi<adt> {

    /* renamed from: a  reason: collision with root package name */
    private final adt f28308a;

    /* renamed from: b  reason: collision with root package name */
    private final Context f28309b;

    /* renamed from: c  reason: collision with root package name */
    private final WindowManager f28310c;

    /* renamed from: d  reason: collision with root package name */
    private final ab f28311d;
    private DisplayMetrics e;
    private float f;
    private int i;
    private int g = -1;
    private int h = -1;
    private int j = -1;
    private int k = -1;
    private int l = -1;
    private int m = -1;

    public px(adt adtVar, Context context, ab abVar) {
        super(adtVar);
        this.f28308a = adtVar;
        this.f28309b = context;
        this.f28311d = abVar;
        this.f28310c = (WindowManager) context.getSystemService("window");
    }

    public final void a(int i, int i2) {
        int i3 = 0;
        if (this.f28309b instanceof Activity) {
            zzr.zzkv();
            i3 = zzj.zzh((Activity) this.f28309b)[0];
        }
        if (this.f28308a.z() == null || !this.f28308a.z().d()) {
            int width = this.f28308a.getWidth();
            int height = this.f28308a.getHeight();
            int i4 = width;
            int i5 = height;
            if (((Boolean) ekb.e().a(aq.K)).booleanValue()) {
                int i6 = width;
                if (width == 0) {
                    i6 = width;
                    if (this.f28308a.z() != null) {
                        i6 = this.f28308a.z().f23218c;
                    }
                }
                i4 = i6;
                i5 = height;
                if (height == 0) {
                    i4 = i6;
                    i5 = height;
                    if (this.f28308a.z() != null) {
                        i5 = this.f28308a.z().f23217b;
                        i4 = i6;
                    }
                }
            }
            this.l = ekb.a().b(this.f28309b, i4);
            this.m = ekb.a().b(this.f28309b, i5);
        }
        a(i, i2 - i3, this.l, this.m);
        this.f28308a.B().b(i, i2);
    }

    @Override // com.google.android.gms.internal.ads.hi
    public final /* synthetic */ void a(adt adtVar, Map map) {
        this.e = new DisplayMetrics();
        Display defaultDisplay = this.f28310c.getDefaultDisplay();
        defaultDisplay.getMetrics(this.e);
        this.f = this.e.density;
        this.i = defaultDisplay.getRotation();
        ekb.a();
        DisplayMetrics displayMetrics = this.e;
        this.g = yq.b(displayMetrics, displayMetrics.widthPixels);
        ekb.a();
        DisplayMetrics displayMetrics2 = this.e;
        this.h = yq.b(displayMetrics2, displayMetrics2.heightPixels);
        Activity d2 = this.f28308a.d();
        if (d2 == null || d2.getWindow() == null) {
            this.j = this.g;
            this.k = this.h;
        } else {
            zzr.zzkv();
            int[] zzf = zzj.zzf(d2);
            ekb.a();
            this.j = yq.b(this.e, zzf[0]);
            ekb.a();
            this.k = yq.b(this.e, zzf[1]);
        }
        if (this.f28308a.z().d()) {
            this.l = this.g;
            this.m = this.h;
        } else {
            this.f28308a.measure(0, 0);
        }
        a(this.g, this.h, this.j, this.k, this.f, this.i);
        py pyVar = new py();
        ab abVar = this.f28311d;
        Intent intent = new Intent("android.intent.action.DIAL");
        intent.setData(Uri.parse("tel:"));
        pyVar.f28313b = abVar.a(intent);
        ab abVar2 = this.f28311d;
        Intent intent2 = new Intent("android.intent.action.VIEW");
        intent2.setData(Uri.parse("sms:"));
        pyVar.f28312a = abVar2.a(intent2);
        pyVar.f28314c = this.f28311d.b();
        pyVar.f28315d = this.f28311d.a();
        pyVar.e = true;
        this.f28308a.a("onDeviceFeaturesReceived", new pw(pyVar).a());
        int[] iArr = new int[2];
        this.f28308a.getLocationOnScreen(iArr);
        a(ekb.a().b(this.f28309b, iArr[0]), ekb.a().b(this.f28309b, iArr[1]));
        if (zzd.isLoggable(2)) {
            zzd.zzey("Dispatching Ready Event.");
        }
        b(this.f28308a.k().zzbrz);
    }
}
