package com.criteo.publisher.logging;

import kotlin.jvm.internal.C18524p;
import kotlin.jvm.internal.DefaultConstructorMarker;
/* renamed from: com.criteo.publisher.logging.e */
/* loaded from: classes2-dex2jar.jar:com/criteo/publisher/logging/e.class */
public final class C8400e {

    /* renamed from: a */
    final int f30122a;

    /* renamed from: b */
    final String f30123b;

    /* renamed from: c */
    final Throwable f30124c;

    /* renamed from: d */
    final String f30125d;

    public C8400e(int i, String str, Throwable th, String str2) {
        this.f30122a = i;
        this.f30123b = str;
        this.f30124c = th;
        this.f30125d = str2;
    }

    public /* synthetic */ C8400e(int i, String str, Throwable th, String str2, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this((i2 & 1) != 0 ? 4 : i, str, (i2 & 4) != 0 ? null : th, (i2 & 8) != 0 ? null : str2);
    }

    public final boolean equals(Object obj) {
        if (this != obj) {
            if (!(obj instanceof C8400e)) {
                return false;
            }
            C8400e c8400e = (C8400e) obj;
            return this.f30122a == c8400e.f30122a && C18524p.m3850a((Object) this.f30123b, (Object) c8400e.f30123b) && C18524p.m3850a(this.f30124c, c8400e.f30124c) && C18524p.m3850a((Object) this.f30125d, (Object) c8400e.f30125d);
        }
        return true;
    }

    public final int hashCode() {
        int i = this.f30122a;
        String str = this.f30123b;
        int i2 = 0;
        int hashCode = str != null ? str.hashCode() : 0;
        Throwable th = this.f30124c;
        int hashCode2 = th != null ? th.hashCode() : 0;
        String str2 = this.f30125d;
        if (str2 != null) {
            i2 = str2.hashCode();
        }
        return (((((i * 31) + hashCode) * 31) + hashCode2) * 31) + i2;
    }

    public final String toString() {
        return "LogMessage(level=" + this.f30122a + ", message=" + this.f30123b + ", throwable=" + this.f30124c + ", logId=" + this.f30125d + ")";
    }
}
