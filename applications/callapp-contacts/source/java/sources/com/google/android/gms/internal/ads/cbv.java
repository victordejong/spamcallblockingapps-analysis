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

    /* renamed from: a */
    final Context f45474a;

    /* renamed from: b */
    final cpo f45475b;

    /* renamed from: c */
    final View f45476c;

    /* renamed from: d */
    private final dbs f45477d;

    public cbv(dbs dbsVar, Context context, cpo cpoVar, ViewGroup viewGroup) {
        this.f45477d = dbsVar;
        this.f45474a = context;
        this.f45475b = cpoVar;
        this.f45476c = viewGroup;
    }

    @Override // com.google.android.gms.internal.ads.chb
    /* renamed from: a */
    public final dbt<cbw> mo17449a() {
        return this.f45477d.mo16890a(new Callable(this) { // from class: com.google.android.gms.internal.ads.cby

            /* renamed from: a */
            private final cbv f45485a;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f45485a = this;
            }

            @Override // java.util.concurrent.Callable
            public final Object call() {
                ViewParent parent;
                cbv cbvVar = this.f45485a;
                Context context = cbvVar.f45474a;
                zzvt zzvtVar = cbvVar.f45475b.f46325e;
                ArrayList arrayList = new ArrayList();
                View view = cbvVar.f45476c;
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
                return new cbw(context, zzvtVar, arrayList);
            }
        });
    }
}
