package com.google.android.gms.internal.ads;

import android.os.Bundle;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import org.json.JSONException;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/a01.class */
public final class a01 {

    /* renamed from: c */
    private al1 f5936c = null;

    /* renamed from: b */
    private final Map<String, zzzb> f5935b = Collections.synchronizedMap(new HashMap());

    /* renamed from: a */
    private final List<zzzb> f5934a = Collections.synchronizedList(new ArrayList());

    /* renamed from: a */
    public final void m8168a(al1 al1Var) {
        String str = al1Var.f6035v;
        if (!this.f5935b.containsKey(str)) {
            Bundle bundle = new Bundle();
            Iterator<String> keys = al1Var.f6034u.keys();
            while (keys.hasNext()) {
                String next = keys.next();
                try {
                    bundle.putString(next, al1Var.f6034u.getString(next));
                } catch (JSONException e) {
                }
            }
            zzzb zzzbVar = new zzzb(al1Var.f5984D, 0L, (zzym) null, bundle);
            this.f5934a.add(zzzbVar);
            this.f5935b.put(str, zzzbVar);
        }
    }

    /* renamed from: b */
    public final void m8167b(al1 al1Var, long j, zzym zzymVar) {
        String str = al1Var.f6035v;
        if (this.f5935b.containsKey(str)) {
            if (this.f5936c == null) {
                this.f5936c = al1Var;
            }
            zzzb zzzbVar = this.f5935b.get(str);
            zzzbVar.c = j;
            zzzbVar.d = zzymVar;
        }
    }

    /* renamed from: c */
    public final k70 m8166c() {
        return new k70(this.f5936c, "", this);
    }

    /* renamed from: d */
    public final List<zzzb> m8165d() {
        return this.f5934a;
    }
}
