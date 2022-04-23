package com.vk.api.sdk.c;

import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.p;
@Metadata(bv = {1, 0, 3}, d1 = {"��&\n\u0002\u0018\u0002\n\u0002\u0010��\n��\n\u0002\u0010\b\n��\n\u0002\u0010\u000b\n��\n\u0002\u0010\u000e\n\u0002\b\u0015\n\u0002\u0010$\n\u0002\b\u0002\b\u0086\b\u0018��2\u00020\u0001B7\b\u0007\u0012\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u0012\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u0003¢\u0006\u0002\u0010\tJ\u0010\u0010\u0013\u001a\u0004\u0018\u00010\u0003HÆ\u0003¢\u0006\u0002\u0010\u0010J\u0010\u0010\u0014\u001a\u0004\u0018\u00010\u0005HÆ\u0003¢\u0006\u0002\u0010\u000bJ\u000b\u0010\u0015\u001a\u0004\u0018\u00010\u0007HÆ\u0003J\u0010\u0010\u0016\u001a\u0004\u0018\u00010\u0003HÆ\u0003¢\u0006\u0002\u0010\u0010J>\u0010\u0017\u001a\u00020��2\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00052\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u00072\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u0003HÆ\u0001¢\u0006\u0002\u0010\u0018J\u0013\u0010\u0019\u001a\u00020\u00052\b\u0010\u001a\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u001b\u001a\u00020\u0003HÖ\u0001J\u0016\u0010\u001c\u001a\u0012\u0012\u0004\u0012\u00020\u0007\u0012\u0006\u0012\u0004\u0018\u00010\u0001\u0018\u00010\u001dJ\t\u0010\u001e\u001a\u00020\u0007HÖ\u0001R\u0015\u0010\u0004\u001a\u0004\u0018\u00010\u0005¢\u0006\n\n\u0002\u0010\f\u001a\u0004\b\n\u0010\u000bR\u0013\u0010\u0006\u001a\u0004\u0018\u00010\u0007¢\u0006\b\n��\u001a\u0004\b\r\u0010\u000eR\u0015\u0010\b\u001a\u0004\u0018\u00010\u0003¢\u0006\n\n\u0002\u0010\u0011\u001a\u0004\b\u000f\u0010\u0010R\u0015\u0010\u0002\u001a\u0004\u0018\u00010\u0003¢\u0006\n\n\u0002\u0010\u0011\u001a\u0004\b\u0012\u0010\u0010¨\u0006\u001f"}, d2 = {"Lcom/vk/api/sdk/okhttp/RequestTag;", "", "uid", "", "awaitNetwork", "", "reason", "", "retryCount", "(Ljava/lang/Integer;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/Integer;)V", "getAwaitNetwork", "()Ljava/lang/Boolean;", "Ljava/lang/Boolean;", "getReason", "()Ljava/lang/String;", "getRetryCount", "()Ljava/lang/Integer;", "Ljava/lang/Integer;", "getUid", "component1", "component2", "component3", "component4", "copy", "(Ljava/lang/Integer;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/Integer;)Lcom/vk/api/sdk/okhttp/RequestTag;", "equals", "other", "hashCode", "toMap", "", "toString", "libapi-sdk-core_release"}, k = 1, mv = {1, 4, 2})
/* loaded from: classes5-dex2jar.jar:com/vk/api/sdk/c/f.class */
public final class f {

    /* renamed from: a  reason: collision with root package name */
    public final Integer f36028a;

    /* renamed from: b  reason: collision with root package name */
    public final Boolean f36029b;

    /* renamed from: c  reason: collision with root package name */
    public final String f36030c;

    /* renamed from: d  reason: collision with root package name */
    public final Integer f36031d;

    public f() {
        this(null, null, null, null, 15, null);
    }

    public f(Integer num) {
        this(num, null, null, null, 14, null);
    }

    public f(Integer num, Boolean bool) {
        this(num, bool, null, null, 12, null);
    }

    public f(Integer num, Boolean bool, String str) {
        this(num, bool, str, null, 8, null);
    }

    public f(Integer num, Boolean bool, String str, Integer num2) {
        this.f36028a = num;
        this.f36029b = bool;
        this.f36030c = str;
        this.f36031d = num2;
    }

    public /* synthetic */ f(Integer num, Boolean bool, String str, Integer num2, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? null : num, (i & 2) != 0 ? null : bool, (i & 4) != 0 ? null : str, (i & 8) != 0 ? null : num2);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof f)) {
            return false;
        }
        f fVar = (f) obj;
        return p.a(this.f36028a, fVar.f36028a) && p.a(this.f36029b, fVar.f36029b) && p.a((Object) this.f36030c, (Object) fVar.f36030c) && p.a(this.f36031d, fVar.f36031d);
    }

    public final int hashCode() {
        Integer num = this.f36028a;
        int i = 0;
        int hashCode = num != null ? num.hashCode() : 0;
        Boolean bool = this.f36029b;
        int hashCode2 = bool != null ? bool.hashCode() : 0;
        String str = this.f36030c;
        int hashCode3 = str != null ? str.hashCode() : 0;
        Integer num2 = this.f36031d;
        if (num2 != null) {
            i = num2.hashCode();
        }
        return (((((hashCode * 31) + hashCode2) * 31) + hashCode3) * 31) + i;
    }

    public final String toString() {
        return "RequestTag(uid=" + this.f36028a + ", awaitNetwork=" + this.f36029b + ", reason=" + this.f36030c + ", retryCount=" + this.f36031d + ")";
    }
}
