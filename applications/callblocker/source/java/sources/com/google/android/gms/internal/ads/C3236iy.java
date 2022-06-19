package com.google.android.gms.internal.ads;

import java.io.IOException;
import java.io.InputStream;
/* renamed from: com.google.android.gms.internal.ads.iy */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/iy.class */
public class C3236iy implements dqu {

    /* renamed from: a */
    private static final boolean f16791a = C3128ez.f16642a;
    @Deprecated

    /* renamed from: b */
    private final AbstractC3488sg f16792b;

    /* renamed from: c */
    private final AbstractC3158ga f16793c;

    /* renamed from: d */
    private final C3208hx f16794d;

    public C3236iy(AbstractC3158ga abstractC3158ga) {
        this(abstractC3158ga, new C3208hx(4096));
    }

    /* JADX WARN: Multi-variable type inference failed */
    private C3236iy(AbstractC3158ga abstractC3158ga, C3208hx c3208hx) {
        this.f16793c = abstractC3158ga;
        this.f16792b = abstractC3158ga;
        this.f16794d = c3208hx;
    }

    /* renamed from: a */
    private static void m7743a(String str, dts<?> dtsVar, zzae zzaeVar) {
        AbstractC2854cc m8590k = dtsVar.m8590k();
        int m8591j = dtsVar.m8591j();
        try {
            m8590k.mo9361a(zzaeVar);
            dtsVar.m8600b(String.format("%s-retry [timeout=%s]", str, Integer.valueOf(m8591j)));
        } catch (zzae e) {
            dtsVar.m8600b(String.format("%s-timeout-giveup [timeout=%s]", str, Integer.valueOf(m8591j)));
            throw e;
        }
    }

    /* JADX WARN: Not initialized variable reg: 10, insn: 0x003b: MOVE  (r1 I:??[int, float, boolean, short, byte, char, OBJECT, ARRAY]) = (r10 I:??[int, float, boolean, short, byte, char, OBJECT, ARRAY]), block:B:16:0x0038 */
    /* renamed from: a */
    private final byte[] m7744a(InputStream inputStream, int i) {
        byte[] bArr;
        C3594we c3594we = new C3594we(this.f16794d, i);
        try {
            if (inputStream == null) {
                throw new zzac();
            }
            byte[] m7768a = this.f16794d.m7768a(1024);
            while (true) {
                int read = inputStream.read(m7768a);
                if (read == -1) {
                    break;
                }
                c3594we.write(m7768a, 0, read);
            }
            byte[] byteArray = c3594we.toByteArray();
            if (inputStream != null) {
                try {
                    inputStream.close();
                } catch (IOException e) {
                    C3128ez.m7853a("Error occurred when closing InputStream", new Object[0]);
                }
            }
            this.f16794d.m7767a(m7768a);
            c3594we.close();
            return byteArray;
        } catch (Throwable th) {
            if (inputStream != null) {
                try {
                    inputStream.close();
                } catch (IOException e2) {
                    C3128ez.m7853a("Error occurred when closing InputStream", new Object[0]);
                }
            }
            this.f16794d.m7767a(bArr);
            c3594we.close();
            throw th;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:22:0x0072, code lost:
        return r11;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v176, types: [java.util.Map] */
    @Override // com.google.android.gms.internal.ads.dqu
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public com.google.android.gms.internal.ads.drt mo6883a(com.google.android.gms.internal.ads.dts<?> r11) {
        /*
            Method dump skipped, instructions count: 1084
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.C3236iy.mo6883a(com.google.android.gms.internal.ads.dts):com.google.android.gms.internal.ads.drt");
    }
}
