package com.facebook.internal.p298a;

import kotlin.Metadata;
import kotlin.jvm.internal.C18524p;
@Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"�� \n\u0002\u0018\u0002\n\u0002\u0010��\n��\n\u0002\u0010\u000e\n��\n\u0002\u0010\u000b\n\u0002\b\u000b\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\b\u0018��2\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0002\u0010\u0006J\t\u0010\u000b\u001a\u00020\u0003HÆ\u0003J\t\u0010\f\u001a\u00020\u0005HÆ\u0003J\u001d\u0010\r\u001a\u00020��2\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u0005HÆ\u0001J\u0013\u0010\u000e\u001a\u00020\u00052\b\u0010\u000f\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u0010\u001a\u00020\u0011HÖ\u0001J\t\u0010\u0012\u001a\u00020\u0003HÖ\u0001R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n��\u001a\u0004\b\u0007\u0010\bR\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n��\u001a\u0004\b\t\u0010\n¨\u0006\u0013"}, m4298d2 = {"Lcom/facebook/internal/gatekeeper/GateKeeper;", "", "name", "", "value", "", "(Ljava/lang/String;Z)V", "getName", "()Ljava/lang/String;", "getValue", "()Z", "component1", "component2", "copy", "equals", "other", "hashCode", "", "toString", "facebook-core_release"}, m4297k = 1, m4296mv = {1, 4, 0})
/* renamed from: com.facebook.internal.a.a */
/* loaded from: classes3-dex2jar.jar:com/facebook/internal/a/a.class */
public final class C10204a {

    /* renamed from: a */
    public final String f33639a;

    /* renamed from: b */
    public final boolean f33640b;

    public C10204a(String name, boolean z) {
        C18524p.m3840d(name, "name");
        this.f33639a = name;
        this.f33640b = z;
    }

    public final boolean equals(Object obj) {
        if (this != obj) {
            if (!(obj instanceof C10204a)) {
                return false;
            }
            C10204a c10204a = (C10204a) obj;
            return C18524p.m3850a((Object) this.f33639a, (Object) c10204a.f33639a) && this.f33640b == c10204a.f33640b;
        }
        return true;
    }

    public final int hashCode() {
        String str = this.f33639a;
        int hashCode = str != null ? str.hashCode() : 0;
        boolean z = this.f33640b;
        int i = z ? 1 : 0;
        if (z) {
            i = 1;
        }
        return (hashCode * 31) + i;
    }

    public final String toString() {
        return "GateKeeper(name=" + this.f33639a + ", value=" + this.f33640b + ")";
    }
}
