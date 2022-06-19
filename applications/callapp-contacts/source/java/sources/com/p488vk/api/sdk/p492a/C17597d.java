package com.p488vk.api.sdk.p492a;

import android.os.Bundle;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashSet;
import java.util.Set;
import kotlin.Metadata;
import kotlin.jvm.internal.C18524p;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.p518a.C18240ab;
import kotlin.p518a.C18282n;
@Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��2\n\u0002\u0018\u0002\n\u0002\u0010��\n��\n\u0002\u0010\b\n��\n\u0002\u0010\u000e\n��\n\u0002\u0010\u001e\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\"\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\u0018�� \u00132\u00020\u0001:\u0001\u0013B)\b\u0007\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\b\b\u0002\u0010\u0004\u001a\u00020\u0005\u0012\u000e\b\u0002\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\b0\u0007¢\u0006\u0002\u0010\tJ\u0006\u0010\u000f\u001a\u00020\u0005J\u0006\u0010\u0010\u001a\u00020\u0011J\u0006\u0010\u0012\u001a\u00020\u0011R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n��\u001a\u0004\b\n\u0010\u000bR\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n��\u001a\u0004\b\f\u0010\rR\u0014\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\b0\u000eX\u0082\u0004¢\u0006\u0002\n��¨\u0006\u0014"}, m4298d2 = {"Lcom/vk/api/sdk/auth/VKAuthParams;", "", "appId", "", "redirectUrl", "", "scope", "", "Lcom/vk/api/sdk/auth/VKScope;", "(ILjava/lang/String;Ljava/util/Collection;)V", "getAppId", "()I", "getRedirectUrl", "()Ljava/lang/String;", "", "getScopeString", "toBundle", "Landroid/os/Bundle;", "toExtraBundle", "Companion", "libapi-sdk-core_release"}, m4297k = 1, m4296mv = {1, 4, 2})
/* renamed from: com.vk.api.sdk.a.d */
/* loaded from: classes5-dex2jar.jar:com/vk/api/sdk/a/d.class */
public final class C17597d {

    /* renamed from: d */
    public static final C17598a f62327d = new C17598a(null);

    /* renamed from: a */
    public final Set<EnumC17600f> f62328a;

    /* renamed from: b */
    public final int f62329b;

    /* renamed from: c */
    public final String f62330c;

    @Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"�� \n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\b\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\b\u0086\u0003\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0012\u0010\f\u001a\u0004\u0018\u00010\r2\b\u0010\u000e\u001a\u0004\u0018\u00010\u000fR\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n��R\u000e\u0010\u0005\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n��R\u000e\u0010\u0006\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n��R\u000e\u0010\u0007\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n��R\u000e\u0010\b\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n��R\u000e\u0010\t\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n��R\u000e\u0010\n\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n��R\u000e\u0010\u000b\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n��¨\u0006\u0010"}, m4298d2 = {"Lcom/vk/api/sdk/auth/VKAuthParams$Companion;", "", "()V", "DEFAULT_REDIRECT_URL", "", "VK_APP_ID_KEY", "VK_APP_REDIRECT_URL_KEY", "VK_APP_SCOPE_KEY", "VK_EXTRA_CLIENT_ID", "VK_EXTRA_REDIRECT_URL", "VK_EXTRA_REVOKE", "VK_EXTRA_SCOPE", "fromBundle", "Lcom/vk/api/sdk/auth/VKAuthParams;", "bundle", "Landroid/os/Bundle;", "libapi-sdk-core_release"}, m4297k = 1, m4296mv = {1, 4, 2})
    /* renamed from: com.vk.api.sdk.a.d$a */
    /* loaded from: classes5-dex2jar.jar:com/vk/api/sdk/a/d$a.class */
    public static final class C17598a {
        private C17598a() {
        }

        public /* synthetic */ C17598a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    public C17597d(int i) {
        this(i, null, null, 6, null);
    }

    public C17597d(int i, String str) {
        this(i, str, null, 4, null);
    }

    public C17597d(int i, String redirectUrl, Collection<? extends EnumC17600f> scope) {
        C18524p.m3840d(redirectUrl, "redirectUrl");
        C18524p.m3840d(scope, "scope");
        this.f62329b = i;
        this.f62330c = redirectUrl;
        if (i != 0) {
            this.f62328a = new HashSet(scope);
            return;
        }
        throw new IllegalStateException("AppId is empty! Find out how to get your appId at https://vk.com/dev/access_token");
    }

    public /* synthetic */ C17597d(int i, String str, Collection collection, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(i, (i2 & 2) != 0 ? "https://oauth.vk.com/blank.html" : str, (i2 & 4) != 0 ? C18240ab.f63351a : collection);
    }

    /* renamed from: a */
    public final Bundle m4892a() {
        Bundle bundle = new Bundle();
        bundle.putInt("vk_app_id", this.f62329b);
        Set<EnumC17600f> set = this.f62328a;
        ArrayList arrayList = new ArrayList(C18282n.m4163a(set, 10));
        for (EnumC17600f enumC17600f : set) {
            arrayList.add(enumC17600f.name());
        }
        bundle.putStringArrayList("vk_app_scope", new ArrayList<>(arrayList));
        bundle.putString("vk_app_redirect_url", this.f62330c);
        return bundle;
    }
}
