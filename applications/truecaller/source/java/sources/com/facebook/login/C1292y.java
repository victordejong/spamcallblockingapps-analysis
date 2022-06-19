package com.facebook.login;

import android.util.Base64;
import java.security.MessageDigest;
import kotlin.Metadata;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p1538j.C23222c0;
import s1.f0.b;
import s1.z.c.l;
@Metadata(d1 = {"��(\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n��\bÀ\u0002\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J \u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\b\u001a\u00020\u0006H\u0007J\u0018\u0010\t\u001a\u00020\u00062\u0006\u0010\b\u001a\u00020\u00062\u0006\u0010\n\u001a\u00020\u000bH\u0007J\b\u0010\f\u001a\u00020\u0006H\u0007J\u0012\u0010\r\u001a\u00020\u000e2\b\u0010\b\u001a\u0004\u0018\u00010\u0006H\u0007¨\u0006\u000f"}, d2 = {"Lcom/facebook/login/PKCEUtil;", "", "()V", "createCodeExchangeRequest", "Lcom/facebook/GraphRequest;", "authorizationCode", "", "redirectUri", "codeVerifier", "generateCodeChallenge", "codeChallengeMethod", "Lcom/facebook/login/CodeChallengeMethod;", "generateCodeVerifier", "isValidCodeVerifier", "", "facebook-common_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* renamed from: com.facebook.login.y */
/* loaded from: classes2-dex2jar.jar:com/facebook/login/y.class */
public final class C1292y {
    /* renamed from: a */
    public static final String m41539a(String str, EnumC1268h enumC1268h) throws C23222c0 {
        l.e(str, "codeVerifier");
        l.e(enumC1268h, "codeChallengeMethod");
        if (m41538b(str)) {
            if (enumC1268h == EnumC1268h.PLAIN) {
                return str;
            }
            try {
                byte[] bytes = str.getBytes(b.b);
                l.d(bytes, "(this as java.lang.String).getBytes(charset)");
                MessageDigest messageDigest = MessageDigest.getInstance("SHA-256");
                messageDigest.update(bytes, 0, bytes.length);
                String encodeToString = Base64.encodeToString(messageDigest.digest(), 11);
                l.d(encodeToString, "{\n      // try to generate challenge with S256\n      val bytes: ByteArray = codeVerifier.toByteArray(Charsets.US_ASCII)\n      val messageDigest = MessageDigest.getInstance(\"SHA-256\")\n      messageDigest.update(bytes, 0, bytes.size)\n      val digest = messageDigest.digest()\n\n      Base64.encodeToString(digest, Base64.URL_SAFE or Base64.NO_PADDING or Base64.NO_WRAP)\n    }");
                return encodeToString;
            } catch (Exception e) {
                throw new C23222c0(e);
            }
        }
        throw new C23222c0("Invalid Code Verifier.");
    }

    /* renamed from: b */
    public static final boolean m41538b(String str) {
        if ((str.length() == 0) || str.length() < 43 || str.length() > 128) {
            return false;
        }
        return C22128a.m8648Z0("^[-._~A-Za-z0-9]+$", str);
    }
}
