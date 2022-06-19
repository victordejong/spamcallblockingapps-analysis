package com.google.android.gms.internal.ads;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/cyj.class */
abstract class cyj extends cxl<String> {

    /* renamed from: a */
    final CharSequence f46763a;

    /* renamed from: b */
    private final cxp f46764b;

    /* renamed from: e */
    private int f46767e;

    /* renamed from: d */
    private int f46766d = 0;

    /* renamed from: c */
    private final boolean f46765c = false;

    public cyj(cyf cyfVar, CharSequence charSequence) {
        this.f46764b = cyfVar.f46757a;
        this.f46767e = cyfVar.f46758b;
        this.f46763a = charSequence;
    }

    /* renamed from: a */
    abstract int mo17053a(int i);

    /* JADX WARN: Code restructure failed: missing block: B:14:0x0060, code lost:
        r6 = r7;
     */
    /* JADX WARN: Code restructure failed: missing block: B:15:0x0065, code lost:
        if (r9 >= r7) goto L43;
     */
    /* JADX WARN: Code restructure failed: missing block: B:16:0x0068, code lost:
        r6 = r7;
     */
    /* JADX WARN: Code restructure failed: missing block: B:17:0x007c, code lost:
        if (r5.f46764b.mo17073b(r5.f46763a.charAt(r9)) == false) goto L44;
     */
    /* JADX WARN: Code restructure failed: missing block: B:18:0x007f, code lost:
        r9 = r9 + 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:20:0x0088, code lost:
        if (r6 <= r9) goto L45;
     */
    /* JADX WARN: Code restructure failed: missing block: B:22:0x009e, code lost:
        if (r5.f46764b.mo17073b(r5.f46763a.charAt(r6 - 1)) == false) goto L46;
     */
    /* JADX WARN: Code restructure failed: missing block: B:23:0x00a1, code lost:
        r6 = r6 - 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:24:0x00a7, code lost:
        r0 = r5.f46767e;
     */
    /* JADX WARN: Code restructure failed: missing block: B:25:0x00ae, code lost:
        if (r0 != 1) goto L32;
     */
    /* JADX WARN: Code restructure failed: missing block: B:26:0x00b1, code lost:
        r7 = r5.f46763a.length();
        r5.f46766d = -1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:27:0x00c0, code lost:
        r6 = r7;
     */
    /* JADX WARN: Code restructure failed: missing block: B:28:0x00c5, code lost:
        if (r7 <= r9) goto L48;
     */
    /* JADX WARN: Code restructure failed: missing block: B:29:0x00c8, code lost:
        r6 = r7;
     */
    /* JADX WARN: Code restructure failed: missing block: B:30:0x00dd, code lost:
        if (r5.f46764b.mo17073b(r5.f46763a.charAt(r7 - 1)) == false) goto L49;
     */
    /* JADX WARN: Code restructure failed: missing block: B:31:0x00e0, code lost:
        r7 = r7 - 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:32:0x00e6, code lost:
        r5.f46767e = r0 - 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:34:0x00fe, code lost:
        return r5.f46763a.subSequence(r9, r6).toString();
     */
    @Override // com.google.android.gms.internal.ads.cxl
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    protected final /* synthetic */ java.lang.String mo17054a() {
        /*
            Method dump skipped, instructions count: 262
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.cyj.mo17054a():java.lang.Object");
    }

    /* renamed from: b */
    abstract int mo17052b(int i);
}
