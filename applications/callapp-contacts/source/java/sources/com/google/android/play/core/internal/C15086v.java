package com.google.android.play.core.internal;

import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.Signature;
import android.content.res.AssetManager;
import android.os.Build;
import android.util.Log;
import com.google.android.play.core.splitcompat.C15106b;
import com.google.android.play.core.splitcompat.C15108d;
import java.io.ByteArrayInputStream;
import java.io.File;
import java.io.IOException;
import java.security.cert.CertificateException;
import java.security.cert.CertificateFactory;
import java.security.cert.X509Certificate;
import org.xmlpull.v1.XmlPullParserException;
/* renamed from: com.google.android.play.core.internal.v */
/* loaded from: classes4-dex2jar.jar:com/google/android/play/core/internal/v.class */
public final class C15086v {

    /* renamed from: a */
    final C15108d f54809a;

    /* renamed from: b */
    private final Context f54810b;

    /* renamed from: c */
    private final C15085u f54811c;

    /* renamed from: d */
    private PackageInfo f54812d;

    /* renamed from: e */
    private final C15088x f54813e;

    public C15086v(Context context, C15108d c15108d, C15088x c15088x, byte[] bArr) {
        C15085u c15085u = new C15085u(new C15106b(c15108d));
        this.f54809a = c15108d;
        this.f54813e = c15088x;
        this.f54810b = context;
        this.f54811c = c15085u;
    }

    /* renamed from: a */
    private final PackageInfo m9487a() {
        if (this.f54812d == null) {
            try {
                this.f54812d = this.f54810b.getPackageManager().getPackageInfo(this.f54810b.getPackageName(), 64);
            } catch (PackageManager.NameNotFoundException e) {
                return null;
            }
        }
        return this.f54812d;
    }

    /* renamed from: a */
    private static X509Certificate m9486a(Signature signature) {
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
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean m9485a(java.io.File[] r5) {
        /*
            Method dump skipped, instructions count: 386
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.play.core.internal.C15086v.m9485a(java.io.File[]):boolean");
    }

    /* JADX WARN: Type inference failed for: r0v17, types: [long] */
    /* JADX WARN: Type inference failed for: r0v19, types: [long] */
    /* renamed from: b */
    public final boolean m9484b(File[] fileArr) throws IOException, XmlPullParserException {
        PackageInfo m9487a;
        char longVersionCode = Build.VERSION.SDK_INT >= 28 ? m9487a().getLongVersionCode() : m9487a.versionCode;
        AssetManager assetManager = (AssetManager) C15017ah.m9604a((Class<Object>) AssetManager.class);
        int length = fileArr.length;
        do {
            length--;
            if (length < 0) {
                return true;
            }
            this.f54811c.f54807a = assetManager.openXmlResourceParser(C15106b.m9450a(assetManager, fileArr[length]), "AndroidManifest.xml");
        } while (longVersionCode == this.f54811c.m9488a());
        return false;
    }
}
