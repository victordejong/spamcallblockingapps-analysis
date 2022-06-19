package io.fabric.sdk.android.services.concurrency.p070a;
/* renamed from: io.fabric.sdk.android.services.concurrency.a.c */
/* loaded from: classes-dex2jar.jar:io/fabric/sdk/android/services/concurrency/a/c.class */
public class C1530c implements AbstractC1528a {

    /* renamed from: a */
    private final long f4179a;

    /* renamed from: b */
    private final int f4180b;

    public C1530c(long j, int i) {
        this.f4179a = j;
        this.f4180b = i;
    }

    @Override // io.fabric.sdk.android.services.concurrency.p070a.AbstractC1528a
    public long getDelayMillis(int i) {
        return (long) (this.f4179a * Math.pow(this.f4180b, i));
    }
}
