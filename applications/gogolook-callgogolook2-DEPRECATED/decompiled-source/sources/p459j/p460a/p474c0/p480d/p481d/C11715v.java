package p459j.p460a.p474c0.p480d.p481d;

import android.util.Log;
import androidx.exifinterface.media.ExifInterface;
import p459j.p460a.p474c0.p480d.C11687a;
/* renamed from: j.a.c0.d.d.v */
/* loaded from: classes2-dex2jar.jar:j/a/c0/d/d/v.class */
public class C11715v extends C11696g {
    public C11715v() {
        try {
            m8583a(128);
            m8580b(18);
            m8448a("application/vnd.wap.multipart.related".getBytes());
            m8582a(new C11694e("insert-address-token".getBytes()));
            m8443c(m8442d());
        } catch (C11687a e) {
            Log.e("SendReq", "Unexpected InvalidHeaderValueException.", e);
            throw new RuntimeException(e);
        }
    }

    public C11715v(C11706m mVar, C11699j jVar) {
        super(mVar, jVar);
    }

    /* renamed from: a */
    public void m8448a(byte[] bArr) {
        this.f26231a.m8528a(bArr, 132);
    }

    /* renamed from: a */
    public void m8447a(C11694e[] eVarArr) {
        this.f26231a.m8527a(eVarArr, 151);
    }

    /* renamed from: b */
    public void m8446b(long j) {
        this.f26231a.m8530a(j, 136);
    }

    /* renamed from: b */
    public void m8445b(byte[] bArr) {
        this.f26231a.m8528a(bArr, 138);
    }

    /* renamed from: c */
    public void m8444c(long j) {
        this.f26231a.m8530a(j, 142);
    }

    /* renamed from: c */
    public void m8443c(byte[] bArr) {
        this.f26231a.m8528a(bArr, 152);
    }

    /* renamed from: d */
    public void m8441d(int i) throws C11687a {
        this.f26231a.m8531a(i, 134);
    }

    /* renamed from: d */
    public final byte[] m8442d() {
        return (ExifInterface.GPS_DIRECTION_TRUE + Long.toHexString(System.currentTimeMillis())).getBytes();
    }

    /* renamed from: e */
    public void m8440e(int i) throws C11687a {
        this.f26231a.m8531a(i, 144);
    }
}
