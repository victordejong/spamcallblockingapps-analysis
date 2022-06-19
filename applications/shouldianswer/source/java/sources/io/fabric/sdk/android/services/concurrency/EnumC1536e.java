package io.fabric.sdk.android.services.concurrency;
/* renamed from: io.fabric.sdk.android.services.concurrency.e */
/* loaded from: classes-dex2jar.jar:io/fabric/sdk/android/services/concurrency/e.class */
public enum EnumC1536e {
    LOW,
    NORMAL,
    HIGH,
    IMMEDIATE;

    /* renamed from: a */
    public static <Y> int m3350a(AbstractC1542i abstractC1542i, Y y) {
        return (y instanceof AbstractC1542i ? ((AbstractC1542i) y).getPriority() : NORMAL).ordinal() - abstractC1542i.getPriority().ordinal();
    }
}
