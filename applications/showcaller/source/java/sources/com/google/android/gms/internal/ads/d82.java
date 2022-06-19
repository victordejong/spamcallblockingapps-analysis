package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.content.Context;
import android.content.pm.PackageManager;
import android.view.ViewGroup;
import android.view.Window;
import java.util.Set;
import java.util.concurrent.Callable;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/d82.class */
public final class d82 implements wa2<e82> {

    /* renamed from: a */
    private final s03 f21543a;

    /* renamed from: b */
    private final ViewGroup f21544b;

    /* renamed from: c */
    private final Context f21545c;

    /* renamed from: d */
    private final Set<String> f21546d;

    public d82(s03 s03Var, ViewGroup viewGroup, Context context, Set<String> set) {
        this.f21543a = s03Var;
        this.f21546d = set;
        this.f21544b = viewGroup;
        this.f21545c = context;
    }

    /* renamed from: a */
    public final /* synthetic */ e82 m15861a() {
        if (!((Boolean) C7192yr.m8714c().m14263c(C6679kw.f25715i4)).booleanValue() || this.f21544b == null || !this.f21546d.contains("banner")) {
            Boolean bool = null;
            if (((Boolean) C7192yr.m8714c().m14263c(C6679kw.f25723j4)).booleanValue() && this.f21546d.contains("native")) {
                Context context = this.f21545c;
                if (context instanceof Activity) {
                    Activity activity = (Activity) context;
                    Window window = activity.getWindow();
                    if (window == null || (window.getAttributes().flags & 16777216) == 0) {
                        try {
                            boolean z = false;
                            if ((activity.getPackageManager().getActivityInfo(activity.getComponentName(), 0).flags & 512) != 0) {
                                z = true;
                            }
                            bool = Boolean.valueOf(z);
                        } catch (PackageManager.NameNotFoundException e) {
                        }
                    } else {
                        bool = Boolean.TRUE;
                    }
                    return new e82(bool);
                }
            }
            return new e82(null);
        }
        return new e82(Boolean.valueOf(this.f21544b.isHardwareAccelerated()));
    }

    @Override // com.google.android.gms.internal.ads.wa2
    public final r03<e82> zza() {
        return this.f21543a.mo11185a(new Callable(this) { // from class: com.google.android.gms.internal.ads.c82

            /* renamed from: a */
            private final d82 f21127a;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f21127a = this;
            }

            @Override // java.util.concurrent.Callable
            public final Object call() {
                return this.f21127a.m15861a();
            }
        });
    }
}
