package com.google.android.gms.internal;

import android.text.TextUtils;
import com.android.contacts.activities.ContactDetailCallogActivity;
import com.google.android.gms.analytics.zzg;
import java.util.HashMap;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ac.class */
public final class ac extends zzg<ac> {

    /* renamed from: a  reason: collision with root package name */
    public String f4098a;

    /* renamed from: b  reason: collision with root package name */
    public String f4099b;
    public String c;
    public String d;
    public String e;
    public String f;
    public String g;
    public String h;
    public String i;
    public String j;

    public final String toString() {
        HashMap hashMap = new HashMap();
        hashMap.put(ContactDetailCallogActivity.EXTRA_NAME, this.f4098a);
        hashMap.put("source", this.f4099b);
        hashMap.put("medium", this.c);
        hashMap.put("keyword", this.d);
        hashMap.put("content", this.e);
        hashMap.put("id", this.f);
        hashMap.put("adNetworkId", this.g);
        hashMap.put("gclid", this.h);
        hashMap.put("dclid", this.i);
        hashMap.put("aclid", this.j);
        return zzj(hashMap);
    }

    @Override // com.google.android.gms.analytics.zzg
    public final /* synthetic */ void zzb(ac acVar) {
        ac acVar2 = acVar;
        if (!TextUtils.isEmpty(this.f4098a)) {
            acVar2.f4098a = this.f4098a;
        }
        if (!TextUtils.isEmpty(this.f4099b)) {
            acVar2.f4099b = this.f4099b;
        }
        if (!TextUtils.isEmpty(this.c)) {
            acVar2.c = this.c;
        }
        if (!TextUtils.isEmpty(this.d)) {
            acVar2.d = this.d;
        }
        if (!TextUtils.isEmpty(this.e)) {
            acVar2.e = this.e;
        }
        if (!TextUtils.isEmpty(this.f)) {
            acVar2.f = this.f;
        }
        if (!TextUtils.isEmpty(this.g)) {
            acVar2.g = this.g;
        }
        if (!TextUtils.isEmpty(this.h)) {
            acVar2.h = this.h;
        }
        if (!TextUtils.isEmpty(this.i)) {
            acVar2.i = this.i;
        }
        if (!TextUtils.isEmpty(this.j)) {
            acVar2.j = this.j;
        }
    }
}
