package com.google.android.gms.measurement.internal;

import com.google.android.gms.common.internal.C1581h;
import java.net.URL;
import java.util.List;
import java.util.Map;
/* renamed from: com.google.android.gms.measurement.internal.y6 */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/y6.class */
final class RunnableC2375y6 implements Runnable {

    /* renamed from: b */
    private final URL f10499b;

    /* renamed from: c */
    private final String f10500c;

    /* renamed from: d */
    final /* synthetic */ z6 f10501d;

    /* renamed from: e */
    private final C2321q4 f10502e;

    public RunnableC2375y6(z6 z6Var, String str, URL url, byte[] bArr, Map map, C2321q4 q4Var, byte[] bArr2) {
        this.f10501d = z6Var;
        C1581h.m8351d(str);
        C1581h.m8347h(url);
        C1581h.m8347h(q4Var);
        this.f10499b = url;
        this.f10502e = q4Var;
        this.f10500c = str;
    }

    /* renamed from: b */
    private final void m3804b(final int i, final Exception exc, final byte[] bArr, final Map<String, List<String>> map) {
        ((m5) this.f10501d).a.c().p(new Runnable(this, i, exc, bArr, map) { // from class: com.google.android.gms.measurement.internal.x6

            /* renamed from: b */
            private final RunnableC2375y6 f10470b;

            /* renamed from: c */
            private final int f10471c;

            /* renamed from: d */
            private final Exception f10472d;

            /* renamed from: e */
            private final byte[] f10473e;

            /* renamed from: f */
            private final Map f10474f;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f10470b = this;
                this.f10471c = i;
                this.f10472d = exc;
                this.f10473e = bArr;
                this.f10474f = map;
            }

            @Override // java.lang.Runnable
            public final void run() {
                this.f10470b.m3805a(this.f10471c, this.f10472d, this.f10473e, this.f10474f);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public final /* synthetic */ void m3805a(int i, Exception exc, byte[] bArr, Map map) {
        this.f10502e.m3849a(this.f10500c, i, exc, bArr, map);
    }

    /* JADX WARN: Not initialized variable reg: 9, insn: 0x008e: MOVE  (r0 I:??[int, float, boolean, short, byte, char, OBJECT, ARRAY]) = (r9 I:??[int, float, boolean, short, byte, char, OBJECT, ARRAY]), block:B:33:0x008b */
    /* JADX WARN: Not initialized variable reg: 9, insn: 0x0098: MOVE  (r0 I:??[int, float, boolean, short, byte, char, OBJECT, ARRAY]) = (r9 I:??[int, float, boolean, short, byte, char, OBJECT, ARRAY]), block:B:35:0x0095 */
    /* JADX WARN: Removed duplicated region for block: B:48:0x00df  */
    /* JADX WARN: Removed duplicated region for block: B:55:0x00fd  */
    @Override // java.lang.Runnable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void run() {
        /*
            Method dump skipped, instructions count: 268
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.measurement.internal.RunnableC2375y6.run():void");
    }
}
