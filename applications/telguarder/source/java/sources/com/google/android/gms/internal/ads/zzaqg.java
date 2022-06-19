package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.PopupWindow;
import android.widget.RelativeLayout;
import com.facebook.internal.logging.monitor.MonitorLogServerProtocol;
import com.google.android.gms.common.util.CollectionUtils;
import java.util.Set;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzaqg.class */
public final class zzaqg extends zzaqq {
    private static final Set<String> zzdpi = CollectionUtils.setOf("top-left", "top-right", "top-center", "center", "bottom-left", "bottom-right", "bottom-center");
    private zzaqt zzdhy;
    private final zzbeb zzdjd;
    private final Activity zzdoy;
    private zzbft zzdpp;
    private ImageView zzdpq;
    private LinearLayout zzdpr;
    private PopupWindow zzdps;
    private RelativeLayout zzdpt;
    private ViewGroup zzdpu;
    private String zzdpj = "top-right";
    private boolean zzdpk = true;
    private int zzdpl = 0;
    private int zzdpm = 0;
    private int height = -1;
    private int zzdpn = 0;
    private int zzdpo = 0;
    private int width = -1;
    private final Object lock = new Object();

    public zzaqg(zzbeb zzbebVar, zzaqt zzaqtVar) {
        super(zzbebVar, "resize");
        this.zzdjd = zzbebVar;
        this.zzdoy = zzbebVar.zzabe();
        this.zzdhy = zzaqtVar;
    }

    public final void zza(int i, int i2, boolean z) {
        synchronized (this.lock) {
            this.zzdpl = i;
            this.zzdpm = i2;
            PopupWindow popupWindow = this.zzdps;
        }
    }

    public final void zzad(boolean z) {
        synchronized (this.lock) {
            PopupWindow popupWindow = this.zzdps;
            if (popupWindow != null) {
                popupWindow.dismiss();
                this.zzdpt.removeView(this.zzdjd.getView());
                ViewGroup viewGroup = this.zzdpu;
                if (viewGroup != null) {
                    viewGroup.removeView(this.zzdpq);
                    this.zzdpu.addView(this.zzdjd.getView());
                    this.zzdjd.zza(this.zzdpp);
                }
                if (z) {
                    zzdu(MonitorLogServerProtocol.DEFAULT_SAMPLE_RATES_KEY);
                    zzaqt zzaqtVar = this.zzdhy;
                    if (zzaqtVar != null) {
                        zzaqtVar.zzvq();
                    }
                }
                this.zzdps = null;
                this.zzdpt = null;
                this.zzdpu = null;
                this.zzdpr = null;
            }
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:142:0x03bc, code lost:
        if ((r15 + 50) <= r0[1]) goto L143;
     */
    /* JADX WARN: Removed duplicated region for block: B:137:0x03a3  */
    /* JADX WARN: Removed duplicated region for block: B:150:0x03dc  */
    /* JADX WARN: Removed duplicated region for block: B:151:0x03e1 A[Catch: all -> 0x08a1, TRY_ENTER, TryCatch #0 {, blocks: (B:4:0x0007, B:6:0x000e, B:7:0x0015, B:9:0x0017, B:11:0x0023, B:12:0x002a, B:14:0x002c, B:16:0x003b, B:17:0x0042, B:19:0x0044, B:21:0x0050, B:22:0x0057, B:24:0x0059, B:26:0x006a, B:28:0x0081, B:30:0x0091, B:32:0x00a8, B:34:0x00b8, B:36:0x00cf, B:38:0x00df, B:40:0x00f6, B:42:0x0106, B:44:0x0119, B:46:0x012b, B:48:0x0131, B:50:0x0137, B:57:0x0149, B:58:0x0150, B:60:0x0152, B:62:0x0160, B:65:0x016b, B:67:0x018f, B:72:0x01a9, B:81:0x01cc, B:82:0x01d4, B:84:0x01db, B:85:0x01e6, B:87:0x0223, B:91:0x0232, B:95:0x0241, B:99:0x0250, B:103:0x025f, B:107:0x026e, B:124:0x029c, B:125:0x02bd, B:126:0x02e3, B:127:0x030b, B:130:0x0333, B:131:0x035f, B:132:0x0382, B:144:0x03c7, B:145:0x03d0, B:151:0x03e1, B:153:0x03e8, B:154:0x0407, B:156:0x0426, B:159:0x0446, B:166:0x046f, B:170:0x048c, B:174:0x049d, B:175:0x04a5, B:177:0x04a7, B:179:0x04dc, B:181:0x04e4, B:183:0x0500, B:184:0x0551, B:185:0x0556, B:186:0x0559, B:191:0x05c7, B:192:0x0625, B:196:0x0669, B:201:0x067b, B:206:0x068d, B:211:0x069f, B:216:0x06b1, B:221:0x06c3, B:237:0x06ec, B:238:0x06fd, B:239:0x070e, B:240:0x071f, B:241:0x0730, B:242:0x073a, B:243:0x074b, B:245:0x075a, B:247:0x0789, B:249:0x07c4, B:251:0x07cf, B:253:0x07e2, B:255:0x07fa, B:256:0x081f, B:259:0x0822, B:261:0x0831, B:262:0x083c, B:264:0x0848, B:266:0x0865, B:268:0x088b, B:270:0x088d, B:271:0x0895, B:273:0x0897, B:274:0x089f), top: B:281:0x0007, inners: #1 }] */
    /* JADX WARN: Removed duplicated region for block: B:174:0x049d A[Catch: all -> 0x08a1, TRY_ENTER, TryCatch #0 {, blocks: (B:4:0x0007, B:6:0x000e, B:7:0x0015, B:9:0x0017, B:11:0x0023, B:12:0x002a, B:14:0x002c, B:16:0x003b, B:17:0x0042, B:19:0x0044, B:21:0x0050, B:22:0x0057, B:24:0x0059, B:26:0x006a, B:28:0x0081, B:30:0x0091, B:32:0x00a8, B:34:0x00b8, B:36:0x00cf, B:38:0x00df, B:40:0x00f6, B:42:0x0106, B:44:0x0119, B:46:0x012b, B:48:0x0131, B:50:0x0137, B:57:0x0149, B:58:0x0150, B:60:0x0152, B:62:0x0160, B:65:0x016b, B:67:0x018f, B:72:0x01a9, B:81:0x01cc, B:82:0x01d4, B:84:0x01db, B:85:0x01e6, B:87:0x0223, B:91:0x0232, B:95:0x0241, B:99:0x0250, B:103:0x025f, B:107:0x026e, B:124:0x029c, B:125:0x02bd, B:126:0x02e3, B:127:0x030b, B:130:0x0333, B:131:0x035f, B:132:0x0382, B:144:0x03c7, B:145:0x03d0, B:151:0x03e1, B:153:0x03e8, B:154:0x0407, B:156:0x0426, B:159:0x0446, B:166:0x046f, B:170:0x048c, B:174:0x049d, B:175:0x04a5, B:177:0x04a7, B:179:0x04dc, B:181:0x04e4, B:183:0x0500, B:184:0x0551, B:185:0x0556, B:186:0x0559, B:191:0x05c7, B:192:0x0625, B:196:0x0669, B:201:0x067b, B:206:0x068d, B:211:0x069f, B:216:0x06b1, B:221:0x06c3, B:237:0x06ec, B:238:0x06fd, B:239:0x070e, B:240:0x071f, B:241:0x0730, B:242:0x073a, B:243:0x074b, B:245:0x075a, B:247:0x0789, B:249:0x07c4, B:251:0x07cf, B:253:0x07e2, B:255:0x07fa, B:256:0x081f, B:259:0x0822, B:261:0x0831, B:262:0x083c, B:264:0x0848, B:266:0x0865, B:268:0x088b, B:270:0x088d, B:271:0x0895, B:273:0x0897, B:274:0x089f), top: B:281:0x0007, inners: #1 }] */
    /* JADX WARN: Removed duplicated region for block: B:177:0x04a7 A[Catch: all -> 0x08a1, TRY_ENTER, TRY_LEAVE, TryCatch #0 {, blocks: (B:4:0x0007, B:6:0x000e, B:7:0x0015, B:9:0x0017, B:11:0x0023, B:12:0x002a, B:14:0x002c, B:16:0x003b, B:17:0x0042, B:19:0x0044, B:21:0x0050, B:22:0x0057, B:24:0x0059, B:26:0x006a, B:28:0x0081, B:30:0x0091, B:32:0x00a8, B:34:0x00b8, B:36:0x00cf, B:38:0x00df, B:40:0x00f6, B:42:0x0106, B:44:0x0119, B:46:0x012b, B:48:0x0131, B:50:0x0137, B:57:0x0149, B:58:0x0150, B:60:0x0152, B:62:0x0160, B:65:0x016b, B:67:0x018f, B:72:0x01a9, B:81:0x01cc, B:82:0x01d4, B:84:0x01db, B:85:0x01e6, B:87:0x0223, B:91:0x0232, B:95:0x0241, B:99:0x0250, B:103:0x025f, B:107:0x026e, B:124:0x029c, B:125:0x02bd, B:126:0x02e3, B:127:0x030b, B:130:0x0333, B:131:0x035f, B:132:0x0382, B:144:0x03c7, B:145:0x03d0, B:151:0x03e1, B:153:0x03e8, B:154:0x0407, B:156:0x0426, B:159:0x0446, B:166:0x046f, B:170:0x048c, B:174:0x049d, B:175:0x04a5, B:177:0x04a7, B:179:0x04dc, B:181:0x04e4, B:183:0x0500, B:184:0x0551, B:185:0x0556, B:186:0x0559, B:191:0x05c7, B:192:0x0625, B:196:0x0669, B:201:0x067b, B:206:0x068d, B:211:0x069f, B:216:0x06b1, B:221:0x06c3, B:237:0x06ec, B:238:0x06fd, B:239:0x070e, B:240:0x071f, B:241:0x0730, B:242:0x073a, B:243:0x074b, B:245:0x075a, B:247:0x0789, B:249:0x07c4, B:251:0x07cf, B:253:0x07e2, B:255:0x07fa, B:256:0x081f, B:259:0x0822, B:261:0x0831, B:262:0x083c, B:264:0x0848, B:266:0x0865, B:268:0x088b, B:270:0x088d, B:271:0x0895, B:273:0x0897, B:274:0x089f), top: B:281:0x0007, inners: #1 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void zzg(java.util.Map<java.lang.String, java.lang.String> r9) {
        /*
            Method dump skipped, instructions count: 2214
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzaqg.zzg(java.util.Map):void");
    }

    public final void zzi(int i, int i2) {
        this.zzdpl = i;
        this.zzdpm = i2;
    }

    public final boolean zzvp() {
        boolean z;
        synchronized (this.lock) {
            z = this.zzdps != null;
        }
        return z;
    }
}
