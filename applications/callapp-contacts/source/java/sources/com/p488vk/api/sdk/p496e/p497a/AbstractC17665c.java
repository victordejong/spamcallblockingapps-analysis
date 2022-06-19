package com.p488vk.api.sdk.p496e.p497a;

import kotlin.Lazy;
import kotlin.Metadata;
@Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��.\n\u0002\u0018\u0002\n\u0002\u0010��\n��\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0010\u0003\n\u0002\b\u0002\bf\u0018��2\u00020\u0001:\u0001\u0011J(\u0010\u000b\u001a\u00020\f2\u0006\u0010\r\u001a\u00020\u00042\n\b\u0002\u0010\u000e\u001a\u0004\u0018\u00010\b2\n\b\u0002\u0010\u000f\u001a\u0004\u0018\u00010\u0010H&R\u0018\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003X¦\u0004¢\u0006\u0006\u001a\u0004\b\u0005\u0010\u0006R\u0012\u0010\u0007\u001a\u00020\bX¦\u0004¢\u0006\u0006\u001a\u0004\b\t\u0010\n¨\u0006\u0012"}, m4298d2 = {"Lcom/vk/api/sdk/utils/log/Logger;", "", "logLevel", "Lkotlin/Lazy;", "Lcom/vk/api/sdk/utils/log/Logger$LogLevel;", "getLogLevel", "()Lkotlin/Lazy;", "tag", "", "getTag", "()Ljava/lang/String;", "log", "", "level", "msg", "err", "", "LogLevel", "libapi-sdk-core_release"}, m4297k = 1, m4296mv = {1, 4, 2})
/* renamed from: com.vk.api.sdk.e.a.c */
/* loaded from: classes5-dex2jar.jar:com/vk/api/sdk/e/a/c.class */
public interface AbstractC17665c {

    @Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0010\u000f\n\u0002\b\u0007\b\u0086\u0001\u0018��2\b\u0012\u0004\u0012\u00020��0\u00012\b\u0012\u0004\u0012\u00020��0\u0002B\u0007\b\u0002¢\u0006\u0002\u0010\u0003j\u0002\b\u0004j\u0002\b\u0005j\u0002\b\u0006j\u0002\b\u0007j\u0002\b\b¨\u0006\t"}, m4298d2 = {"Lcom/vk/api/sdk/utils/log/Logger$LogLevel;", "", "", "(Ljava/lang/String;I)V", "VERBOSE", "DEBUG", "WARNING", "ERROR", "NONE", "libapi-sdk-core_release"}, m4297k = 1, m4296mv = {1, 4, 2})
    /* renamed from: com.vk.api.sdk.e.a.c$a */
    /* loaded from: classes5-dex2jar.jar:com/vk/api/sdk/e/a/c$a.class */
    public enum EnumC17666a implements Comparable<EnumC17666a> {
        VERBOSE,
        DEBUG,
        WARNING,
        ERROR,
        NONE
    }

    /* renamed from: a */
    Lazy<EnumC17666a> mo4848a();

    /* renamed from: a */
    void mo4847a(EnumC17666a enumC17666a, String str, Throwable th);
}
