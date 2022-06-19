package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.Bundle;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import java.util.ArrayList;
import java.util.concurrent.Callable;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/a52.class */
public final class a52 implements wa2<b52> {

    /* renamed from: a */
    private final s03 f19836a;

    /* renamed from: b */
    private final Context f19837b;

    /* renamed from: c */
    private final xj2 f19838c;

    /* renamed from: d */
    private final View f19839d;

    public a52(s03 s03Var, Context context, xj2 xj2Var, ViewGroup viewGroup) {
        this.f19836a = s03Var;
        this.f19837b = context;
        this.f19838c = xj2Var;
        this.f19839d = viewGroup;
    }

    /* renamed from: a */
    public final /* synthetic */ b52 m16690a() {
        ViewParent parent;
        Context context = this.f19837b;
        zzbdl zzbdlVar = this.f19838c.f32078e;
        ArrayList arrayList = new ArrayList();
        View view = this.f19839d;
        while (true) {
            View view2 = view;
            if (view2 != null && (parent = view2.getParent()) != null) {
                int indexOfChild = parent instanceof ViewGroup ? ((ViewGroup) parent).indexOfChild(view2) : -1;
                Bundle bundle = new Bundle();
                bundle.putString("type", parent.getClass().getName());
                bundle.putInt("index_of_child", indexOfChild);
                arrayList.add(bundle);
                if (!(parent instanceof View)) {
                    break;
                }
                view = (View) parent;
            } else {
                break;
            }
        }
        return new b52(context, zzbdlVar, arrayList);
    }

    @Override // com.google.android.gms.internal.ads.wa2
    public final r03<b52> zza() {
        return this.f19836a.mo11185a(new Callable(this) { // from class: com.google.android.gms.internal.ads.z42

            /* renamed from: a */
            private final a52 f32810a;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f32810a = this;
            }

            @Override // java.util.concurrent.Callable
            public final Object call() {
                return this.f32810a.m16690a();
            }
        });
    }
}
