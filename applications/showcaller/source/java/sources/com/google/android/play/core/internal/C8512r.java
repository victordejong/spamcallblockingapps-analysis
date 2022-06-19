package com.google.android.play.core.internal;

import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.Signature;
import android.content.res.AssetManager;
import android.os.Build;
import android.util.Log;
import com.google.android.play.core.splitcompat.C8537b;
import com.google.android.play.core.splitcompat.C8539d;
import java.io.ByteArrayInputStream;
import java.io.File;
import java.security.cert.CertificateException;
import java.security.cert.CertificateFactory;
import java.security.cert.X509Certificate;
import java.util.List;
/* renamed from: com.google.android.play.core.internal.r */
/* loaded from: classes2-dex2jar.jar:com/google/android/play/core/internal/r.class */
public final class C8512r {

    /* renamed from: a */
    private final C8539d f38072a;

    /* renamed from: b */
    private final Context f38073b;

    /* renamed from: c */
    private final C8510q f38074c;

    /* renamed from: d */
    private PackageInfo f38075d;

    /* renamed from: e */
    private final C8516t f38076e;

    public C8512r(Context context, C8539d c8539d, C8516t c8516t, byte[] bArr) {
        C8510q c8510q = new C8510q(new C8537b(c8539d));
        this.f38072a = c8539d;
        this.f38076e = c8516t;
        this.f38073b = context;
        this.f38074c = c8510q;
    }

    /* renamed from: d */
    private final PackageInfo m3475d() {
        if (this.f38075d == null) {
            try {
                this.f38075d = this.f38073b.getPackageManager().getPackageInfo(this.f38073b.getPackageName(), 64);
            } catch (PackageManager.NameNotFoundException e) {
                return null;
            }
        }
        return this.f38075d;
    }

    /* renamed from: e */
    private static X509Certificate m3474e(Signature signature) {
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
    public final boolean m3478a(java.io.File[] r5) {
        /*
            Method dump skipped, instructions count: 394
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.play.core.internal.C8512r.m3478a(java.io.File[]):boolean");
    }

    /* JADX WARN: Type inference failed for: r0v17, types: [long] */
    /* JADX WARN: Type inference failed for: r0v19, types: [long] */
    /* renamed from: b */
    public final boolean m3477b(File[] fileArr) {
        PackageInfo m3475d;
        char longVersionCode = Build.VERSION.SDK_INT >= 28 ? m3475d().getLongVersionCode() : m3475d.versionCode;
        AssetManager assetManager = (AssetManager) C8480d0.m3549c(AssetManager.class);
        int length = fileArr.length;
        do {
            length--;
            if (length < 0) {
                return true;
            }
            this.f38074c.m3481a(assetManager, fileArr[length]);
        } while (longVersionCode == this.f38074c.m3480b());
        return false;
    }

    /* renamed from: c */
    public final boolean m3476c(List<Intent> list) {
        for (Intent intent : list) {
            if (!this.f38072a.m3386c(intent.getStringExtra("split_id")).exists()) {
                return false;
            }
        }
        return true;
    }
}
