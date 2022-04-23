package com.google.android.gms.internal.ads;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/cyj.class */
abstract class cyj extends cxl<String> {

    /* renamed from: a  reason: collision with root package name */
    final CharSequence f26569a;

    /* renamed from: b  reason: collision with root package name */
    private final cxp f26570b;
    private int e;

    /* renamed from: d  reason: collision with root package name */
    private int f26572d = 0;

    /* renamed from: c  reason: collision with root package name */
    private final boolean f26571c = false;

    /* JADX INFO: Access modifiers changed from: protected */
    public cyj(cyf cyfVar, CharSequence charSequence) {
        this.f26570b = cyfVar.f26563a;
        this.e = cyfVar.f26564b;
        this.f26569a = charSequence;
    }

    abstract int a(int i);

    /* JADX WARN: Code restructure failed: missing block: B:14:0x0060, code lost:
        r6 = r7;
     */
    /* JADX WARN: Code restructure failed: missing block: B:15:0x0065, code lost:
        if (r9 >= r7) goto L_0x0085;
     */
    /* JADX WARN: Code restructure failed: missing block: B:16:0x0068, code lost:
        r6 = r7;
     */
    /* JADX WARN: Code restructure failed: missing block: B:17:0x007c, code lost:
        if (r5.f26570b.b(r5.f26569a.charAt(r9)) == false) goto L_0x0085;
     */
    /* JADX WARN: Code restructure failed: missing block: B:18:0x007f, code lost:
        r9 = r9 + 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:20:0x0088, code lost:
        if (r6 <= r9) goto L_0x00a7;
     */
    /* JADX WARN: Code restructure failed: missing block: B:22:0x009e, code lost:
        if (r5.f26570b.b(r5.f26569a.charAt(r6 - 1)) == false) goto L_0x00a7;
     */
    /* JADX WARN: Code restructure failed: missing block: B:23:0x00a1, code lost:
        r6 = r6 - 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:24:0x00a7, code lost:
        r0 = r5.e;
     */
    /* JADX WARN: Code restructure failed: missing block: B:25:0x00ae, code lost:
        if (r0 != 1) goto L_0x00e6;
     */
    /* JADX WARN: Code restructure failed: missing block: B:26:0x00b1, code lost:
        r7 = r5.f26569a.length();
        r5.f26572d = -1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:27:0x00c0, code lost:
        r6 = r7;
     */
    /* JADX WARN: Code restructure failed: missing block: B:28:0x00c5, code lost:
        if (r7 <= r9) goto L_0x00ed;
     */
    /* JADX WARN: Code restructure failed: missing block: B:29:0x00c8, code lost:
        r6 = r7;
     */
    /* JADX WARN: Code restructure failed: missing block: B:30:0x00dd, code lost:
        if (r5.f26570b.b(r5.f26569a.charAt(r7 - 1)) == false) goto L_0x00ed;
     */
    /* JADX WARN: Code restructure failed: missing block: B:31:0x00e0, code lost:
        r7 = r7 - 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:32:0x00e6, code lost:
        r5.e = r0 - 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:34:0x00fe, code lost:
        return r5.f26569a.subSequence(r9, r6).toString();
     */
    @Override // com.google.android.gms.internal.ads.cxl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    protected final /* synthetic */ java.lang.String a() {
        /*
            Method dump skipped, instructions count: 262
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.cyj.a():java.lang.Object");
    }

    abstract int b(int i);
}
