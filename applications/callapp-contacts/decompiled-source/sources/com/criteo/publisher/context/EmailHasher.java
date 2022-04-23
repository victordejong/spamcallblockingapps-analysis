package com.criteo.publisher.context;

import java.nio.charset.Charset;
import java.security.MessageDigest;
import java.util.Arrays;
import java.util.Locale;
import kotlin.Metadata;
import kotlin.TypeCastException;
import kotlin.a.i;
import kotlin.h.d;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.p;
import kotlin.jvm.internal.r;
@Metadata(bv = {1, 0, 3}, d1 = {"��\f\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\t\bÆ\u0002\u0018��B\t\b\u0002¢\u0006\u0004\b\b\u0010\tJ\u0017\u0010\u0003\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0001H\u0007¢\u0006\u0004\b\u0003\u0010\u0004J\u001b\u0010\u0006\u001a\u00020\u0001*\u00020\u00012\u0006\u0010\u0005\u001a\u00020\u0001H\u0002¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\n"}, d2 = {"Lcom/criteo/publisher/context/EmailHasher;", "", "email", "hash", "(Ljava/lang/String;)Ljava/lang/String;", "type", "toHash", "(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;", "<init>", "()V", "publisher-sdk_release"}, k = 1, mv = {1, 1, 15}, pn = "", xi = 0, xs = "")
/* loaded from: classes2-dex2jar.jar:com/criteo/publisher/context/EmailHasher.class */
public final class EmailHasher {

    /* renamed from: a  reason: collision with root package name */
    public static final EmailHasher f17209a = new EmailHasher();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2-dex2jar.jar:com/criteo/publisher/context/EmailHasher$a.class */
    public static final class a extends r implements Function1<Byte, String> {

        /* renamed from: a  reason: collision with root package name */
        public static final a f17210a = new a();

        a() {
            super(1);
        }

        @Override // kotlin.jvm.functions.Function1
        public final /* synthetic */ String invoke(Byte b2) {
            String format = String.format("%02x", Arrays.copyOf(new Object[]{Byte.valueOf(b2.byteValue())}, 1));
            p.a((Object) format, "java.lang.String.format(this, *args)");
            return format;
        }
    }

    private EmailHasher() {
    }

    private static String a(String str, String str2) {
        String a2;
        MessageDigest instance = MessageDigest.getInstance(str2);
        Charset charset = d.f36719a;
        if (str != null) {
            byte[] bytes = str.getBytes(charset);
            p.a((Object) bytes, "(this as java.lang.String).getBytes(charset)");
            byte[] digest = instance.digest(bytes);
            p.a((Object) digest, "MessageDigest.getInstanc…   .digest(toByteArray())");
            a2 = i.a(digest, "", "", "", -1, "...", a.f17210a);
            return a2;
        }
        throw new TypeCastException("null cannot be cast to non-null type java.lang.String");
    }

    public static final String hash(String email) {
        p.c(email, "email");
        String obj = kotlin.h.p.b((CharSequence) email).toString();
        Locale locale = Locale.ROOT;
        p.a((Object) locale, "Locale.ROOT");
        if (obj != null) {
            String lowerCase = obj.toLowerCase(locale);
            p.a((Object) lowerCase, "(this as java.lang.String).toLowerCase(locale)");
            return a(a(lowerCase, "MD5"), "SHA-256");
        }
        throw new TypeCastException("null cannot be cast to non-null type java.lang.String");
    }
}
