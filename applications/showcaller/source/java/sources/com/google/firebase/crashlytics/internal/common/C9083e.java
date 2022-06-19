package com.google.firebase.crashlytics.internal.common;

import com.google.firebase.crashlytics.p293d.p297h.AbstractC9004v;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.zip.GZIPOutputStream;
/* renamed from: com.google.firebase.crashlytics.internal.common.e */
/* loaded from: classes2-dex2jar.jar:com/google/firebase/crashlytics/internal/common/e.class */
class C9083e implements AbstractC9129x {

    /* renamed from: a */
    private final byte[] f39286a;

    /* renamed from: b */
    private final String f39287b;

    /* renamed from: c */
    private final String f39288c;

    public C9083e(String str, String str2, byte[] bArr) {
        this.f39287b = str;
        this.f39288c = str2;
        this.f39286a = bArr;
    }

    /* renamed from: c */
    private byte[] m1926c() {
        if (m1925d()) {
            return null;
        }
        try {
            ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
            GZIPOutputStream gZIPOutputStream = new GZIPOutputStream(byteArrayOutputStream);
            try {
                gZIPOutputStream.write(this.f39286a);
                gZIPOutputStream.finish();
                byte[] byteArray = byteArrayOutputStream.toByteArray();
                gZIPOutputStream.close();
                byteArrayOutputStream.close();
                return byteArray;
            } catch (Throwable th) {
                try {
                    gZIPOutputStream.close();
                } catch (Throwable th2) {
                }
                throw th;
            }
        } catch (IOException e) {
            return null;
        }
    }

    /* renamed from: d */
    private boolean m1925d() {
        byte[] bArr = this.f39286a;
        return bArr == null || bArr.length == 0;
    }

    @Override // com.google.firebase.crashlytics.internal.common.AbstractC9129x
    /* renamed from: a */
    public String mo1767a() {
        return this.f39288c;
    }

    @Override // com.google.firebase.crashlytics.internal.common.AbstractC9129x
    /* renamed from: b */
    public AbstractC9004v.AbstractC9008c.AbstractC9010b mo1766b() {
        byte[] m1926c = m1926c();
        return m1926c == null ? null : AbstractC9004v.AbstractC9008c.AbstractC9010b.m2275a().mo2271b(m1926c).mo2270c(this.f39287b).mo2272a();
    }

    @Override // com.google.firebase.crashlytics.internal.common.AbstractC9129x
    /* renamed from: g */
    public InputStream mo1765g() {
        return m1925d() ? null : new ByteArrayInputStream(this.f39286a);
    }
}
