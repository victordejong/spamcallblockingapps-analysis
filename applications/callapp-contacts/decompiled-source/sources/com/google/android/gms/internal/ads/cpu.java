package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.internal.zzr;
import java.util.Iterator;
import java.util.List;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/cpu.class */
public final class cpu {

    /* renamed from: a  reason: collision with root package name */
    private final cov f26235a;

    /* renamed from: b  reason: collision with root package name */
    private final coz f26236b;

    /* renamed from: c  reason: collision with root package name */
    private final brs f26237c;

    /* renamed from: d  reason: collision with root package name */
    private final cus f26238d;

    public cpu(brs brsVar, cus cusVar, cov covVar, coz cozVar) {
        this.f26235a = covVar;
        this.f26236b = cozVar;
        this.f26237c = brsVar;
        this.f26238d = cusVar;
    }

    private final void a(String str, int i) {
        if (!this.f26235a.ad) {
            this.f26238d.a(str);
            return;
        }
        this.f26237c.a(new brz(zzr.zzlc().a(), this.f26236b.f26197b, str, i));
    }

    public final void a(List<String> list) {
        for (String str : list) {
            a(str, brp.f24957b);
        }
    }

    /* JADX WARN: Incorrect types in method signature: (Ljava/util/List<Ljava/lang/String;>;Ljava/lang/Integer;)V */
    public final void a(List list, int i) {
        Iterator it2 = list.iterator();
        while (it2.hasNext()) {
            a((String) it2.next(), i);
        }
    }
}
