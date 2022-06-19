package com.google.android.gms.internal.ads;

import android.content.Context;
import android.view.ViewGroup;
import com.google.android.gms.common.internal.C12045o;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/aaq.class */
public final class aaq {

    /* renamed from: a */
    final Context f39716a;

    /* renamed from: b */
    final abb f39717b;

    /* renamed from: c */
    final ViewGroup f39718c;

    /* renamed from: d */
    zzbcb f39719d;

    private aaq(Context context, ViewGroup viewGroup, abb abbVar, zzbcb zzbcbVar) {
        this.f39716a = context.getApplicationContext() != null ? context.getApplicationContext() : context;
        this.f39718c = viewGroup;
        this.f39717b = abbVar;
        this.f39719d = null;
    }

    public aaq(Context context, ViewGroup viewGroup, adt adtVar) {
        this(context, viewGroup, adtVar, null);
    }

    /* renamed from: a */
    public final zzbcb m18948a() {
        C12045o.m19155b("getAdVideoUnderlay must be called from the UI thread.");
        return this.f39719d;
    }
}
