package com.android.mms.transaction;

import android.net.Uri;
/* renamed from: com.android.mms.transaction.q */
/* loaded from: classes-dex2jar.jar:com/android/mms/transaction/q.class */
public class C0699q {

    /* renamed from: b */
    private int f3360b = 0;

    /* renamed from: a */
    private Uri f3359a = null;

    /* renamed from: a */
    public Uri m11372a() {
        Uri uri;
        synchronized (this) {
            uri = this.f3359a;
        }
        return uri;
    }

    /* renamed from: b */
    public int m11371b() {
        int i;
        synchronized (this) {
            i = this.f3360b;
        }
        return i;
    }

    /* renamed from: c */
    public void m11370c(Uri uri) {
        synchronized (this) {
            this.f3359a = uri;
        }
    }

    /* renamed from: d */
    public void m11369d(int i) {
        synchronized (this) {
            if (i < 0 && i > 2) {
                throw new IllegalArgumentException("Bad state: " + i);
            }
            this.f3360b = i;
        }
    }
}
