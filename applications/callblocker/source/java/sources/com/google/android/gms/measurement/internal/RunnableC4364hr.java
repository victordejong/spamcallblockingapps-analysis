package com.google.android.gms.measurement.internal;
/* renamed from: com.google.android.gms.measurement.internal.hr */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/hr.class */
public final class RunnableC4364hr implements Runnable {

    /* renamed from: a */
    private final /* synthetic */ C4362hp f19093a;

    /* renamed from: b */
    private final /* synthetic */ C4362hp f19094b;

    /* renamed from: c */
    private final /* synthetic */ long f19095c;

    /* renamed from: d */
    private final /* synthetic */ boolean f19096d;

    /* renamed from: e */
    private final /* synthetic */ C4361ho f19097e;

    public RunnableC4364hr(C4361ho c4361ho, C4362hp c4362hp, C4362hp c4362hp2, long j, boolean z) {
        this.f19097e = c4361ho;
        this.f19093a = c4362hp;
        this.f19094b = c4362hp2;
        this.f19095c = j;
        this.f19096d = z;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f19097e.m4356a(this.f19093a, this.f19094b, this.f19095c, this.f19096d, null);
    }
}
