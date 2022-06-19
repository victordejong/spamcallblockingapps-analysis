package com.google.android.gms.internal.ads;

import android.content.Context;
import java.util.concurrent.atomic.AtomicReference;
/* renamed from: com.google.android.gms.internal.ads.b1 */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/b1.class */
public final class C6313b1 extends AbstractCallableC7203z1 {

    /* renamed from: i */
    private static final C6277a2<String> f20237i = new C6277a2<>();

    /* renamed from: j */
    private final Context f20238j;

    public C6313b1(C6869q0 c6869q0, String str, String str2, j14 j14Var, int i, int i2, Context context) {
        super(c6869q0, "Cm/m2hUfCdldkdMMT3yEm1sAGuFpKVfLQblDoR20XcK7ttTDkHIz3fwaKTv7az9S", "aEm/NgN//tNFhysboe/lIhu1ib9P4g8tTm8w79YCsSs=", j14Var, i, 29);
        this.f20238j = context;
    }

    @Override // com.google.android.gms.internal.ads.AbstractCallableC7203z1
    /* renamed from: a */
    protected final void mo8630a() {
        this.f32757e.m14207l0("E");
        AtomicReference<String> m16716a = f20237i.m16716a(this.f20238j.getPackageName());
        if (m16716a.get() == null) {
            synchronized (m16716a) {
                if (m16716a.get() == null) {
                    m16716a.set((String) this.f32758f.invoke(null, this.f20238j));
                }
            }
        }
        String str = m16716a.get();
        synchronized (this.f32757e) {
            this.f32757e.m14207l0(p24.m12440a(str.getBytes(), true));
        }
    }
}
