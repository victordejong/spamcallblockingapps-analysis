package com.google.android.play.core.internal;

import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.Signature;
import android.content.res.AssetManager;
import android.os.Build;
import android.util.Log;
import com.google.android.play.core.splitcompat.b;
import com.google.android.play.core.splitcompat.d;
import java.io.ByteArrayInputStream;
import java.io.File;
import java.io.IOException;
import java.security.cert.CertificateException;
import java.security.cert.CertificateFactory;
import java.security.cert.X509Certificate;
import org.xmlpull.v1.XmlPullParserException;
/* loaded from: classes4-dex2jar.jar:com/google/android/play/core/internal/v.class */
public final class v {

    /* renamed from: a  reason: collision with root package name */
    final d f31396a;

    /* renamed from: b  reason: collision with root package name */
    private final Context f31397b;

    /* renamed from: c  reason: collision with root package name */
    private final u f31398c;

    /* renamed from: d  reason: collision with root package name */
    private PackageInfo f31399d;
    private final x e;

    public v(Context context, d dVar, x xVar, byte[] bArr) {
        u uVar = new u(new b(dVar));
        this.f31396a = dVar;
        this.e = xVar;
        this.f31397b = context;
        this.f31398c = uVar;
    }

    private final PackageInfo a() {
        if (this.f31399d == null) {
            try {
                this.f31399d = this.f31397b.getPackageManager().getPackageInfo(this.f31397b.getPackageName(), 64);
            } catch (PackageManager.NameNotFoundException e) {
                return null;
            }
        }
        return this.f31399d;
    }

    private static X509Certificate a(Signature signature) {
        try {
            return (X509Certificate) CertificateFactory.getInstance("X509").generateCertificate(new ByteArrayInputStream(signature.toByteArray()));
        } catch (CertificateException e) {
            Log.e("SplitCompat", "Cannot decode certificate.", e);
            return null;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:35:0x00a6, code lost:
        android.util.Log.e("SplitCompat", r5);
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean a(java.io.File[] r5) {
        /*
            Method dump skipped, instructions count: 386
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.play.core.internal.v.a(java.io.File[]):boolean");
    }

    public final boolean b(File[] fileArr) throws IOException, XmlPullParserException {
        PackageInfo a2;
        long longVersionCode = Build.VERSION.SDK_INT >= 28 ? a().getLongVersionCode() : a2.versionCode;
        AssetManager assetManager = (AssetManager) ah.a((Class<Object>) AssetManager.class);
        int length = fileArr.length;
        do {
            length--;
            if (length < 0) {
                return true;
            }
            this.f31398c.f31394a = assetManager.openXmlResourceParser(b.a(assetManager, fileArr[length]), "AndroidManifest.xml");
        } while (longVersionCode == this.f31398c.a());
        return false;
    }
}
