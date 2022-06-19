package p306z5;

import android.content.SharedPreferences;
import android.util.Base64;
import android.util.Log;
import com.google.android.gms.stats.CodePackage;
import java.security.KeyFactory;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.security.PublicKey;
import java.security.spec.InvalidKeySpecException;
import java.security.spec.X509EncodedKeySpec;
import me.zhanghai.android.materialprogressbar.C3681R;
/* renamed from: z5.b */
/* loaded from: classes-dex2jar.jar:z5/b.class */
public class C5105b {

    /* renamed from: c */
    public static final String[] f15473c = {"*", "FCM", CodePackage.GCM, ""};

    /* renamed from: a */
    public final SharedPreferences f15474a;

    /* renamed from: b */
    public final String f15475b;

    /* JADX WARN: Code restructure failed: missing block: B:12:0x0066, code lost:
        if (r0.isEmpty() != false) goto L13;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public C5105b(p241t4.C4392c r6) {
        /*
            r5 = this;
            r0 = r5
            r0.<init>()
            r0 = r6
            r0.m974a()
            r0 = r5
            r1 = r6
            android.content.Context r1 = r1.f13688a
            java.lang.String r2 = "com.google.android.gms.appid"
            r3 = 0
            android.content.SharedPreferences r1 = r1.getSharedPreferences(r2, r3)
            r0.f15474a = r1
            r0 = r6
            r0.m974a()
            r0 = r6
            t4.e r0 = r0.f13690c
            java.lang.String r0 = r0.f13715e
            r7 = r0
            r0 = r7
            if (r0 == 0) goto L2b
            r0 = r7
            r6 = r0
            goto L6b
        L2b:
            r0 = r6
            r0.m974a()
            r0 = r6
            t4.e r0 = r0.f13690c
            java.lang.String r0 = r0.f13712b
            r6 = r0
            r0 = r6
            java.lang.String r1 = "1:"
            boolean r0 = r0.startsWith(r1)
            if (r0 != 0) goto L4c
            r0 = r6
            java.lang.String r1 = "2:"
            boolean r0 = r0.startsWith(r1)
            if (r0 != 0) goto L4c
            goto L6b
        L4c:
            r0 = r6
            java.lang.String r1 = ":"
            java.lang.String[] r0 = r0.split(r1)
            r6 = r0
            r0 = r6
            int r0 = r0.length
            r1 = 4
            if (r0 == r1) goto L5c
            goto L69
        L5c:
            r0 = r6
            r1 = 1
            r0 = r0[r1]
            r7 = r0
            r0 = r7
            r6 = r0
            r0 = r7
            boolean r0 = r0.isEmpty()
            if (r0 == 0) goto L6b
        L69:
            r0 = 0
            r6 = r0
        L6b:
            r0 = r5
            r1 = r6
            r0.f15475b = r1
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: p306z5.C5105b.<init>(t4.c):void");
    }

    /* renamed from: a */
    public final String m33a() {
        PublicKey publicKey;
        String str;
        synchronized (this.f15474a) {
            String string = this.f15474a.getString("|S||P|", null);
            if (string == null) {
                return null;
            }
            try {
                publicKey = KeyFactory.getInstance("RSA").generatePublic(new X509EncodedKeySpec(Base64.decode(string, 8)));
            } catch (IllegalArgumentException | NoSuchAlgorithmException | InvalidKeySpecException e) {
                Log.w("ContentValues", "Invalid key stored " + e);
                publicKey = null;
            }
            if (publicKey == null) {
                return null;
            }
            try {
                byte[] digest = MessageDigest.getInstance("SHA1").digest(publicKey.getEncoded());
                digest[0] = (byte) (((digest[0] & 15) + C3681R.styleable.AppCompatTheme_toolbarNavigationButtonStyle) & 255);
                str = Base64.encodeToString(digest, 0, 8, 11);
            } catch (NoSuchAlgorithmException e2) {
                Log.w("ContentValues", "Unexpected error, device missing required algorithms");
                str = null;
            }
            return str;
        }
    }
}
