package com.google.android.gms.internal.measurement;

import java.io.IOException;
import java.util.logging.Level;
import java.util.logging.Logger;
/* renamed from: com.google.android.gms.internal.measurement.fs */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/measurement/fs.class */
public abstract class AbstractC13506fs extends C13491fd {

    /* renamed from: b */
    private static final Logger f50727b = Logger.getLogger(AbstractC13506fs.class.getName());

    /* renamed from: c */
    private static final boolean f50728c = C13592ix.m12540a();

    /* renamed from: a */
    C13507ft f50729a;

    private AbstractC13506fs() {
    }

    public /* synthetic */ AbstractC13506fs(C13504fq c13504fq) {
    }

    @Deprecated
    /* renamed from: a */
    public static int m12844a(int i, AbstractC13556ho abstractC13556ho, AbstractC13569ia abstractC13569ia) {
        int m12821f = m12821f(i << 3);
        AbstractC13485ey abstractC13485ey = (AbstractC13485ey) abstractC13556ho;
        int mo12760k = abstractC13485ey.mo12760k();
        int i2 = mo12760k;
        if (mo12760k == -1) {
            i2 = abstractC13569ia.mo12651b(abstractC13485ey);
            abstractC13485ey.mo12761b(i2);
        }
        return m12821f + m12821f + i2;
    }

    /* renamed from: a */
    public static int m12840a(AbstractC13500fm abstractC13500fm) {
        int mo12866a = abstractC13500fm.mo12866a();
        return m12821f(mo12866a) + mo12866a;
    }

    /* renamed from: a */
    public static int m12839a(C13538gx c13538gx) {
        int m12739a = c13538gx.m12739a();
        return m12821f(m12739a) + m12739a;
    }

    /* renamed from: a */
    public static int m12838a(AbstractC13556ho abstractC13556ho, AbstractC13569ia abstractC13569ia) {
        AbstractC13485ey abstractC13485ey = (AbstractC13485ey) abstractC13556ho;
        int mo12760k = abstractC13485ey.mo12760k();
        int i = mo12760k;
        if (mo12760k == -1) {
            i = abstractC13569ia.mo12651b(abstractC13485ey);
            abstractC13485ey.mo12761b(i);
        }
        return m12821f(i) + i;
    }

    /* renamed from: a */
    public static int m12837a(String str) {
        int i;
        try {
            i = C13598jc.m12506a(str);
        } catch (C13597jb e) {
            i = str.getBytes(C13534gt.f50765a).length;
        }
        return m12821f(i) + i;
    }

    /* renamed from: a */
    public static AbstractC13506fs m12835a(byte[] bArr) {
        return new C13505fr(bArr, 0, bArr.length);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v23, types: [long] */
    /* JADX WARN: Type inference failed for: r0v26, types: [long] */
    /* JADX WARN: Type inference failed for: r5v1 */
    /* JADX WARN: Type inference failed for: r5v2 */
    /* JADX WARN: Type inference failed for: r5v3 */
    /* renamed from: c */
    public static int m12825c(long j) {
        int i;
        ?? r5;
        if (((-128) & j) == 0) {
            return 1;
        }
        if (j < 0) {
            return 10;
        }
        if (((-34359738368L) & j) != 0) {
            r5 = j >>> 28;
            i = 6;
        } else {
            i = 2;
            r5 = j;
        }
        int i2 = i;
        byte b = r5;
        if ((0 & r5) != 0) {
            i2 = i + 2;
            b = r5 >>> 14;
        }
        int i3 = i2;
        if ((b & (-16384)) != 0) {
            i3 = i2 + 1;
        }
        return i3;
    }

    /* renamed from: d */
    public static int m12824d(int i) {
        return m12821f(i << 3);
    }

    /* renamed from: e */
    public static int m12822e(int i) {
        if (i >= 0) {
            return m12821f(i);
        }
        return 10;
    }

    /* renamed from: f */
    public static int m12821f(int i) {
        if ((i & (-128)) == 0) {
            return 1;
        }
        if ((i & (-16384)) == 0) {
            return 2;
        }
        if (((-2097152) & i) == 0) {
            return 3;
        }
        return (i & (-268435456)) == 0 ? 4 : 5;
    }

    /* renamed from: a */
    public abstract int mo12850a();

    /* renamed from: a */
    public abstract void mo12849a(byte b) throws IOException;

    /* renamed from: a */
    public abstract void mo12848a(int i) throws IOException;

    /* renamed from: a */
    public abstract void mo12847a(int i, int i2) throws IOException;

    /* renamed from: a */
    public abstract void mo12846a(int i, long j) throws IOException;

    /* renamed from: a */
    public abstract void mo12845a(int i, AbstractC13500fm abstractC13500fm) throws IOException;

    /* renamed from: a */
    public abstract void mo12843a(int i, String str) throws IOException;

    /* renamed from: a */
    public abstract void mo12842a(int i, boolean z) throws IOException;

    /* renamed from: a */
    public abstract void mo12841a(long j) throws IOException;

    /* renamed from: a */
    public final void m12836a(String str, C13597jb c13597jb) throws IOException {
        f50727b.logp(Level.WARNING, "com.google.protobuf.CodedOutputStream", "inefficientWriteStringNoTag", "Converting ill-formed UTF-16. Your Protocol Buffer will not round trip correctly!", (Throwable) c13597jb);
        byte[] bytes = str.getBytes(C13534gt.f50765a);
        try {
            int length = bytes.length;
            mo12833b(length);
            mo12829b(bytes, length);
        } catch (zzgx e) {
            throw e;
        } catch (IndexOutOfBoundsException e2) {
            throw new zzgx(e2);
        }
    }

    /* renamed from: b */
    public final void m12834b() {
        if (mo12850a() == 0) {
            return;
        }
        throw new IllegalStateException("Did not write as much data as expected.");
    }

    /* renamed from: b */
    public abstract void mo12833b(int i) throws IOException;

    /* renamed from: b */
    public abstract void mo12832b(int i, int i2) throws IOException;

    /* renamed from: b */
    public abstract void mo12831b(int i, long j) throws IOException;

    /* renamed from: b */
    public abstract void mo12830b(long j) throws IOException;

    /* renamed from: b */
    public abstract void mo12829b(byte[] bArr, int i) throws IOException;

    /* renamed from: c */
    public abstract void mo12827c(int i) throws IOException;

    /* renamed from: c */
    public abstract void mo12826c(int i, int i2) throws IOException;

    /* renamed from: d */
    public abstract void mo12823d(int i, int i2) throws IOException;
}
