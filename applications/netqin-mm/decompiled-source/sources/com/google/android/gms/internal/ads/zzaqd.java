package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.PopupWindow;
import android.widget.RelativeLayout;
import com.google.android.gms.common.util.CollectionUtils;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzaqd.class */
public final class zzaqd extends zzaqn {

    /* renamed from: c */
    public String f24262c = "top-right";

    /* renamed from: d */
    public boolean f24263d = true;

    /* renamed from: e */
    public int f24264e = 0;

    /* renamed from: f */
    public int f24265f = 0;

    /* renamed from: g */
    public int f24266g = -1;

    /* renamed from: h */
    public int f24267h = 0;

    /* renamed from: i */
    public int f24268i = 0;

    /* renamed from: j */
    public int f24269j = -1;

    /* renamed from: k */
    public final Object f24270k = new Object();

    /* renamed from: l */
    public final zzbgj f24271l;

    /* renamed from: m */
    public final Activity f24272m;

    /* renamed from: n */
    public zzbhy f24273n;

    /* renamed from: o */
    public ImageView f24274o;

    /* renamed from: p */
    public LinearLayout f24275p;

    /* renamed from: q */
    public zzaqq f24276q;

    /* renamed from: r */
    public PopupWindow f24277r;

    /* renamed from: s */
    public RelativeLayout f24278s;

    /* renamed from: t */
    public ViewGroup f24279t;

    static {
        CollectionUtils.m17095b("top-left", "top-right", "top-center", "center", "bottom-left", "bottom-right", "bottom-center");
    }

    public zzaqd(zzbgj zzbgjVar, zzaqq zzaqqVar) {
        super(zzbgjVar, "resize");
        this.f24271l = zzbgjVar;
        this.f24272m = zzbgjVar.mo15528b();
        this.f24276q = zzaqqVar;
    }

    /* renamed from: a */
    public final void m16448a(int i, int i2) {
        this.f24264e = i;
        this.f24265f = i2;
    }

    /* renamed from: a */
    public final void m16447a(int i, int i2, boolean z) {
        synchronized (this.f24270k) {
            this.f24264e = i;
            this.f24265f = i2;
            PopupWindow popupWindow = this.f24277r;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:143:0x03c0, code lost:
        if ((r15 + 50) <= r0[1]) goto L_0x03c6;
     */
    /* JADX WARN: Removed duplicated region for block: B:138:0x03a7  */
    /* JADX WARN: Removed duplicated region for block: B:151:0x03de  */
    /* JADX WARN: Removed duplicated region for block: B:152:0x03e3 A[Catch: all -> 0x0891, TRY_ENTER, TryCatch #0 {, blocks: (B:4:0x0007, B:6:0x000e, B:7:0x0015, B:9:0x0017, B:11:0x0023, B:12:0x002a, B:14:0x002c, B:16:0x003b, B:17:0x0042, B:19:0x0044, B:21:0x0050, B:22:0x0057, B:24:0x0059, B:26:0x006a, B:28:0x0081, B:30:0x0091, B:32:0x00a8, B:34:0x00b8, B:36:0x00cf, B:38:0x00df, B:40:0x00f6, B:42:0x0106, B:44:0x0119, B:46:0x012b, B:48:0x0131, B:50:0x0137, B:57:0x0149, B:58:0x0150, B:60:0x0152, B:62:0x0160, B:65:0x016b, B:67:0x018d, B:70:0x019d, B:73:0x01a9, B:75:0x01b2, B:78:0x01bd, B:80:0x01c5, B:82:0x01ce, B:83:0x01d6, B:85:0x01dd, B:86:0x01e8, B:88:0x0227, B:92:0x0236, B:96:0x0245, B:100:0x0254, B:104:0x0263, B:108:0x0272, B:125:0x02a0, B:126:0x02c1, B:127:0x02e7, B:128:0x030f, B:131:0x0337, B:132:0x0363, B:133:0x0386, B:145:0x03cb, B:146:0x03d3, B:152:0x03e3, B:154:0x03ea, B:155:0x0409, B:157:0x0426, B:161:0x0449, B:163:0x0455, B:169:0x0471, B:171:0x047e, B:173:0x0489, B:177:0x0499, B:178:0x04a0, B:180:0x04a2, B:182:0x04d7, B:184:0x04df, B:186:0x04f7, B:187:0x0548, B:188:0x054f, B:189:0x0552, B:194:0x05c0, B:195:0x061e, B:199:0x0661, B:204:0x0673, B:209:0x0685, B:214:0x0697, B:219:0x06a9, B:224:0x06bb, B:240:0x06e4, B:241:0x06f5, B:242:0x0706, B:243:0x0717, B:244:0x0728, B:245:0x0732, B:246:0x0743, B:248:0x0752, B:250:0x0781, B:252:0x07bc, B:254:0x07c3, B:256:0x07d8, B:257:0x080e, B:260:0x0811, B:262:0x0820, B:263:0x082b, B:265:0x0837, B:267:0x0852, B:269:0x087b, B:271:0x087d, B:272:0x0885, B:274:0x0887, B:275:0x088f), top: B:282:0x0007, inners: #1 }] */
    /* JADX WARN: Removed duplicated region for block: B:177:0x0499 A[Catch: all -> 0x0891, TRY_ENTER, TryCatch #0 {, blocks: (B:4:0x0007, B:6:0x000e, B:7:0x0015, B:9:0x0017, B:11:0x0023, B:12:0x002a, B:14:0x002c, B:16:0x003b, B:17:0x0042, B:19:0x0044, B:21:0x0050, B:22:0x0057, B:24:0x0059, B:26:0x006a, B:28:0x0081, B:30:0x0091, B:32:0x00a8, B:34:0x00b8, B:36:0x00cf, B:38:0x00df, B:40:0x00f6, B:42:0x0106, B:44:0x0119, B:46:0x012b, B:48:0x0131, B:50:0x0137, B:57:0x0149, B:58:0x0150, B:60:0x0152, B:62:0x0160, B:65:0x016b, B:67:0x018d, B:70:0x019d, B:73:0x01a9, B:75:0x01b2, B:78:0x01bd, B:80:0x01c5, B:82:0x01ce, B:83:0x01d6, B:85:0x01dd, B:86:0x01e8, B:88:0x0227, B:92:0x0236, B:96:0x0245, B:100:0x0254, B:104:0x0263, B:108:0x0272, B:125:0x02a0, B:126:0x02c1, B:127:0x02e7, B:128:0x030f, B:131:0x0337, B:132:0x0363, B:133:0x0386, B:145:0x03cb, B:146:0x03d3, B:152:0x03e3, B:154:0x03ea, B:155:0x0409, B:157:0x0426, B:161:0x0449, B:163:0x0455, B:169:0x0471, B:171:0x047e, B:173:0x0489, B:177:0x0499, B:178:0x04a0, B:180:0x04a2, B:182:0x04d7, B:184:0x04df, B:186:0x04f7, B:187:0x0548, B:188:0x054f, B:189:0x0552, B:194:0x05c0, B:195:0x061e, B:199:0x0661, B:204:0x0673, B:209:0x0685, B:214:0x0697, B:219:0x06a9, B:224:0x06bb, B:240:0x06e4, B:241:0x06f5, B:242:0x0706, B:243:0x0717, B:244:0x0728, B:245:0x0732, B:246:0x0743, B:248:0x0752, B:250:0x0781, B:252:0x07bc, B:254:0x07c3, B:256:0x07d8, B:257:0x080e, B:260:0x0811, B:262:0x0820, B:263:0x082b, B:265:0x0837, B:267:0x0852, B:269:0x087b, B:271:0x087d, B:272:0x0885, B:274:0x0887, B:275:0x088f), top: B:282:0x0007, inners: #1 }] */
    /* JADX WARN: Removed duplicated region for block: B:180:0x04a2 A[Catch: all -> 0x0891, TRY_ENTER, TRY_LEAVE, TryCatch #0 {, blocks: (B:4:0x0007, B:6:0x000e, B:7:0x0015, B:9:0x0017, B:11:0x0023, B:12:0x002a, B:14:0x002c, B:16:0x003b, B:17:0x0042, B:19:0x0044, B:21:0x0050, B:22:0x0057, B:24:0x0059, B:26:0x006a, B:28:0x0081, B:30:0x0091, B:32:0x00a8, B:34:0x00b8, B:36:0x00cf, B:38:0x00df, B:40:0x00f6, B:42:0x0106, B:44:0x0119, B:46:0x012b, B:48:0x0131, B:50:0x0137, B:57:0x0149, B:58:0x0150, B:60:0x0152, B:62:0x0160, B:65:0x016b, B:67:0x018d, B:70:0x019d, B:73:0x01a9, B:75:0x01b2, B:78:0x01bd, B:80:0x01c5, B:82:0x01ce, B:83:0x01d6, B:85:0x01dd, B:86:0x01e8, B:88:0x0227, B:92:0x0236, B:96:0x0245, B:100:0x0254, B:104:0x0263, B:108:0x0272, B:125:0x02a0, B:126:0x02c1, B:127:0x02e7, B:128:0x030f, B:131:0x0337, B:132:0x0363, B:133:0x0386, B:145:0x03cb, B:146:0x03d3, B:152:0x03e3, B:154:0x03ea, B:155:0x0409, B:157:0x0426, B:161:0x0449, B:163:0x0455, B:169:0x0471, B:171:0x047e, B:173:0x0489, B:177:0x0499, B:178:0x04a0, B:180:0x04a2, B:182:0x04d7, B:184:0x04df, B:186:0x04f7, B:187:0x0548, B:188:0x054f, B:189:0x0552, B:194:0x05c0, B:195:0x061e, B:199:0x0661, B:204:0x0673, B:209:0x0685, B:214:0x0697, B:219:0x06a9, B:224:0x06bb, B:240:0x06e4, B:241:0x06f5, B:242:0x0706, B:243:0x0717, B:244:0x0728, B:245:0x0732, B:246:0x0743, B:248:0x0752, B:250:0x0781, B:252:0x07bc, B:254:0x07c3, B:256:0x07d8, B:257:0x080e, B:260:0x0811, B:262:0x0820, B:263:0x082b, B:265:0x0837, B:267:0x0852, B:269:0x087b, B:271:0x087d, B:272:0x0885, B:274:0x0887, B:275:0x088f), top: B:282:0x0007, inners: #1 }] */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m16446a(java.util.Map<java.lang.String, java.lang.String> r9) {
        /*
            Method dump skipped, instructions count: 2198
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzaqd.m16446a(java.util.Map):void");
    }

    /* renamed from: a */
    public final void m16445a(boolean z) {
        synchronized (this.f24270k) {
            if (this.f24277r != null) {
                this.f24277r.dismiss();
                this.f24278s.removeView(this.f24271l.getView());
                if (this.f24279t != null) {
                    this.f24279t.removeView(this.f24274o);
                    this.f24279t.addView(this.f24271l.getView());
                    this.f24271l.mo15585a(this.f24273n);
                }
                if (z) {
                    m16425c("default");
                    if (this.f24276q != null) {
                        this.f24276q.mo16421b();
                    }
                }
                this.f24277r = null;
                this.f24278s = null;
                this.f24279t = null;
                this.f24275p = null;
            }
        }
    }

    /* renamed from: a */
    public final boolean m16449a() {
        boolean z;
        synchronized (this.f24270k) {
            z = this.f24277r != null;
        }
        return z;
    }
}
