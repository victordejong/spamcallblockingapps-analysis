package com.squareup.okhttp;

import com.squareup.okhttp.p089u.C2975i;
import okio.BufferedSink;
/* renamed from: com.squareup.okhttp.q */
/* loaded from: classes2-dex2jar.jar:com/squareup/okhttp/q.class */
public abstract class AbstractC2957q {

    /* renamed from: com.squareup.okhttp.q$a */
    /* loaded from: classes2-dex2jar.jar:com/squareup/okhttp/q$a.class */
    public static final class C2958a extends AbstractC2957q {

        /* renamed from: a */
        final /* synthetic */ int f12466a;

        /* renamed from: b */
        final /* synthetic */ byte[] f12467b;

        /* renamed from: c */
        final /* synthetic */ int f12468c;

        C2958a(C2951n c2951n, int i, byte[] bArr, int i2) {
            this.f12466a = i;
            this.f12467b = bArr;
            this.f12468c = i2;
        }

        @Override // com.squareup.okhttp.AbstractC2957q
        /* renamed from: a */
        public long mo764a() {
            return this.f12466a;
        }

        @Override // com.squareup.okhttp.AbstractC2957q
        /* renamed from: d */
        public void mo763d(BufferedSink bufferedSink) {
            bufferedSink.write(this.f12467b, this.f12468c, this.f12466a);
        }
    }

    /* renamed from: b */
    public static AbstractC2957q m766b(C2951n c2951n, byte[] bArr) {
        return m765c(c2951n, bArr, 0, bArr.length);
    }

    /* renamed from: c */
    public static AbstractC2957q m765c(C2951n c2951n, byte[] bArr, int i, int i2) {
        if (bArr != null) {
            C2975i.m659a(bArr.length, i, i2);
            return new C2958a(c2951n, i2, bArr, i);
        }
        throw new NullPointerException("content == null");
    }

    /* renamed from: a */
    public abstract long mo764a();

    /* renamed from: d */
    public abstract void mo763d(BufferedSink bufferedSink);
}
