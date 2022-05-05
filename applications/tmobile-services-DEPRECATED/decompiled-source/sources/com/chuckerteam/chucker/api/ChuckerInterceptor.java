package com.chuckerteam.chucker.api;

import android.content.Context;
import java.io.IOException;
import kotlin.Metadata;
import kotlin.jvm.JvmOverloads;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import okhttp3.Interceptor;
import okhttp3.Response;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(bv = {1, 0, 3}, d1 = {"��0\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0011\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n��\n\u0002\u0010��\n\u0002\b\u0007\u0018��2\u00020\u0001BA\b\u0007\u0012\u0006\u0010\r\u001a\u00020\f\u0012\n\b\u0002\u0010\u000f\u001a\u0004\u0018\u00010\u000e\u0012\n\b\u0002\u0010\u0010\u001a\u0004\u0018\u00010\u000e\u0012\n\b\u0002\u0010\u0011\u001a\u0004\u0018\u00010\u000e\u0012\n\b\u0002\u0010\u0012\u001a\u0004\u0018\u00010\u000e¢\u0006\u0004\b\u0013\u0010\u0014J\u0017\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016¢\u0006\u0004\b\u0005\u0010\u0006J!\u0010\n\u001a\u00020��2\u0012\u0010\t\u001a\n\u0012\u0006\b\u0001\u0012\u00020\b0\u0007\"\u00020\b¢\u0006\u0004\b\n\u0010\u000b¨\u0006\u0015"}, d2 = {"Lcom/chuckerteam/chucker/api/ChuckerInterceptor;", "Lokhttp3/Interceptor;", "Lokhttp3/Interceptor$Chain;", "chain", "Lokhttp3/Response;", "intercept", "(Lokhttp3/Interceptor$Chain;)Lokhttp3/Response;", "", "", "names", "redactHeaders", "([Ljava/lang/String;)Lcom/chuckerteam/chucker/api/ChuckerInterceptor;", "Landroid/content/Context;", "context", "", "collector", "maxContentLength", "headersToRedact", "alwaysReadResponseBody", "<init>", "(Landroid/content/Context;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V", "com.github.ChuckerTeam.Chucker.library-no-op"}, k = 1, mv = {1, 1, 15}, pn = "", xi = 0, xs = "")
/* loaded from: classes-dex2jar.jar:com/chuckerteam/chucker/api/ChuckerInterceptor.class */
public final class ChuckerInterceptor implements Interceptor {
    @JvmOverloads
    public ChuckerInterceptor(@NotNull Context context) {
        this(context, null, null, null, null, 30, null);
    }

    @JvmOverloads
    public ChuckerInterceptor(@NotNull Context context, @Nullable Object obj, @Nullable Object obj2, @Nullable Object obj3, @Nullable Object obj4) {
        Intrinsics.m1830e(context, "context");
    }

    public /* synthetic */ ChuckerInterceptor(Context context, Object obj, Object obj2, Object obj3, Object obj4, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(context, (i & 2) != 0 ? null : obj, (i & 4) != 0 ? null : obj2, (i & 8) != 0 ? null : obj3, (i & 16) != 0 ? null : obj4);
    }

    @Override // okhttp3.Interceptor
    @NotNull
    public Response intercept(@NotNull Interceptor.Chain chain) throws IOException {
        Intrinsics.m1830e(chain, "chain");
        Response proceed = chain.proceed(chain.request());
        Intrinsics.m1831d(proceed, "chain.proceed(request)");
        return proceed;
    }
}
