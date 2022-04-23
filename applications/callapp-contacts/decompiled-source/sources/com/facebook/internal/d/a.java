package com.facebook.internal.d;

import android.content.Context;
import android.content.pm.PackageManager;
import android.content.pm.Signature;
import android.util.Base64;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import kotlin.Metadata;
import kotlin.jvm.internal.p;
@Metadata(bv = {1, 0, 3}, d1 = {"��\u001a\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n��\bÆ\u0002\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0010\u0010\u0006\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\bH\u0007R\u0016\u0010\u0003\u001a\u00020\u00048\u0006X\u0087T¢\u0006\b\n��\u0012\u0004\b\u0005\u0010\u0002¨\u0006\t"}, d2 = {"Lcom/facebook/internal/security/CertificateUtil;", "", "()V", "DELIMITER", "", "getDELIMITER$annotations", "getCertificateHash", "ctx", "Landroid/content/Context;", "facebook-core_release"}, k = 1, mv = {1, 4, 0})
/* loaded from: classes3-dex2jar.jar:com/facebook/internal/d/a.class */
public final class a {

    /* renamed from: a  reason: collision with root package name */
    public static final a f19925a = new a();

    private a() {
    }

    public static final String a(Context ctx) {
        p.d(ctx, "ctx");
        try {
            Signature[] signatureArr = ctx.getPackageManager().getPackageInfo(ctx.getPackageName(), 64).signatures;
            StringBuilder sb = new StringBuilder();
            MessageDigest instance = MessageDigest.getInstance("SHA1");
            boolean z = false;
            for (Signature signature : signatureArr) {
                instance.update(signature.toByteArray());
                sb.append(Base64.encodeToString(instance.digest(), 0));
                sb.append(":");
            }
            if (sb.length() > 0) {
                z = true;
            }
            if (z) {
                sb.setLength(sb.length() - 1);
            }
            String sb2 = sb.toString();
            p.b(sb2, "sb.toString()");
            return sb2;
        } catch (PackageManager.NameNotFoundException | NoSuchAlgorithmException e) {
            return "";
        }
    }
}
