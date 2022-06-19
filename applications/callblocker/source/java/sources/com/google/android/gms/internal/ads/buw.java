package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.Bundle;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import java.util.ArrayList;
import java.util.concurrent.Callable;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/buw.class */
public final class buw implements cah<bux> {

    /* renamed from: a */
    private final crs f12310a;

    /* renamed from: b */
    private final Context f12311b;

    /* renamed from: c */
    private final chh f12312c;

    /* renamed from: d */
    private final View f12313d;

    public buw(crs crsVar, Context context, chh chhVar, ViewGroup viewGroup) {
        this.f12310a = crsVar;
        this.f12311b = context;
        this.f12312c = chhVar;
        this.f12313d = viewGroup;
    }

    @Override // com.google.android.gms.internal.ads.cah
    /* renamed from: a */
    public final crt<bux> mo11479a() {
        return this.f12310a.mo10767a(new Callable(this) { // from class: com.google.android.gms.internal.ads.buz

            /* renamed from: a */
            private final buw f12321a;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f12321a = this;
            }

            @Override // java.util.concurrent.Callable
            public final Object call() {
                return this.f12321a.m11604b();
            }
        });
    }

    /* renamed from: b */
    public final /* synthetic */ bux m11604b() {
        ViewParent parent;
        Context context = this.f12311b;
        dyd dydVar = this.f12312c.f13041e;
        ArrayList arrayList = new ArrayList();
        View view = this.f12313d;
        while (true) {
            View view2 = view;
            if (view2 != null && (parent = view2.getParent()) != null) {
                int i = -1;
                if (parent instanceof ViewGroup) {
                    i = ((ViewGroup) parent).indexOfChild(view2);
                }
                Bundle bundle = new Bundle();
                bundle.putString("type", parent.getClass().getName());
                bundle.putInt("index_of_child", i);
                arrayList.add(bundle);
                if (!(parent instanceof View)) {
                    break;
                }
                view = (View) parent;
            } else {
                break;
            }
        }
        return new bux(context, dydVar, arrayList);
    }
}
