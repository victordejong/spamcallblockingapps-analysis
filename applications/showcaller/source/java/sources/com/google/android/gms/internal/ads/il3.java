package com.google.android.gms.internal.ads;

import android.net.Uri;
import java.util.Map;
import java.util.Objects;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/il3.class */
public final class il3 implements ho3, bk3 {

    /* renamed from: b */
    private final Uri f24333b;

    /* renamed from: c */
    private final so3 f24334c;

    /* renamed from: d */
    private final dl3 f24335d;

    /* renamed from: e */
    private final xq3 f24336e;

    /* renamed from: f */
    private final C6321b9 f24337f;

    /* renamed from: h */
    private volatile boolean f24339h;

    /* renamed from: j */
    private long f24341j;

    /* renamed from: m */
    private yr3 f24344m;

    /* renamed from: n */
    private boolean f24345n;

    /* renamed from: o */
    final /* synthetic */ nl3 f24346o;

    /* renamed from: g */
    private final rr3 f24338g = new rr3();

    /* renamed from: i */
    private boolean f24340i = true;

    /* renamed from: l */
    private long f24343l = -1;

    /* renamed from: a */
    private final long f24332a = dk3.m15776a();

    /* renamed from: k */
    private C6472fb f24342k = m14339i(0);

    public il3(nl3 nl3Var, Uri uri, AbstractC7098w7 abstractC7098w7, dl3 dl3Var, xq3 xq3Var, C6321b9 c6321b9) {
        this.f24346o = nl3Var;
        this.f24333b = uri;
        this.f24334c = new so3(abstractC7098w7);
        this.f24335d = dl3Var;
        this.f24336e = xq3Var;
        this.f24337f = c6321b9;
    }

    /* renamed from: b */
    public static /* synthetic */ long m14346b(il3 il3Var) {
        return il3Var.f24332a;
    }

    /* renamed from: c */
    public static /* synthetic */ so3 m14345c(il3 il3Var) {
        return il3Var.f24334c;
    }

    /* renamed from: d */
    public static /* synthetic */ long m14344d(il3 il3Var) {
        return il3Var.f24341j;
    }

    /* renamed from: e */
    public static /* synthetic */ C6472fb m14343e(il3 il3Var) {
        return il3Var.f24342k;
    }

    /* renamed from: g */
    public static /* synthetic */ long m14341g(il3 il3Var) {
        return il3Var.f24343l;
    }

    /* renamed from: h */
    public static /* synthetic */ void m14340h(il3 il3Var, long j, long j2) {
        il3Var.f24338g.f29206a = j;
        il3Var.f24341j = j2;
        il3Var.f24340i = true;
        il3Var.f24345n = false;
    }

    /* renamed from: i */
    private final C6472fb m14339i(long j) {
        Map<String, String> map;
        C6433e9 c6433e9 = new C6433e9();
        c6433e9.m15533a(this.f24333b);
        c6433e9.m15531c(j);
        c6433e9.m15530d(6);
        map = nl3.f27171d;
        c6433e9.m15532b(map);
        return c6433e9.m15529e();
    }

    /* JADX WARN: Type inference failed for: r0v14, types: [long] */
    /* JADX WARN: Type inference failed for: r0v16, types: [long] */
    @Override // com.google.android.gms.internal.ads.bk3
    /* renamed from: a */
    public final void mo14347a(C6694la c6694la) {
        char c;
        long m12877I;
        if (!this.f24345n) {
            c = this.f24341j;
        } else {
            m12877I = this.f24346o.m12877I();
            c = Math.max(m12877I, this.f24341j);
        }
        int m13639l = c6694la.m13639l();
        yr3 yr3Var = this.f24344m;
        Objects.requireNonNull(yr3Var);
        wr3.m9478b(yr3Var, c6694la, m13639l);
        yr3Var.mo8705c(c, 1, m13639l, 0, null);
        this.f24345n = true;
    }

    /* JADX WARN: Removed duplicated region for block: B:100:0x030c A[Catch: all -> 0x040f, TryCatch #6 {all -> 0x040f, blocks: (B:5:0x000b, B:8:0x003a, B:10:0x0043, B:12:0x0064, B:14:0x0073, B:18:0x008b, B:20:0x009a, B:21:0x00a6, B:23:0x00b3, B:28:0x00cb, B:30:0x00da, B:31:0x00e6, B:33:0x00f3, B:36:0x0109, B:39:0x011f, B:42:0x0135, B:44:0x0148, B:47:0x015e, B:49:0x0171, B:52:0x0187, B:54:0x019a, B:57:0x01b5, B:59:0x01c8, B:61:0x01d7, B:64:0x01e7, B:66:0x01f6, B:67:0x0202, B:69:0x020f, B:73:0x0220, B:75:0x022f, B:76:0x023b, B:78:0x0248, B:82:0x025d, B:84:0x0275, B:86:0x0285, B:90:0x0293, B:92:0x02a1, B:94:0x02d4, B:96:0x02fc, B:98:0x0306, B:100:0x030c), top: B:168:0x000b }] */
    /* JADX WARN: Removed duplicated region for block: B:105:0x032b  */
    /* JADX WARN: Removed duplicated region for block: B:137:0x03da  */
    /* JADX WARN: Removed duplicated region for block: B:138:0x03e0  */
    /* JADX WARN: Removed duplicated region for block: B:171:0x0444 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:172:0x03d4 A[EDGE_INSN: B:172:0x03d4->B:135:0x03d4 ?: BREAK  , SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:39:0x011f A[Catch: all -> 0x040f, TRY_ENTER, TRY_LEAVE, TryCatch #6 {all -> 0x040f, blocks: (B:5:0x000b, B:8:0x003a, B:10:0x0043, B:12:0x0064, B:14:0x0073, B:18:0x008b, B:20:0x009a, B:21:0x00a6, B:23:0x00b3, B:28:0x00cb, B:30:0x00da, B:31:0x00e6, B:33:0x00f3, B:36:0x0109, B:39:0x011f, B:42:0x0135, B:44:0x0148, B:47:0x015e, B:49:0x0171, B:52:0x0187, B:54:0x019a, B:57:0x01b5, B:59:0x01c8, B:61:0x01d7, B:64:0x01e7, B:66:0x01f6, B:67:0x0202, B:69:0x020f, B:73:0x0220, B:75:0x022f, B:76:0x023b, B:78:0x0248, B:82:0x025d, B:84:0x0275, B:86:0x0285, B:90:0x0293, B:92:0x02a1, B:94:0x02d4, B:96:0x02fc, B:98:0x0306, B:100:0x030c), top: B:168:0x000b }] */
    /* JADX WARN: Removed duplicated region for block: B:41:0x0132  */
    /* JADX WARN: Removed duplicated region for block: B:44:0x0148 A[Catch: all -> 0x040f, TRY_ENTER, TRY_LEAVE, TryCatch #6 {all -> 0x040f, blocks: (B:5:0x000b, B:8:0x003a, B:10:0x0043, B:12:0x0064, B:14:0x0073, B:18:0x008b, B:20:0x009a, B:21:0x00a6, B:23:0x00b3, B:28:0x00cb, B:30:0x00da, B:31:0x00e6, B:33:0x00f3, B:36:0x0109, B:39:0x011f, B:42:0x0135, B:44:0x0148, B:47:0x015e, B:49:0x0171, B:52:0x0187, B:54:0x019a, B:57:0x01b5, B:59:0x01c8, B:61:0x01d7, B:64:0x01e7, B:66:0x01f6, B:67:0x0202, B:69:0x020f, B:73:0x0220, B:75:0x022f, B:76:0x023b, B:78:0x0248, B:82:0x025d, B:84:0x0275, B:86:0x0285, B:90:0x0293, B:92:0x02a1, B:94:0x02d4, B:96:0x02fc, B:98:0x0306, B:100:0x030c), top: B:168:0x000b }] */
    /* JADX WARN: Removed duplicated region for block: B:46:0x015b  */
    /* JADX WARN: Removed duplicated region for block: B:49:0x0171 A[Catch: all -> 0x040f, TRY_ENTER, TRY_LEAVE, TryCatch #6 {all -> 0x040f, blocks: (B:5:0x000b, B:8:0x003a, B:10:0x0043, B:12:0x0064, B:14:0x0073, B:18:0x008b, B:20:0x009a, B:21:0x00a6, B:23:0x00b3, B:28:0x00cb, B:30:0x00da, B:31:0x00e6, B:33:0x00f3, B:36:0x0109, B:39:0x011f, B:42:0x0135, B:44:0x0148, B:47:0x015e, B:49:0x0171, B:52:0x0187, B:54:0x019a, B:57:0x01b5, B:59:0x01c8, B:61:0x01d7, B:64:0x01e7, B:66:0x01f6, B:67:0x0202, B:69:0x020f, B:73:0x0220, B:75:0x022f, B:76:0x023b, B:78:0x0248, B:82:0x025d, B:84:0x0275, B:86:0x0285, B:90:0x0293, B:92:0x02a1, B:94:0x02d4, B:96:0x02fc, B:98:0x0306, B:100:0x030c), top: B:168:0x000b }] */
    /* JADX WARN: Removed duplicated region for block: B:51:0x0184  */
    /* JADX WARN: Removed duplicated region for block: B:54:0x019a A[Catch: all -> 0x040f, TRY_ENTER, TRY_LEAVE, TryCatch #6 {all -> 0x040f, blocks: (B:5:0x000b, B:8:0x003a, B:10:0x0043, B:12:0x0064, B:14:0x0073, B:18:0x008b, B:20:0x009a, B:21:0x00a6, B:23:0x00b3, B:28:0x00cb, B:30:0x00da, B:31:0x00e6, B:33:0x00f3, B:36:0x0109, B:39:0x011f, B:42:0x0135, B:44:0x0148, B:47:0x015e, B:49:0x0171, B:52:0x0187, B:54:0x019a, B:57:0x01b5, B:59:0x01c8, B:61:0x01d7, B:64:0x01e7, B:66:0x01f6, B:67:0x0202, B:69:0x020f, B:73:0x0220, B:75:0x022f, B:76:0x023b, B:78:0x0248, B:82:0x025d, B:84:0x0275, B:86:0x0285, B:90:0x0293, B:92:0x02a1, B:94:0x02d4, B:96:0x02fc, B:98:0x0306, B:100:0x030c), top: B:168:0x000b }] */
    /* JADX WARN: Removed duplicated region for block: B:56:0x01b2  */
    /* JADX WARN: Removed duplicated region for block: B:59:0x01c8 A[Catch: all -> 0x040f, TRY_ENTER, TryCatch #6 {all -> 0x040f, blocks: (B:5:0x000b, B:8:0x003a, B:10:0x0043, B:12:0x0064, B:14:0x0073, B:18:0x008b, B:20:0x009a, B:21:0x00a6, B:23:0x00b3, B:28:0x00cb, B:30:0x00da, B:31:0x00e6, B:33:0x00f3, B:36:0x0109, B:39:0x011f, B:42:0x0135, B:44:0x0148, B:47:0x015e, B:49:0x0171, B:52:0x0187, B:54:0x019a, B:57:0x01b5, B:59:0x01c8, B:61:0x01d7, B:64:0x01e7, B:66:0x01f6, B:67:0x0202, B:69:0x020f, B:73:0x0220, B:75:0x022f, B:76:0x023b, B:78:0x0248, B:82:0x025d, B:84:0x0275, B:86:0x0285, B:90:0x0293, B:92:0x02a1, B:94:0x02d4, B:96:0x02fc, B:98:0x0306, B:100:0x030c), top: B:168:0x000b }] */
    /* JADX WARN: Removed duplicated region for block: B:79:0x0251  */
    /* JADX WARN: Removed duplicated region for block: B:82:0x025d A[Catch: all -> 0x040f, TRY_ENTER, TryCatch #6 {all -> 0x040f, blocks: (B:5:0x000b, B:8:0x003a, B:10:0x0043, B:12:0x0064, B:14:0x0073, B:18:0x008b, B:20:0x009a, B:21:0x00a6, B:23:0x00b3, B:28:0x00cb, B:30:0x00da, B:31:0x00e6, B:33:0x00f3, B:36:0x0109, B:39:0x011f, B:42:0x0135, B:44:0x0148, B:47:0x015e, B:49:0x0171, B:52:0x0187, B:54:0x019a, B:57:0x01b5, B:59:0x01c8, B:61:0x01d7, B:64:0x01e7, B:66:0x01f6, B:67:0x0202, B:69:0x020f, B:73:0x0220, B:75:0x022f, B:76:0x023b, B:78:0x0248, B:82:0x025d, B:84:0x0275, B:86:0x0285, B:90:0x0293, B:92:0x02a1, B:94:0x02d4, B:96:0x02fc, B:98:0x0306, B:100:0x030c), top: B:168:0x000b }] */
    /* JADX WARN: Removed duplicated region for block: B:88:0x028f  */
    /* JADX WARN: Removed duplicated region for block: B:96:0x02fc A[Catch: all -> 0x040f, TryCatch #6 {all -> 0x040f, blocks: (B:5:0x000b, B:8:0x003a, B:10:0x0043, B:12:0x0064, B:14:0x0073, B:18:0x008b, B:20:0x009a, B:21:0x00a6, B:23:0x00b3, B:28:0x00cb, B:30:0x00da, B:31:0x00e6, B:33:0x00f3, B:36:0x0109, B:39:0x011f, B:42:0x0135, B:44:0x0148, B:47:0x015e, B:49:0x0171, B:52:0x0187, B:54:0x019a, B:57:0x01b5, B:59:0x01c8, B:61:0x01d7, B:64:0x01e7, B:66:0x01f6, B:67:0x0202, B:69:0x020f, B:73:0x0220, B:75:0x022f, B:76:0x023b, B:78:0x0248, B:82:0x025d, B:84:0x0275, B:86:0x0285, B:90:0x0293, B:92:0x02a1, B:94:0x02d4, B:96:0x02fc, B:98:0x0306, B:100:0x030c), top: B:168:0x000b }] */
    /* JADX WARN: Type inference failed for: r0v110, types: [long] */
    /* JADX WARN: Type inference failed for: r0v17, types: [long] */
    @Override // com.google.android.gms.internal.ads.ho3
    /* renamed from: f */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void mo14342f() {
        /*
            Method dump skipped, instructions count: 1107
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.il3.mo14342f():void");
    }

    @Override // com.google.android.gms.internal.ads.ho3
    public final void zzg() {
        this.f24339h = true;
    }
}
