package com.google.android.gms.measurement.internal;

import com.google.android.gms.common.internal.C6155o;
import java.net.URL;
import java.util.List;
import java.util.Map;
/* renamed from: com.google.android.gms.measurement.internal.y6 */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/measurement/internal/y6.class */
public final class RunnableC7926y6 implements Runnable {

    /* renamed from: d */
    private final URL f35822d;

    /* renamed from: e */
    private final String f35823e;

    /* renamed from: f */
    final /* synthetic */ C7937z6 f35824f;

    /* renamed from: g */
    private final C7836q4 f35825g;

    public RunnableC7926y6(C7937z6 c7937z6, String str, URL url, byte[] bArr, Map map, C7836q4 c7836q4, byte[] bArr2) {
        this.f35824f = c7937z6;
        C6155o.m17022f(str);
        C6155o.m17018j(url);
        C6155o.m17018j(c7836q4);
        this.f35822d = url;
        this.f35825g = c7836q4;
        this.f35823e = str;
    }

    /* renamed from: b */
    private final void m5884b(int i, Exception exc, byte[] bArr, Map<String, List<String>> map) {
        this.f35824f.f35460a.mo6029b().m6109p(new Runnable(this, i, exc, bArr, map) { // from class: com.google.android.gms.measurement.internal.x6

            /* renamed from: d */
            private final RunnableC7926y6 f35791d;

            /* renamed from: e */
            private final int f35792e;

            /* renamed from: f */
            private final Exception f35793f;

            /* renamed from: g */
            private final byte[] f35794g;

            /* renamed from: h */
            private final Map f35795h;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f35791d = this;
                this.f35792e = i;
                this.f35793f = exc;
                this.f35794g = bArr;
                this.f35795h = map;
            }

            @Override // java.lang.Runnable
            public final void run() {
                this.f35791d.m5885a(this.f35792e, this.f35793f, this.f35794g, this.f35795h);
            }
        });
    }

    /* renamed from: a */
    public final /* synthetic */ void m5885a(int i, Exception exc, byte[] bArr, Map map) {
        this.f35825g.m6094a(this.f35823e, i, exc, bArr, map);
    }

    /* JADX WARN: Not initialized variable reg: 9, insn: 0x0085: MOVE  (r0 I:??[int, float, boolean, short, byte, char, OBJECT, ARRAY]) = (r9 I:??[int, float, boolean, short, byte, char, OBJECT, ARRAY]), block:B:30:0x0082 */
    /* JADX WARN: Not initialized variable reg: 9, insn: 0x008f: MOVE  (r0 I:??[int, float, boolean, short, byte, char, OBJECT, ARRAY]) = (r9 I:??[int, float, boolean, short, byte, char, OBJECT, ARRAY]), block:B:32:0x008c */
    /* JADX WARN: Removed duplicated region for block: B:45:0x00d6  */
    /* JADX WARN: Removed duplicated region for block: B:52:0x00f4  */
    @Override // java.lang.Runnable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void run() {
        /*
            Method dump skipped, instructions count: 259
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.measurement.internal.RunnableC7926y6.run():void");
    }
}
