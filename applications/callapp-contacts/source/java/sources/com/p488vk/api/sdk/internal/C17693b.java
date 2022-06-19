package com.p488vk.api.sdk.internal;

import android.net.Uri;
import com.p488vk.api.sdk.p496e.AbstractC17669c;
import com.p488vk.api.sdk.p496e.C17672e;
import com.p488vk.api.sdk.p496e.C17676h;
import java.util.Iterator;
import java.util.Map;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.AbstractC18526r;
import kotlin.jvm.internal.C18489aa;
import kotlin.jvm.internal.C18496ac;
import kotlin.jvm.internal.C18524p;
import kotlin.p532h.C18425p;
import kotlin.reflect.KProperty;
@Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��.\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000e\n��\n\u0002\u0010$\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\t\bÆ\u0002\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J8\u0010\n\u001a\u00020\u000b2\u0012\u0010\f\u001a\u000e\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\u000b0\r2\u0006\u0010\u000e\u001a\u00020\u000b2\n\b\u0002\u0010\u000f\u001a\u0004\u0018\u00010\u000b2\b\b\u0002\u0010\u0010\u001a\u00020\u0011JL\u0010\u0012\u001a\u00020\u000b2\u0006\u0010\u0013\u001a\u00020\u000b2\u0012\u0010\f\u001a\u000e\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\u000b0\r2\u0006\u0010\u000e\u001a\u00020\u000b2\n\b\u0002\u0010\u000f\u001a\u0004\u0018\u00010\u000b2\n\b\u0002\u0010\u0014\u001a\u0004\u0018\u00010\u000b2\b\b\u0002\u0010\u0010\u001a\u00020\u0011JF\u0010\u0015\u001a\u00020\u000b2\u0006\u0010\u0016\u001a\u00020\u000b2\u0012\u0010\u0017\u001a\u000e\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\u000b0\r2\u0006\u0010\u0018\u001a\u00020\u000b2\b\u0010\u000f\u001a\u0004\u0018\u00010\u000b2\b\u0010\u0014\u001a\u0004\u0018\u00010\u000b2\u0006\u0010\u0010\u001a\u00020\u0011J,\u0010\u0019\u001a\u00020\u000b2\u0006\u0010\u0013\u001a\u00020\u000b2\u0012\u0010\f\u001a\u000e\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\u000b0\r2\b\u0010\u0014\u001a\u0004\u0018\u00010\u000bR\u001f\u0010\u0003\u001a\u00060\u0004j\u0002`\u00058BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\b\u0010\t\u001a\u0004\b\u0006\u0010\u0007¨\u0006\u001a"}, m4298d2 = {"Lcom/vk/api/sdk/internal/QueryStringGenerator;", "", "()V", "strBuilder", "Ljava/lang/StringBuilder;", "Lkotlin/text/StringBuilder;", "getStrBuilder", "()Ljava/lang/StringBuilder;", "strBuilder$delegate", "Lcom/vk/api/sdk/utils/ThreadLocalDelegate;", "buildNotSignedQueryString", "", "args", "", "version", "accessToken", "appId", "", "buildSignedQueryString", "path", "secret", "buildSignedQueryStringForMethod", "methodName", "methodArgs", "methodVersion", "buildSignedQueryStringForce", "libapi-sdk-core_release"}, m4297k = 1, m4296mv = {1, 4, 2})
/* renamed from: com.vk.api.sdk.internal.b */
/* loaded from: classes5-dex2jar.jar:com/vk/api/sdk/internal/b.class */
public final class C17693b {

    /* renamed from: a */
    static final /* synthetic */ KProperty[] f62518a = {C18496ac.m3883a(new C18489aa(C17693b.class, "strBuilder", "getStrBuilder()Ljava/lang/StringBuilder;", 0))};

    /* renamed from: b */
    public static final C17693b f62519b = new C17693b();

    /* renamed from: c */
    private static final AbstractC17669c f62520c = C17672e.m4841a(C17694a.f62521a);

    @Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��\f\n��\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\u0010��\u001a\u00060\u0001j\u0002`\u0002H\n¢\u0006\u0002\b\u0003"}, m4298d2 = {"<anonymous>", "Ljava/lang/StringBuilder;", "Lkotlin/text/StringBuilder;", "invoke"}, m4297k = 3, m4296mv = {1, 4, 2})
    /* renamed from: com.vk.api.sdk.internal.b$a */
    /* loaded from: classes5-dex2jar.jar:com/vk/api/sdk/internal/b$a.class */
    static final class C17694a extends AbstractC18526r implements Function0<StringBuilder> {

        /* renamed from: a */
        public static final C17694a f62521a = new C17694a();

        C17694a() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        public final /* synthetic */ StringBuilder invoke() {
            return new StringBuilder();
        }
    }

    private C17693b() {
    }

    /* renamed from: a */
    private final StringBuilder m4822a() {
        return (StringBuilder) f62520c.mo4842a(f62518a[0]);
    }

    /* renamed from: a */
    public final String m4821a(String path, Map<String, String> args, String str) {
        C18524p.m3840d(path, "path");
        C18524p.m3840d(args, "args");
        Uri.Builder builder = new Uri.Builder();
        Iterator<T> it2 = args.entrySet().iterator();
        while (it2.hasNext()) {
            Map.Entry entry = (Map.Entry) it2.next();
            if (!C18524p.m3850a((Object) ((String) entry.getKey()), (Object) "sig")) {
                builder.appendQueryParameter((String) entry.getKey(), (String) entry.getValue());
            }
        }
        Uri uri = builder.build();
        String str2 = str;
        String str3 = "";
        if (str2 == null || str2.length() == 0) {
            C18524p.m3843b(uri, "uri");
            String encodedQuery = uri.getEncodedQuery();
            if (encodedQuery != null) {
                str3 = encodedQuery;
            }
            return str3;
        }
        C18524p.m3843b(uri, "uri");
        String query = uri.getQuery();
        m4822a().setLength(0);
        StringBuilder m4822a = m4822a();
        m4822a.append(path);
        m4822a.append('?');
        String str4 = query;
        boolean z = true;
        if (str4 != null) {
            z = C18425p.m3966a((CharSequence) str4);
        }
        if (!z) {
            m4822a().append(query);
        }
        m4822a().append(str);
        String sb = m4822a().toString();
        C18524p.m3843b(sb, "strBuilder.toString()");
        Uri signedUri = uri.buildUpon().appendQueryParameter("sig", C17676h.C17677a.m4834a(sb)).build();
        C18524p.m3843b(signedUri, "signedUri");
        String encodedQuery2 = signedUri.getEncodedQuery();
        if (encodedQuery2 == null) {
            encodedQuery2 = str3;
        }
        return encodedQuery2;
    }
}
