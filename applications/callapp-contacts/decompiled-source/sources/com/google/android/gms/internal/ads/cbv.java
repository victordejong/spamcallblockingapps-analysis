package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.Bundle;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import java.util.ArrayList;
import java.util.concurrent.Callable;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/cbv.class */
public final class cbv implements chb<cbw> {

    /* renamed from: a  reason: collision with root package name */
    final Context f25553a;

    /* renamed from: b  reason: collision with root package name */
    final cpo f25554b;

    /* renamed from: c  reason: collision with root package name */
    final View f25555c;

    /* renamed from: d  reason: collision with root package name */
    private final dbs f25556d;

    public cbv(dbs dbsVar, Context context, cpo cpoVar, ViewGroup viewGroup) {
        this.f25556d = dbsVar;
        this.f25553a = context;
        this.f25554b = cpoVar;
        this.f25555c = viewGroup;
    }

    @Override // com.google.android.gms.internal.ads.chb
    public final dbt<cbw> a() {
        return this.f25556d.a(new Callable(this) { // from class: com.google.android.gms.internal.ads.cby

            /* renamed from: a  reason: collision with root package name */
            private final cbv f25564a;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f25564a = this;
            }

            @Override // java.util.concurrent.Callable
            public final Object call() {
                ViewParent parent;
                cbv cbvVar = this.f25564a;
                Context context = cbvVar.f25553a;
                zzvt zzvtVar = cbvVar.f25554b.e;
                ArrayList arrayList = new ArrayList();
                View view = cbvVar.f25555c;
                while (view != null && (parent = view.getParent()) != null) {
                    int i = -1;
                    if (parent instanceof ViewGroup) {
                        i = ((ViewGroup) parent).indexOfChild(view);
                    }
                    Bundle bundle = new Bundle();
                    bundle.putString("type", parent.getClass().getName());
                    bundle.putInt("index_of_child", i);
                    arrayList.add(bundle);
                    if (!(parent instanceof View)) {
                        break;
                    }
                    view = (View) parent;
                }
                return new cbw(context, zzvtVar, arrayList);
            }
        });
    }
}
