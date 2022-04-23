package com.vk.api.sdk.e.a;

import android.util.Log;
import com.vk.api.sdk.e.a.c;
import kotlin.Lazy;
import kotlin.Metadata;
import kotlin.jvm.internal.p;
@Metadata(bv = {1, 0, 3}, d1 = {"��2\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010\u000e\n\u0002\b\b\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0010\u0003\n��\b\u0016\u0018��2\u00020\u0001B\u001b\u0012\f\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0006¢\u0006\u0002\u0010\u0007J\u0010\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u0004H\u0002J$\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u00042\b\u0010\u0014\u001a\u0004\u0018\u00010\u00062\b\u0010\u0015\u001a\u0004\u0018\u00010\u0016H\u0016R \u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003X\u0096\u000e¢\u0006\u000e\n��\u001a\u0004\b\b\u0010\t\"\u0004\b\n\u0010\u000bR\u0014\u0010\u0005\u001a\u00020\u0006X\u0096\u0004¢\u0006\b\n��\u001a\u0004\b\f\u0010\r¨\u0006\u0017"}, d2 = {"Lcom/vk/api/sdk/utils/log/DefaultApiLogger;", "Lcom/vk/api/sdk/utils/log/Logger;", "logLevel", "Lkotlin/Lazy;", "Lcom/vk/api/sdk/utils/log/Logger$LogLevel;", "tag", "", "(Lkotlin/Lazy;Ljava/lang/String;)V", "getLogLevel", "()Lkotlin/Lazy;", "setLogLevel", "(Lkotlin/Lazy;)V", "getTag", "()Ljava/lang/String;", "checkLevel", "", "messageLevel", "log", "", "level", "msg", "err", "", "libapi-sdk-core_release"}, k = 1, mv = {1, 4, 2})
/* loaded from: classes5-dex2jar.jar:com/vk/api/sdk/e/a/a.class */
public final class a implements c {

    /* renamed from: a  reason: collision with root package name */
    private Lazy<? extends c.a> f36051a;

    /* renamed from: b  reason: collision with root package name */
    private final String f36052b;

    public a(Lazy<? extends c.a> logLevel, String tag) {
        p.d(logLevel, "logLevel");
        p.d(tag, "tag");
        this.f36051a = logLevel;
        this.f36052b = tag;
    }

    @Override // com.vk.api.sdk.e.a.c
    public final Lazy<c.a> a() {
        return this.f36051a;
    }

    @Override // com.vk.api.sdk.e.a.c
    public final void a(c.a level, String str, Throwable th) {
        p.d(level, "level");
        if (!(((c.a) this.f36051a.a()).ordinal() > level.ordinal())) {
            int i = b.f36053a[level.ordinal()];
            if (i == 4) {
                Log.w(this.f36052b, str, th);
            } else if (i == 5) {
                Log.e(this.f36052b, str, th);
            }
        }
    }
}
