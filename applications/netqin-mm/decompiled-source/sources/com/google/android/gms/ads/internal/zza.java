package com.google.android.gms.ads.internal;

import android.content.Context;
import android.net.Uri;
import android.text.TextUtils;
import com.google.android.gms.internal.ads.zzasr;
import com.google.android.gms.internal.ads.zzawl;
import com.google.android.gms.internal.ads.zzayu;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/ads/internal/zza.class */
public final class zza {

    /* renamed from: a */
    public final Context f22788a;

    /* renamed from: b */
    public boolean f22789b;

    /* renamed from: c */
    public zzawl f22790c;

    /* renamed from: d */
    public zzasr f22791d;

    public zza(Context context, zzawl zzawlVar, zzasr zzasrVar) {
        this.f22788a = context;
        this.f22790c = zzawlVar;
        this.f22791d = null;
        if (0 == 0) {
            this.f22791d = new zzasr();
        }
    }

    /* renamed from: a */
    public final void m17998a() {
        this.f22789b = true;
    }

    /* renamed from: a */
    public final void m17997a(String str) {
        List<String> list;
        if (m17996b()) {
            if (str == null) {
                str = "";
            }
            zzawl zzawlVar = this.f22790c;
            if (zzawlVar != null) {
                zzawlVar.mo16263a(str, null, 3);
                return;
            }
            zzasr zzasrVar = this.f22791d;
            if (zzasrVar.f24437a && (list = zzasrVar.f24438b) != null) {
                for (String str2 : list) {
                    if (!TextUtils.isEmpty(str2)) {
                        String replace = str2.replace("{NAVIGATION_URL}", Uri.encode(str));
                        zzp.m17969c();
                        zzayu.m16139a(this.f22788a, "", replace);
                    }
                }
            }
        }
    }

    /* renamed from: b */
    public final boolean m17996b() {
        zzawl zzawlVar = this.f22790c;
        return (zzawlVar != null && zzawlVar.mo16259d().f24567f) || this.f22791d.f24437a;
    }

    /* renamed from: c */
    public final boolean m17995c() {
        return !m17996b() || this.f22789b;
    }
}
