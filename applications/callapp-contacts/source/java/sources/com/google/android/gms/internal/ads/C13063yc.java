package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.os.Parcelable;
import com.google.android.gms.common.util.AbstractC12102f;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedList;
/* renamed from: com.google.android.gms.internal.ads.yc */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/yc.class */
public final class C13063yc {

    /* renamed from: a */
    final AbstractC12102f f50030a;

    /* renamed from: b */
    final C13075yo f50031b;

    /* renamed from: e */
    final String f50034e;

    /* renamed from: k */
    private final String f50040k;

    /* renamed from: d */
    final Object f50033d = new Object();

    /* renamed from: l */
    private long f50041l = -1;

    /* renamed from: f */
    long f50035f = -1;

    /* renamed from: m */
    private boolean f50042m = false;

    /* renamed from: g */
    long f50036g = -1;

    /* renamed from: h */
    long f50037h = 0;

    /* renamed from: i */
    long f50038i = -1;

    /* renamed from: j */
    long f50039j = -1;

    /* renamed from: c */
    final LinkedList<C13062yb> f50032c = new LinkedList<>();

    public C13063yc(AbstractC12102f abstractC12102f, C13075yo c13075yo, String str, String str2) {
        this.f50030a = abstractC12102f;
        this.f50031b = c13075yo;
        this.f50034e = str;
        this.f50040k = str2;
    }

    /* renamed from: a */
    public final Bundle m13984a() {
        Bundle bundle;
        synchronized (this.f50033d) {
            bundle = new Bundle();
            bundle.putString("seq_num", this.f50034e);
            bundle.putString("slotid", this.f50040k);
            bundle.putBoolean("ismediation", false);
            bundle.putLong("treq", this.f50038i);
            bundle.putLong("tresponse", this.f50039j);
            bundle.putLong("timp", this.f50035f);
            bundle.putLong("tload", this.f50036g);
            bundle.putLong("pcc", this.f50037h);
            bundle.putLong("tfetch", this.f50041l);
            ArrayList<? extends Parcelable> arrayList = new ArrayList<>();
            Iterator<C13062yb> it2 = this.f50032c.iterator();
            while (it2.hasNext()) {
                C13062yb next = it2.next();
                Bundle bundle2 = new Bundle();
                bundle2.putLong("topen", next.f50027a);
                bundle2.putLong("tclose", next.f50028b);
                arrayList.add(bundle2);
            }
            bundle.putParcelableArrayList("tclick", arrayList);
        }
        return bundle;
    }
}
