package com.criteo.publisher.context;

import androidx.annotation.Keep;
import com.razorpay.AnalyticsConstants;
import java.security.MessageDigest;
import java.util.Locale;
import kotlin.Metadata;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import s1.f0.b;
import s1.f0.v;
import s1.p;
import s1.z.c.l;
@Metadata(bv = {1, 0, 3}, d1 = {"��\f\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\t\bÆ\u0002\u0018��B\t\b\u0002¢\u0006\u0004\b\b\u0010\tJ\u0017\u0010\u0003\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0001H\u0007¢\u0006\u0004\b\u0003\u0010\u0004J\u001b\u0010\u0006\u001a\u00020\u0001*\u00020\u00012\u0006\u0010\u0005\u001a\u00020\u0001H\u0002¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\n"}, d2 = {"Lcom/criteo/publisher/context/EmailHasher;", "", AnalyticsConstants.EMAIL, "hash", "(Ljava/lang/String;)Ljava/lang/String;", "type", "toHash", "(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;", "<init>", "()V", "publisher-sdk_release"}, k = 1, mv = {1, 4, 0})
/* loaded from: classes-dex2jar.jar:com/criteo/publisher/context/EmailHasher.class */
public final class EmailHasher {

    /* renamed from: a */
    public static final EmailHasher f2446a = new EmailHasher();

    @Keep
    public static final String hash(String str) {
        l.f(str, AnalyticsConstants.EMAIL);
        EmailHasher emailHasher = f2446a;
        String obj = v.g0(str).toString();
        Locale locale = Locale.ROOT;
        l.b(locale, "Locale.ROOT");
        if (obj != null) {
            String lowerCase = obj.toLowerCase(locale);
            l.b(lowerCase, "(this as java.lang.String).toLowerCase(locale)");
            return emailHasher.m42040a(emailHasher.m42040a(lowerCase, "MD5"), "SHA-256");
        }
        throw new p("null cannot be cast to non-null type java.lang.String");
    }

    /* renamed from: a */
    public final String m42040a(String str, String str2) {
        MessageDigest messageDigest = MessageDigest.getInstance(str2);
        byte[] bytes = str.getBytes(b.a);
        l.b(bytes, "(this as java.lang.String).getBytes(charset)");
        byte[] digest = messageDigest.digest(bytes);
        l.b(digest, "MessageDigest.getInstanc…   .digest(toByteArray())");
        return C25225a.m3998K1(digest, "", null, null, 0, null, a.b, 30);
    }
}
