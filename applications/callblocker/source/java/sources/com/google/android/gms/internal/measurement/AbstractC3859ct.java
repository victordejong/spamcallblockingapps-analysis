package com.google.android.gms.internal.measurement;

import java.io.Serializable;
import java.nio.charset.Charset;
import java.util.Comparator;
import java.util.Iterator;
import java.util.Locale;
/* renamed from: com.google.android.gms.internal.measurement.ct */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/ct.class */
public abstract class AbstractC3859ct implements Serializable, Iterable<Byte> {

    /* renamed from: a */
    public static final AbstractC3859ct f17943a = new C3873de(C3908ef.f18108b);

    /* renamed from: b */
    private static final AbstractC3869da f17944b;

    /* renamed from: d */
    private static final Comparator<AbstractC3859ct> f17945d;

    /* renamed from: c */
    private int f17946c = 0;

    static {
        f17944b = C3856cq.m5819a() ? new C3876dh(null) : new C3864cy(null);
        f17945d = new C3862cw();
    }

    /* renamed from: a */
    public static AbstractC3859ct m5812a(String str) {
        return new C3873de(str.getBytes(C3908ef.f18107a));
    }

    /* renamed from: a */
    public static AbstractC3859ct m5811a(byte[] bArr) {
        return new C3873de(bArr);
    }

    /* renamed from: a */
    public static AbstractC3859ct m5810a(byte[] bArr, int i, int i2) {
        m5807b(i, i + i2, bArr.length);
        return new C3873de(f17944b.mo5740a(bArr, i, i2));
    }

    /* renamed from: b */
    public static int m5808b(byte b) {
        return b & 255;
    }

    /* renamed from: b */
    public static int m5807b(int i, int i2, int i3) {
        int i4 = i2 - i;
        if ((i | i2 | i4 | (i3 - i2)) < 0) {
            if (i < 0) {
                throw new IndexOutOfBoundsException(new StringBuilder(32).append("Beginning index: ").append(i).append(" < 0").toString());
            }
            if (i2 >= i) {
                throw new IndexOutOfBoundsException(new StringBuilder(37).append("End index: ").append(i2).append(" >= ").append(i3).toString());
            }
            throw new IndexOutOfBoundsException(new StringBuilder(66).append("Beginning index larger than ending index: ").append(i).append(", ").append(i2).toString());
        }
        return i4;
    }

    /* renamed from: c */
    public static C3871dc m5806c(int i) {
        return new C3871dc(i, null);
    }

    /* renamed from: a */
    public abstract byte mo5752a(int i);

    /* renamed from: a */
    public abstract int mo5753a();

    /* renamed from: a */
    protected abstract int mo5750a(int i, int i2, int i3);

    /* renamed from: a */
    public abstract AbstractC3859ct mo5751a(int i, int i2);

    /* renamed from: a */
    protected abstract String mo5748a(Charset charset);

    /* renamed from: a */
    public abstract void mo5749a(AbstractC3861cv abstractC3861cv);

    /* renamed from: b */
    public abstract byte mo5747b(int i);

    /* renamed from: b */
    public final String m5809b() {
        return mo5753a() == 0 ? "" : mo5748a(C3908ef.f18107a);
    }

    /* renamed from: c */
    public abstract boolean mo5746c();

    /* renamed from: d */
    public final int m5805d() {
        return this.f17946c;
    }

    public abstract boolean equals(Object obj);

    public final int hashCode() {
        int i = this.f17946c;
        int i2 = i;
        if (i == 0) {
            int mo5753a = mo5753a();
            int mo5750a = mo5750a(mo5753a, 0, mo5753a);
            i2 = mo5750a;
            if (mo5750a == 0) {
                i2 = 1;
            }
            this.f17946c = i2;
        }
        return i2;
    }

    @Override // java.lang.Iterable
    public /* synthetic */ Iterator<Byte> iterator() {
        return new C3863cx(this);
    }

    public final String toString() {
        return String.format(Locale.ROOT, "<ByteString@%s size=%d contents=\"%s\">", Integer.toHexString(System.identityHashCode(this)), Integer.valueOf(mo5753a()), mo5753a() <= 50 ? C3974gr.m5341a(this) : String.valueOf(C3974gr.m5341a(mo5751a(0, 47))).concat("..."));
    }
}
