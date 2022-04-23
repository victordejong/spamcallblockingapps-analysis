package com.google.android.gms.internal.ads;

import android.content.Context;
import android.view.ViewGroup;
import com.google.android.gms.common.internal.o;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/aaq.class */
public final class aaq {

    /* renamed from: a  reason: collision with root package name */
    final Context f23013a;

    /* renamed from: b  reason: collision with root package name */
    final abb f23014b;

    /* renamed from: c  reason: collision with root package name */
    final ViewGroup f23015c;

    /* renamed from: d  reason: collision with root package name */
    zzbcb f23016d;

    private aaq(Context context, ViewGroup viewGroup, abb abbVar, zzbcb zzbcbVar) {
        this.f23013a = context.getApplicationContext() != null ? context.getApplicationContext() : context;
        this.f23015c = viewGroup;
        this.f23014b = abbVar;
        this.f23016d = null;
    }

    public aaq(Context context, ViewGroup viewGroup, adt adtVar) {
        this(context, viewGroup, adtVar, null);
    }

    public final zzbcb a() {
        o.b("getAdVideoUnderlay must be called from the UI thread.");
        return this.f23016d;
    }
}
