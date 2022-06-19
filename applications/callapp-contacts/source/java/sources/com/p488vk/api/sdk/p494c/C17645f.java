package com.p488vk.api.sdk.p494c;

import kotlin.Metadata;
import kotlin.jvm.internal.C18524p;
import kotlin.jvm.internal.DefaultConstructorMarker;
@Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��&\n\u0002\u0018\u0002\n\u0002\u0010��\n��\n\u0002\u0010\b\n��\n\u0002\u0010\u000b\n��\n\u0002\u0010\u000e\n\u0002\b\u0015\n\u0002\u0010$\n\u0002\b\u0002\b\u0086\b\u0018��2\u00020\u0001B7\b\u0007\u0012\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u0012\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u0003¢\u0006\u0002\u0010\tJ\u0010\u0010\u0013\u001a\u0004\u0018\u00010\u0003HÆ\u0003¢\u0006\u0002\u0010\u0010J\u0010\u0010\u0014\u001a\u0004\u0018\u00010\u0005HÆ\u0003¢\u0006\u0002\u0010\u000bJ\u000b\u0010\u0015\u001a\u0004\u0018\u00010\u0007HÆ\u0003J\u0010\u0010\u0016\u001a\u0004\u0018\u00010\u0003HÆ\u0003¢\u0006\u0002\u0010\u0010J>\u0010\u0017\u001a\u00020��2\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00052\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u00072\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u0003HÆ\u0001¢\u0006\u0002\u0010\u0018J\u0013\u0010\u0019\u001a\u00020\u00052\b\u0010\u001a\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u001b\u001a\u00020\u0003HÖ\u0001J\u0016\u0010\u001c\u001a\u0012\u0012\u0004\u0012\u00020\u0007\u0012\u0006\u0012\u0004\u0018\u00010\u0001\u0018\u00010\u001dJ\t\u0010\u001e\u001a\u00020\u0007HÖ\u0001R\u0015\u0010\u0004\u001a\u0004\u0018\u00010\u0005¢\u0006\n\n\u0002\u0010\f\u001a\u0004\b\n\u0010\u000bR\u0013\u0010\u0006\u001a\u0004\u0018\u00010\u0007¢\u0006\b\n��\u001a\u0004\b\r\u0010\u000eR\u0015\u0010\b\u001a\u0004\u0018\u00010\u0003¢\u0006\n\n\u0002\u0010\u0011\u001a\u0004\b\u000f\u0010\u0010R\u0015\u0010\u0002\u001a\u0004\u0018\u00010\u0003¢\u0006\n\n\u0002\u0010\u0011\u001a\u0004\b\u0012\u0010\u0010¨\u0006\u001f"}, m4298d2 = {"Lcom/vk/api/sdk/okhttp/RequestTag;", "", "uid", "", "awaitNetwork", "", "reason", "", "retryCount", "(Ljava/lang/Integer;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/Integer;)V", "getAwaitNetwork", "()Ljava/lang/Boolean;", "Ljava/lang/Boolean;", "getReason", "()Ljava/lang/String;", "getRetryCount", "()Ljava/lang/Integer;", "Ljava/lang/Integer;", "getUid", "component1", "component2", "component3", "component4", "copy", "(Ljava/lang/Integer;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/Integer;)Lcom/vk/api/sdk/okhttp/RequestTag;", "equals", "other", "hashCode", "toMap", "", "toString", "libapi-sdk-core_release"}, m4297k = 1, m4296mv = {1, 4, 2})
/* renamed from: com.vk.api.sdk.c.f */
/* loaded from: classes5-dex2jar.jar:com/vk/api/sdk/c/f.class */
public final class C17645f {

    /* renamed from: a */
    public final Integer f62426a;

    /* renamed from: b */
    public final Boolean f62427b;

    /* renamed from: c */
    public final String f62428c;

    /* renamed from: d */
    public final Integer f62429d;

    public C17645f() {
        this(null, null, null, null, 15, null);
    }

    public C17645f(Integer num) {
        this(num, null, null, null, 14, null);
    }

    public C17645f(Integer num, Boolean bool) {
        this(num, bool, null, null, 12, null);
    }

    public C17645f(Integer num, Boolean bool, String str) {
        this(num, bool, str, null, 8, null);
    }

    public C17645f(Integer num, Boolean bool, String str, Integer num2) {
        this.f62426a = num;
        this.f62427b = bool;
        this.f62428c = str;
        this.f62429d = num2;
    }

    public /* synthetic */ C17645f(Integer num, Boolean bool, String str, Integer num2, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? null : num, (i & 2) != 0 ? null : bool, (i & 4) != 0 ? null : str, (i & 8) != 0 ? null : num2);
    }

    public final boolean equals(Object obj) {
        if (this != obj) {
            if (!(obj instanceof C17645f)) {
                return false;
            }
            C17645f c17645f = (C17645f) obj;
            return C18524p.m3850a(this.f62426a, c17645f.f62426a) && C18524p.m3850a(this.f62427b, c17645f.f62427b) && C18524p.m3850a((Object) this.f62428c, (Object) c17645f.f62428c) && C18524p.m3850a(this.f62429d, c17645f.f62429d);
        }
        return true;
    }

    public final int hashCode() {
        Integer num = this.f62426a;
        int i = 0;
        int hashCode = num != null ? num.hashCode() : 0;
        Boolean bool = this.f62427b;
        int hashCode2 = bool != null ? bool.hashCode() : 0;
        String str = this.f62428c;
        int hashCode3 = str != null ? str.hashCode() : 0;
        Integer num2 = this.f62429d;
        if (num2 != null) {
            i = num2.hashCode();
        }
        return (((((hashCode * 31) + hashCode2) * 31) + hashCode3) * 31) + i;
    }

    public final String toString() {
        return "RequestTag(uid=" + this.f62426a + ", awaitNetwork=" + this.f62427b + ", reason=" + this.f62428c + ", retryCount=" + this.f62429d + ")";
    }
}
