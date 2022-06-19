package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.PopupWindow;
import android.widget.RelativeLayout;
import com.google.android.gms.common.util.CollectionUtils;
import java.util.Set;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzcak.class */
public final class zzcak extends zzcaq {
    public static final Set<String> zza = CollectionUtils.setOf("top-left", "top-right", "top-center", "center", "bottom-left", "bottom-right", "bottom-center");
    private String zzb = "top-right";
    private boolean zzc = true;
    private int zzd = 0;
    private int zze = 0;
    private int zzf = -1;
    private int zzg = 0;
    private int zzh = 0;
    private int zzi = -1;
    private final Object zzj = new Object();
    private final zzcop zzk;
    private final Activity zzl;
    private zzcqe zzm;
    private ImageView zzn;
    private LinearLayout zzo;
    private final zzcar zzp;
    private PopupWindow zzq;
    private RelativeLayout zzr;
    private ViewGroup zzs;

    public zzcak(zzcop zzcopVar, zzcar zzcarVar) {
        super(zzcopVar, "resize");
        this.zzk = zzcopVar;
        this.zzl = zzcopVar.zzk();
        this.zzp = zzcarVar;
    }

    public final void zza(boolean z) {
        synchronized (this.zzj) {
            PopupWindow popupWindow = this.zzq;
            if (popupWindow != null) {
                popupWindow.dismiss();
                this.zzr.removeView((View) this.zzk);
                ViewGroup viewGroup = this.zzs;
                if (viewGroup != null) {
                    viewGroup.removeView(this.zzn);
                    this.zzs.addView((View) this.zzk);
                    this.zzk.zzai(this.zzm);
                }
                if (z) {
                    zzk("default");
                    zzcar zzcarVar = this.zzp;
                    if (zzcarVar != null) {
                        zzcarVar.zzb();
                    }
                }
                this.zzq = null;
                this.zzr = null;
                this.zzs = null;
                this.zzo = null;
            }
        }
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Removed duplicated region for block: B:152:0x0457 A[Catch: all -> 0x087a, TRY_ENTER, TryCatch #0 {, blocks: (B:4:0x0007, B:6:0x000e, B:7:0x0015, B:9:0x0017, B:11:0x0023, B:12:0x002a, B:14:0x002c, B:16:0x003b, B:17:0x0042, B:19:0x0044, B:21:0x0050, B:23:0x0061, B:25:0x0078, B:27:0x0088, B:29:0x009f, B:31:0x00af, B:33:0x00c6, B:35:0x00d6, B:37:0x00ed, B:39:0x00fd, B:41:0x0110, B:43:0x0122, B:45:0x0128, B:47:0x012e, B:49:0x0135, B:51:0x0141, B:54:0x014b, B:56:0x0170, B:61:0x0187, B:70:0x01ac, B:71:0x01b4, B:73:0x01bb, B:106:0x028d, B:108:0x02a7, B:110:0x02c1, B:111:0x02dd, B:113:0x02ef, B:115:0x0304, B:116:0x032d, B:117:0x0349, B:119:0x035c, B:128:0x0388, B:129:0x03a7, B:131:0x03c6, B:134:0x03e7, B:140:0x0411, B:144:0x0431, B:146:0x0442, B:147:0x044b, B:152:0x0457, B:153:0x045f, B:155:0x0461, B:157:0x0494, B:159:0x049c, B:161:0x04ba, B:162:0x051f, B:163:0x0524, B:164:0x0527, B:197:0x06b5, B:198:0x06c6, B:199:0x06d7, B:200:0x06e8, B:201:0x06f9, B:202:0x0703, B:203:0x0714, B:205:0x0723, B:207:0x0752, B:209:0x078d, B:211:0x0796, B:213:0x07a9, B:215:0x07c2, B:216:0x07e8, B:219:0x07eb, B:221:0x07fa, B:222:0x0805, B:224:0x0811, B:226:0x082c, B:228:0x0850, B:230:0x0852, B:231:0x085a, B:233:0x085c, B:234:0x0864, B:236:0x0866, B:237:0x086e, B:239:0x0870, B:240:0x0878), top: B:247:0x0007, inners: #1 }] */
    /* JADX WARN: Removed duplicated region for block: B:155:0x0461 A[Catch: all -> 0x087a, TRY_ENTER, TRY_LEAVE, TryCatch #0 {, blocks: (B:4:0x0007, B:6:0x000e, B:7:0x0015, B:9:0x0017, B:11:0x0023, B:12:0x002a, B:14:0x002c, B:16:0x003b, B:17:0x0042, B:19:0x0044, B:21:0x0050, B:23:0x0061, B:25:0x0078, B:27:0x0088, B:29:0x009f, B:31:0x00af, B:33:0x00c6, B:35:0x00d6, B:37:0x00ed, B:39:0x00fd, B:41:0x0110, B:43:0x0122, B:45:0x0128, B:47:0x012e, B:49:0x0135, B:51:0x0141, B:54:0x014b, B:56:0x0170, B:61:0x0187, B:70:0x01ac, B:71:0x01b4, B:73:0x01bb, B:106:0x028d, B:108:0x02a7, B:110:0x02c1, B:111:0x02dd, B:113:0x02ef, B:115:0x0304, B:116:0x032d, B:117:0x0349, B:119:0x035c, B:128:0x0388, B:129:0x03a7, B:131:0x03c6, B:134:0x03e7, B:140:0x0411, B:144:0x0431, B:146:0x0442, B:147:0x044b, B:152:0x0457, B:153:0x045f, B:155:0x0461, B:157:0x0494, B:159:0x049c, B:161:0x04ba, B:162:0x051f, B:163:0x0524, B:164:0x0527, B:197:0x06b5, B:198:0x06c6, B:199:0x06d7, B:200:0x06e8, B:201:0x06f9, B:202:0x0703, B:203:0x0714, B:205:0x0723, B:207:0x0752, B:209:0x078d, B:211:0x0796, B:213:0x07a9, B:215:0x07c2, B:216:0x07e8, B:219:0x07eb, B:221:0x07fa, B:222:0x0805, B:224:0x0811, B:226:0x082c, B:228:0x0850, B:230:0x0852, B:231:0x085a, B:233:0x085c, B:234:0x0864, B:236:0x0866, B:237:0x086e, B:239:0x0870, B:240:0x0878), top: B:247:0x0007, inners: #1 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void zzb(java.util.Map<java.lang.String, java.lang.String> r9) {
        /*
            Method dump skipped, instructions count: 2175
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzcak.zzb(java.util.Map):void");
    }

    public final void zzc(int i, int i2, boolean z) {
        synchronized (this.zzj) {
            this.zzd = i;
            this.zze = i2;
        }
    }

    public final void zzd(int i, int i2) {
        this.zzd = i;
        this.zze = i2;
    }

    public final boolean zze() {
        boolean z;
        synchronized (this.zzj) {
            z = this.zzq != null;
        }
        return z;
    }
}
