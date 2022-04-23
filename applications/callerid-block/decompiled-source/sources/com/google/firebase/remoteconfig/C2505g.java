package com.google.firebase.remoteconfig;

import com.google.firebase.remoteconfig.internal.C2524k;
/* renamed from: com.google.firebase.remoteconfig.g */
/* loaded from: classes2-dex2jar.jar:com/google/firebase/remoteconfig/g.class */
public class C2505g {

    /* renamed from: com.google.firebase.remoteconfig.g$b */
    /* loaded from: classes2-dex2jar.jar:com/google/firebase/remoteconfig/g$b.class */
    public static class C2507b {

        /* renamed from: a */
        private long f10776a = 60;

        /* renamed from: b */
        private long f10777b = C2524k.f10819j;

        /* renamed from: c */
        public C2505g m3295c() {
            return new C2505g(this);
        }

        /* renamed from: d */
        public C2507b m3294d(long j) {
            if (j >= 0) {
                this.f10776a = j;
                return this;
            }
            throw new IllegalArgumentException(String.format("Fetch connection timeout has to be a non-negative number. %d is an invalid argument", Long.valueOf(j)));
        }

        /* renamed from: e */
        public C2507b m3293e(long j) {
            if (j >= 0) {
                this.f10777b = j;
                return this;
            }
            throw new IllegalArgumentException("Minimum interval between fetches has to be a non-negative number. " + j + " is an invalid argument");
        }
    }

    private C2505g(C2507b bVar) {
        long unused = bVar.f10776a;
        long unused2 = bVar.f10777b;
    }
}
