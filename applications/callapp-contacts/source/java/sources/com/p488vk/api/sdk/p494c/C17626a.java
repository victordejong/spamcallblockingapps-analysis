package com.p488vk.api.sdk.p494c;

import com.p488vk.api.sdk.p496e.p497a.AbstractC17665c;
import kotlin.Metadata;
import kotlin.jvm.internal.C18524p;
@Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��&\n\u0002\u0018\u0002\n\u0002\u0010��\n��\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n��\n\u0002\u0010\u000e\n��\b\u0086\b\u0018��2\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\t\u0010\u0007\u001a\u00020\u0003HÆ\u0003J\u0013\u0010\b\u001a\u00020��2\b\b\u0002\u0010\u0002\u001a\u00020\u0003HÆ\u0001J\u0013\u0010\t\u001a\u00020\n2\b\u0010\u000b\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\f\u001a\u00020\rHÖ\u0001J\t\u0010\u000e\u001a\u00020\u000fHÖ\u0001R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n��\u001a\u0004\b\u0005\u0010\u0006¨\u0006\u0010"}, m4298d2 = {"Lcom/vk/api/sdk/okhttp/LogLevelRequestTag;", "", "level", "Lcom/vk/api/sdk/utils/log/Logger$LogLevel;", "(Lcom/vk/api/sdk/utils/log/Logger$LogLevel;)V", "getLevel", "()Lcom/vk/api/sdk/utils/log/Logger$LogLevel;", "component1", "copy", "equals", "", "other", "hashCode", "", "toString", "", "libapi-sdk-core_release"}, m4297k = 1, m4296mv = {1, 4, 2})
/* renamed from: com.vk.api.sdk.c.a */
/* loaded from: classes5-dex2jar.jar:com/vk/api/sdk/c/a.class */
public final class C17626a {

    /* renamed from: a */
    final AbstractC17665c.EnumC17666a f62382a;

    public C17626a(AbstractC17665c.EnumC17666a level) {
        C18524p.m3840d(level, "level");
        this.f62382a = level;
    }

    public final boolean equals(Object obj) {
        if (this != obj) {
            return (obj instanceof C17626a) && C18524p.m3850a(this.f62382a, ((C17626a) obj).f62382a);
        }
        return true;
    }

    public final int hashCode() {
        AbstractC17665c.EnumC17666a enumC17666a = this.f62382a;
        if (enumC17666a != null) {
            return enumC17666a.hashCode();
        }
        return 0;
    }

    public final String toString() {
        return "LogLevelRequestTag(level=" + this.f62382a + ")";
    }
}
