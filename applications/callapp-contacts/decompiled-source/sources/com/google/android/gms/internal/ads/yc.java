package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.os.Parcelable;
import com.google.android.gms.common.util.f;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedList;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/yc.class */
public final class yc {

    /* renamed from: a  reason: collision with root package name */
    final f f28522a;

    /* renamed from: b  reason: collision with root package name */
    final yo f28523b;
    final String e;
    private final String k;

    /* renamed from: d  reason: collision with root package name */
    final Object f28525d = new Object();
    private long l = -1;
    long f = -1;
    private boolean m = false;
    long g = -1;
    long h = 0;
    long i = -1;
    long j = -1;

    /* renamed from: c  reason: collision with root package name */
    final LinkedList<yb> f28524c = new LinkedList<>();

    /* JADX INFO: Access modifiers changed from: package-private */
    public yc(f fVar, yo yoVar, String str, String str2) {
        this.f28522a = fVar;
        this.f28523b = yoVar;
        this.e = str;
        this.k = str2;
    }

    public final Bundle a() {
        Bundle bundle;
        synchronized (this.f28525d) {
            bundle = new Bundle();
            bundle.putString("seq_num", this.e);
            bundle.putString("slotid", this.k);
            bundle.putBoolean("ismediation", false);
            bundle.putLong("treq", this.i);
            bundle.putLong("tresponse", this.j);
            bundle.putLong("timp", this.f);
            bundle.putLong("tload", this.g);
            bundle.putLong("pcc", this.h);
            bundle.putLong("tfetch", this.l);
            ArrayList<? extends Parcelable> arrayList = new ArrayList<>();
            Iterator<yb> it2 = this.f28524c.iterator();
            while (it2.hasNext()) {
                yb next = it2.next();
                Bundle bundle2 = new Bundle();
                bundle2.putLong("topen", next.f28519a);
                bundle2.putLong("tclose", next.f28520b);
                arrayList.add(bundle2);
            }
            bundle.putParcelableArrayList("tclick", arrayList);
        }
        return bundle;
    }
}
