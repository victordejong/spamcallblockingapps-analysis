package com.p488vk.api.sdk.internal;

import android.content.Context;
import kotlin.Metadata;
@Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��*\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0010\u0002\n��\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\bÆ\u0002\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0010\u0010\u0003\u001a\u00020\u00042\b\u0010\u0005\u001a\u0004\u0018\u00010\u0006J\u000e\u0010\u0007\u001a\u00020\u00042\u0006\u0010\b\u001a\u00020\tJ\u0010\u0010\n\u001a\u00020\u00042\b\u0010\u000b\u001a\u0004\u0018\u00010\fJ\u0010\u0010\r\u001a\u00020\u00042\b\u0010\u000e\u001a\u0004\u0018\u00010\u0006J\u0010\u0010\u000f\u001a\u00020\u00042\b\u0010\u0010\u001a\u0004\u0018\u00010\u0006¨\u0006\u0011"}, m4298d2 = {"Lcom/vk/api/sdk/internal/Validation;", "", "()V", "assertAccessTokenValid", "", "accessToken", "", "assertCallsPerSecondLimitValid", "limit", "", "assertContextValid", "context", "Landroid/content/Context;", "assertHttpHostValid", "host", "assertLangValid", "lang", "libapi-sdk-core_release"}, m4297k = 1, m4296mv = {1, 4, 2})
/* renamed from: com.vk.api.sdk.internal.d */
/* loaded from: classes5-dex2jar.jar:com/vk/api/sdk/internal/d.class */
public final class C17696d {

    /* renamed from: a */
    public static final C17696d f62523a = new C17696d();

    private C17696d() {
    }

    /* renamed from: a */
    public static void m4816a(Context context) {
        if (context != null) {
            return;
        }
        throw new IllegalArgumentException("context is null");
    }

    /* renamed from: a */
    public static void m4815a(String str) {
        if (str != null) {
            return;
        }
        throw new IllegalArgumentException("Illegal accessToken value");
    }
}
