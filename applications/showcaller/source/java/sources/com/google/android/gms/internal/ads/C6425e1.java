package com.google.android.gms.internal.ads;
/* renamed from: com.google.android.gms.internal.ads.e1 */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/e1.class */
public final class C6425e1 extends AbstractCallableC7203z1 {

    /* renamed from: i */
    private static volatile Long f21966i;

    /* renamed from: j */
    private static final Object f21967j = new Object();

    public C6425e1(C6869q0 c6869q0, String str, String str2, j14 j14Var, int i, int i2) {
        super(c6869q0, "BZSpo1ki7Qq4VpNbKNY5xp3ObP5b46iKtLhMqj95i84Sl1pKZG1hW1hXSXh30EEu", "LLuZlwuRYspGUGo7OZU51ciMYYFQ89K2r1TLDzvNq9k=", j14Var, i, 44);
    }

    @Override // com.google.android.gms.internal.ads.AbstractCallableC7203z1
    /* renamed from: a */
    protected final void mo8630a() {
        if (f21966i == null) {
            synchronized (f21967j) {
                if (f21966i == null) {
                    f21966i = (Long) this.f32758f.invoke(null, new Object[0]);
                }
            }
        }
        synchronized (this.f32757e) {
            this.f32757e.m14200r(f21966i.longValue());
        }
    }
}
