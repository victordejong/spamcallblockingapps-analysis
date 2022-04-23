package com.criteo.publisher.logging;

import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.p;
/* loaded from: classes2-dex2jar.jar:com/criteo/publisher/logging/e.class */
public final class e {

    /* renamed from: a  reason: collision with root package name */
    final int f17447a;

    /* renamed from: b  reason: collision with root package name */
    final String f17448b;

    /* renamed from: c  reason: collision with root package name */
    final Throwable f17449c;

    /* renamed from: d  reason: collision with root package name */
    final String f17450d;

    public e(int i, String str, Throwable th, String str2) {
        this.f17447a = i;
        this.f17448b = str;
        this.f17449c = th;
        this.f17450d = str2;
    }

    public /* synthetic */ e(int i, String str, Throwable th, String str2, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this((i2 & 1) != 0 ? 4 : i, str, (i2 & 4) != 0 ? null : th, (i2 & 8) != 0 ? null : str2);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof e)) {
            return false;
        }
        e eVar = (e) obj;
        return this.f17447a == eVar.f17447a && p.a((Object) this.f17448b, (Object) eVar.f17448b) && p.a(this.f17449c, eVar.f17449c) && p.a((Object) this.f17450d, (Object) eVar.f17450d);
    }

    public final int hashCode() {
        int i = this.f17447a;
        String str = this.f17448b;
        int i2 = 0;
        int hashCode = str != null ? str.hashCode() : 0;
        Throwable th = this.f17449c;
        int hashCode2 = th != null ? th.hashCode() : 0;
        String str2 = this.f17450d;
        if (str2 != null) {
            i2 = str2.hashCode();
        }
        return (((((i * 31) + hashCode) * 31) + hashCode2) * 31) + i2;
    }

    public final String toString() {
        return "LogMessage(level=" + this.f17447a + ", message=" + this.f17448b + ", throwable=" + this.f17449c + ", logId=" + this.f17450d + ")";
    }
}
