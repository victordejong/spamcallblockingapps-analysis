package com.vk.api.sdk.internal;

import android.net.Uri;
import com.vk.api.sdk.e.c;
import com.vk.api.sdk.e.e;
import com.vk.api.sdk.e.h;
import java.util.Iterator;
import java.util.Map;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.aa;
import kotlin.jvm.internal.ac;
import kotlin.jvm.internal.p;
import kotlin.jvm.internal.r;
import kotlin.reflect.KProperty;
@Metadata(bv = {1, 0, 3}, d1 = {"��.\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000e\n��\n\u0002\u0010$\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\t\bÆ\u0002\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J8\u0010\n\u001a\u00020\u000b2\u0012\u0010\f\u001a\u000e\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\u000b0\r2\u0006\u0010\u000e\u001a\u00020\u000b2\n\b\u0002\u0010\u000f\u001a\u0004\u0018\u00010\u000b2\b\b\u0002\u0010\u0010\u001a\u00020\u0011JL\u0010\u0012\u001a\u00020\u000b2\u0006\u0010\u0013\u001a\u00020\u000b2\u0012\u0010\f\u001a\u000e\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\u000b0\r2\u0006\u0010\u000e\u001a\u00020\u000b2\n\b\u0002\u0010\u000f\u001a\u0004\u0018\u00010\u000b2\n\b\u0002\u0010\u0014\u001a\u0004\u0018\u00010\u000b2\b\b\u0002\u0010\u0010\u001a\u00020\u0011JF\u0010\u0015\u001a\u00020\u000b2\u0006\u0010\u0016\u001a\u00020\u000b2\u0012\u0010\u0017\u001a\u000e\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\u000b0\r2\u0006\u0010\u0018\u001a\u00020\u000b2\b\u0010\u000f\u001a\u0004\u0018\u00010\u000b2\b\u0010\u0014\u001a\u0004\u0018\u00010\u000b2\u0006\u0010\u0010\u001a\u00020\u0011J,\u0010\u0019\u001a\u00020\u000b2\u0006\u0010\u0013\u001a\u00020\u000b2\u0012\u0010\f\u001a\u000e\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\u000b0\r2\b\u0010\u0014\u001a\u0004\u0018\u00010\u000bR\u001f\u0010\u0003\u001a\u00060\u0004j\u0002`\u00058BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\b\u0010\t\u001a\u0004\b\u0006\u0010\u0007¨\u0006\u001a"}, d2 = {"Lcom/vk/api/sdk/internal/QueryStringGenerator;", "", "()V", "strBuilder", "Ljava/lang/StringBuilder;", "Lkotlin/text/StringBuilder;", "getStrBuilder", "()Ljava/lang/StringBuilder;", "strBuilder$delegate", "Lcom/vk/api/sdk/utils/ThreadLocalDelegate;", "buildNotSignedQueryString", "", "args", "", "version", "accessToken", "appId", "", "buildSignedQueryString", "path", "secret", "buildSignedQueryStringForMethod", "methodName", "methodArgs", "methodVersion", "buildSignedQueryStringForce", "libapi-sdk-core_release"}, k = 1, mv = {1, 4, 2})
/* loaded from: classes5-dex2jar.jar:com/vk/api/sdk/internal/b.class */
public final class b {

    /* renamed from: a  reason: collision with root package name */
    static final /* synthetic */ KProperty[] f36090a = {ac.a(new aa(b.class, "strBuilder", "getStrBuilder()Ljava/lang/StringBuilder;", 0))};

    /* renamed from: b  reason: collision with root package name */
    public static final b f36091b = new b();

    /* renamed from: c  reason: collision with root package name */
    private static final c f36092c = e.a(a.f36093a);

    @Metadata(bv = {1, 0, 3}, d1 = {"��\f\n��\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\u0010��\u001a\u00060\u0001j\u0002`\u0002H\n¢\u0006\u0002\b\u0003"}, d2 = {"<anonymous>", "Ljava/lang/StringBuilder;", "Lkotlin/text/StringBuilder;", "invoke"}, k = 3, mv = {1, 4, 2})
    /* loaded from: classes5-dex2jar.jar:com/vk/api/sdk/internal/b$a.class */
    static final class a extends r implements Function0<StringBuilder> {

        /* renamed from: a  reason: collision with root package name */
        public static final a f36093a = new a();

        a() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        public final /* synthetic */ StringBuilder invoke() {
            return new StringBuilder();
        }
    }

    private b() {
    }

    private final StringBuilder a() {
        return (StringBuilder) f36092c.a(f36090a[0]);
    }

    public final String a(String path, Map<String, String> args, String str) {
        p.d(path, "path");
        p.d(args, "args");
        Uri.Builder builder = new Uri.Builder();
        Iterator<T> it2 = args.entrySet().iterator();
        while (it2.hasNext()) {
            Map.Entry entry = (Map.Entry) it2.next();
            if (!p.a((Object) ((String) entry.getKey()), (Object) "sig")) {
                builder.appendQueryParameter((String) entry.getKey(), (String) entry.getValue());
            }
        }
        Uri uri = builder.build();
        String str2 = str;
        String str3 = "";
        if (str2 == null || str2.length() == 0) {
            p.b(uri, "uri");
            String encodedQuery = uri.getEncodedQuery();
            if (encodedQuery != null) {
                str3 = encodedQuery;
            }
            return str3;
        }
        p.b(uri, "uri");
        String query = uri.getQuery();
        a().setLength(0);
        StringBuilder a2 = a();
        a2.append(path);
        a2.append('?');
        String str4 = query;
        boolean z = true;
        if (str4 != null) {
            z = kotlin.h.p.a((CharSequence) str4);
        }
        if (!z) {
            a().append(query);
        }
        a().append(str);
        String sb = a().toString();
        p.b(sb, "strBuilder.toString()");
        Uri signedUri = uri.buildUpon().appendQueryParameter("sig", h.a.a(sb)).build();
        p.b(signedUri, "signedUri");
        String encodedQuery2 = signedUri.getEncodedQuery();
        if (encodedQuery2 == null) {
            encodedQuery2 = str3;
        }
        return encodedQuery2;
    }
}
