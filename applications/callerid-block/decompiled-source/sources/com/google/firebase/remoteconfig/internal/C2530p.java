package com.google.firebase.remoteconfig.internal;

import com.google.firebase.remoteconfig.AbstractC2504f;
import com.google.firebase.remoteconfig.C2505g;
/* renamed from: com.google.firebase.remoteconfig.internal.p */
/* loaded from: classes2-dex2jar.jar:com/google/firebase/remoteconfig/internal/p.class */
public class C2530p implements AbstractC2504f {

    /* renamed from: a */
    private final int f10849a;

    /* renamed from: com.google.firebase.remoteconfig.internal.p$b */
    /* loaded from: classes2-dex2jar.jar:com/google/firebase/remoteconfig/internal/p$b.class */
    public static class C2532b {

        /* renamed from: a */
        private long f10850a;

        /* renamed from: b */
        private int f10851b;

        /* renamed from: c */
        private C2505g f10852c;

        private C2532b() {
        }

        /* renamed from: a */
        public C2530p m3190a() {
            return new C2530p(this.f10850a, this.f10851b, this.f10852c);
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        /* renamed from: b */
        public C2532b m3189b(C2505g gVar) {
            this.f10852c = gVar;
            return this;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        /* renamed from: c */
        public C2532b m3188c(int i) {
            this.f10851b = i;
            return this;
        }

        /* renamed from: d */
        public C2532b m3187d(long j) {
            this.f10850a = j;
            return this;
        }
    }

    private C2530p(long j, int i, C2505g gVar) {
        this.f10849a = i;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: b */
    public static C2532b m3191b() {
        return new C2532b();
    }

    @Override // com.google.firebase.remoteconfig.AbstractC2504f
    /* renamed from: a */
    public int mo3192a() {
        return this.f10849a;
    }
}
