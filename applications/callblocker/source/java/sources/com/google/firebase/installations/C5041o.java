package com.google.firebase.installations;

import android.text.TextUtils;
import com.google.firebase.installations.p167a.AbstractC5010d;
import java.util.concurrent.TimeUnit;
/* renamed from: com.google.firebase.installations.o */
/* loaded from: classes-dex2jar.jar:com/google/firebase/installations/o.class */
class C5041o {

    /* renamed from: a */
    public static final long f21292a = TimeUnit.HOURS.toSeconds(1);

    /* renamed from: a */
    public long m1765a() {
        return TimeUnit.MILLISECONDS.toSeconds(System.currentTimeMillis());
    }

    /* renamed from: a */
    public boolean m1764a(AbstractC5010d abstractC5010d) {
        boolean z = true;
        if (!TextUtils.isEmpty(abstractC5010d.mo1862c()) && abstractC5010d.mo1859f() + abstractC5010d.mo1860e() >= m1765a() + f21292a) {
            z = false;
        }
        return z;
    }
}
