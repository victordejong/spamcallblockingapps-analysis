package com.p488vk.api.sdk.p496e.p497a;

import android.util.Log;
import com.p488vk.api.sdk.p496e.p497a.AbstractC17665c;
import kotlin.Lazy;
import kotlin.Metadata;
import kotlin.jvm.internal.C18524p;
@Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��2\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010\u000e\n\u0002\b\b\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0010\u0003\n��\b\u0016\u0018��2\u00020\u0001B\u001b\u0012\f\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0006¢\u0006\u0002\u0010\u0007J\u0010\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u0004H\u0002J$\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u00042\b\u0010\u0014\u001a\u0004\u0018\u00010\u00062\b\u0010\u0015\u001a\u0004\u0018\u00010\u0016H\u0016R \u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003X\u0096\u000e¢\u0006\u000e\n��\u001a\u0004\b\b\u0010\t\"\u0004\b\n\u0010\u000bR\u0014\u0010\u0005\u001a\u00020\u0006X\u0096\u0004¢\u0006\b\n��\u001a\u0004\b\f\u0010\r¨\u0006\u0017"}, m4298d2 = {"Lcom/vk/api/sdk/utils/log/DefaultApiLogger;", "Lcom/vk/api/sdk/utils/log/Logger;", "logLevel", "Lkotlin/Lazy;", "Lcom/vk/api/sdk/utils/log/Logger$LogLevel;", "tag", "", "(Lkotlin/Lazy;Ljava/lang/String;)V", "getLogLevel", "()Lkotlin/Lazy;", "setLogLevel", "(Lkotlin/Lazy;)V", "getTag", "()Ljava/lang/String;", "checkLevel", "", "messageLevel", "log", "", "level", "msg", "err", "", "libapi-sdk-core_release"}, m4297k = 1, m4296mv = {1, 4, 2})
/* renamed from: com.vk.api.sdk.e.a.a */
/* loaded from: classes5-dex2jar.jar:com/vk/api/sdk/e/a/a.class */
public final class C17663a implements AbstractC17665c {

    /* renamed from: a */
    private Lazy<? extends AbstractC17665c.EnumC17666a> f62468a;

    /* renamed from: b */
    private final String f62469b;

    public C17663a(Lazy<? extends AbstractC17665c.EnumC17666a> logLevel, String tag) {
        C18524p.m3840d(logLevel, "logLevel");
        C18524p.m3840d(tag, "tag");
        this.f62468a = logLevel;
        this.f62469b = tag;
    }

    @Override // com.p488vk.api.sdk.p496e.p497a.AbstractC17665c
    /* renamed from: a */
    public final Lazy<AbstractC17665c.EnumC17666a> mo4848a() {
        return this.f62468a;
    }

    @Override // com.p488vk.api.sdk.p496e.p497a.AbstractC17665c
    /* renamed from: a */
    public final void mo4847a(AbstractC17665c.EnumC17666a level, String str, Throwable th) {
        C18524p.m3840d(level, "level");
        if (this.f62468a.mo1102a().ordinal() > level.ordinal()) {
            return;
        }
        int i = C17664b.f62470a[level.ordinal()];
        if (i == 4) {
            Log.w(this.f62469b, str, th);
        } else if (i != 5) {
        } else {
            Log.e(this.f62469b, str, th);
        }
    }
}
