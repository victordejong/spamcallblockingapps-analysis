package com.google.android.gms.internal.ads;
/* renamed from: com.google.android.gms.internal.ads.t1 */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/t1.class */
public final class C6981t1 extends AbstractCallableC7203z1 {

    /* renamed from: i */
    private final View$OnAttachStateChangeListenerC7128x0 f29771i;

    /* renamed from: j */
    private long f29772j;

    public C6981t1(C6869q0 c6869q0, String str, String str2, j14 j14Var, int i, int i2, View$OnAttachStateChangeListenerC7128x0 view$OnAttachStateChangeListenerC7128x0) {
        super(c6869q0, "BF4UgSmqTS0MLe4qitQi/hj1jIQ+0vLIJEn32u0TtZn0VL9j15ZHt04Do4ADy833", "Yw5N4XiXXiTiwJwrJ8hW/AfPIwRQ2KMfiYKb9xu8vYQ=", j14Var, i, 53);
        this.f29771i = view$OnAttachStateChangeListenerC7128x0;
        if (view$OnAttachStateChangeListenerC7128x0 != null) {
            this.f29772j = view$OnAttachStateChangeListenerC7128x0.m9389c();
        }
    }

    @Override // com.google.android.gms.internal.ads.AbstractCallableC7203z1
    /* renamed from: a */
    protected final void mo8630a() {
        if (this.f29771i != null) {
            this.f32757e.m14189y(((Long) this.f32758f.invoke(null, Long.valueOf(this.f29772j))).longValue());
        }
    }
}
