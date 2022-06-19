package com.criteo.publisher.context;

import java.nio.charset.Charset;
import java.security.MessageDigest;
import java.util.Arrays;
import java.util.Locale;
import kotlin.Metadata;
import kotlin.TypeCastException;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.AbstractC18526r;
import kotlin.jvm.internal.C18524p;
import kotlin.p518a.C18273i;
import kotlin.p532h.C18405d;
import kotlin.p532h.C18425p;
@Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��\f\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\t\bÆ\u0002\u0018��B\t\b\u0002¢\u0006\u0004\b\b\u0010\tJ\u0017\u0010\u0003\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0001H\u0007¢\u0006\u0004\b\u0003\u0010\u0004J\u001b\u0010\u0006\u001a\u00020\u0001*\u00020\u00012\u0006\u0010\u0005\u001a\u00020\u0001H\u0002¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\n"}, m4298d2 = {"Lcom/criteo/publisher/context/EmailHasher;", "", "email", "hash", "(Ljava/lang/String;)Ljava/lang/String;", "type", "toHash", "(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;", "<init>", "()V", "publisher-sdk_release"}, m4297k = 1, m4296mv = {1, 1, 15}, m4295pn = "", m4294xi = 0, m4293xs = "")
/* loaded from: classes2-dex2jar.jar:com/criteo/publisher/context/EmailHasher.class */
public final class EmailHasher {

    /* renamed from: a */
    public static final EmailHasher f29815a = new EmailHasher();

    /* renamed from: com.criteo.publisher.context.EmailHasher$a */
    /* loaded from: classes2-dex2jar.jar:com/criteo/publisher/context/EmailHasher$a.class */
    public static final class C8263a extends AbstractC18526r implements Function1<Byte, String> {

        /* renamed from: a */
        public static final C8263a f29816a = new C8263a();

        C8263a() {
            super(1);
        }

        @Override // kotlin.jvm.functions.Function1
        public final /* synthetic */ String invoke(Byte b) {
            String format = String.format("%02x", Arrays.copyOf(new Object[]{Byte.valueOf(b.byteValue())}, 1));
            C18524p.m3849a((Object) format, "java.lang.String.format(this, *args)");
            return format;
        }
    }

    private EmailHasher() {
    }

    /* renamed from: a */
    private static String m25954a(String str, String str2) {
        String a;
        MessageDigest messageDigest = MessageDigest.getInstance(str2);
        Charset charset = C18405d.f63516a;
        if (str != null) {
            byte[] bytes = str.getBytes(charset);
            C18524p.m3849a((Object) bytes, "(this as java.lang.String).getBytes(charset)");
            byte[] digest = messageDigest.digest(bytes);
            C18524p.m3849a((Object) digest, "MessageDigest.getInstanc…   .digest(toByteArray())");
            a = C18273i.m4213a(digest, "", "", "", -1, "...", C8263a.f29816a);
            return a;
        }
        throw new TypeCastException("null cannot be cast to non-null type java.lang.String");
    }

    public static final String hash(String email) {
        C18524p.m3841c(email, "email");
        String obj = C18425p.m3930b((CharSequence) email).toString();
        Locale locale = Locale.ROOT;
        C18524p.m3849a((Object) locale, "Locale.ROOT");
        if (obj != null) {
            String lowerCase = obj.toLowerCase(locale);
            C18524p.m3849a((Object) lowerCase, "(this as java.lang.String).toLowerCase(locale)");
            return m25954a(m25954a(lowerCase, "MD5"), "SHA-256");
        }
        throw new TypeCastException("null cannot be cast to non-null type java.lang.String");
    }
}
