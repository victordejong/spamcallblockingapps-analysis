package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.PopupWindow;
import android.widget.RelativeLayout;
import com.amazon.device.ads.MraidResizeCommand;
import com.google.android.gms.common.util.CollectionUtils;
import java.util.Collections;
import java.util.Set;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzbyj.class */
public final class zzbyj extends zzbyp {
    public static final Set<String> zza;
    private String zzb = "top-right";
    private boolean zzc = true;
    private int zzd = 0;
    private int zze = 0;
    private int zzf = -1;
    private int zzg = 0;
    private int zzh = 0;
    private int zzi = -1;
    private final Object zzj = new Object();
    private final zzcml zzk;
    private final Activity zzl;
    private zzcob zzm;
    private ImageView zzn;
    private LinearLayout zzo;
    private final zzbyq zzp;
    private PopupWindow zzq;
    private RelativeLayout zzr;
    private ViewGroup zzs;

    static {
        Set m38791a = CollectionUtils.m38791a(7, false);
        Collections.addAll(m38791a, "top-left", "top-right", "top-center", "center", "bottom-left", "bottom-right", "bottom-center");
        zza = Collections.unmodifiableSet(m38791a);
    }

    public zzbyj(zzcml zzcmlVar, zzbyq zzbyqVar) {
        super(zzcmlVar, MraidResizeCommand.NAME);
        this.zzk = zzcmlVar;
        this.zzl = zzcmlVar.zzj();
        this.zzp = zzbyqVar;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Removed duplicated region for block: B:152:0x045a A[Catch: all -> 0x087b, TRY_ENTER, TryCatch #0 {, blocks: (B:4:0x0007, B:6:0x000e, B:7:0x0015, B:9:0x0017, B:11:0x0023, B:12:0x002a, B:14:0x002c, B:16:0x003b, B:17:0x0042, B:19:0x0044, B:21:0x0050, B:23:0x0061, B:25:0x0078, B:27:0x0088, B:29:0x009f, B:31:0x00af, B:33:0x00c6, B:35:0x00d6, B:37:0x00ed, B:39:0x00fd, B:41:0x0110, B:43:0x0122, B:45:0x0128, B:47:0x012e, B:49:0x0135, B:51:0x0141, B:54:0x014b, B:56:0x0173, B:61:0x018a, B:70:0x01af, B:71:0x01b7, B:73:0x01be, B:106:0x0291, B:108:0x02ab, B:110:0x02c5, B:111:0x02e1, B:113:0x02f3, B:115:0x0308, B:116:0x0331, B:117:0x034d, B:119:0x0360, B:128:0x038c, B:129:0x03ab, B:131:0x03c9, B:134:0x03ea, B:140:0x0415, B:144:0x0436, B:146:0x0447, B:147:0x044f, B:152:0x045a, B:153:0x0461, B:155:0x0463, B:157:0x0496, B:159:0x049e, B:161:0x04bc, B:162:0x0521, B:163:0x0526, B:164:0x0529, B:197:0x06b6, B:198:0x06c7, B:199:0x06d8, B:200:0x06e9, B:201:0x06fa, B:202:0x0704, B:203:0x0715, B:205:0x0724, B:207:0x0753, B:209:0x078e, B:211:0x0797, B:213:0x07aa, B:215:0x07c3, B:216:0x07e9, B:219:0x07ec, B:221:0x07fb, B:222:0x0806, B:224:0x0812, B:226:0x082d, B:228:0x0851, B:230:0x0853, B:231:0x085b, B:233:0x085d, B:234:0x0865, B:236:0x0867, B:237:0x086f, B:239:0x0871, B:240:0x0879), top: B:247:0x0007, inners: #1 }] */
    /* JADX WARN: Removed duplicated region for block: B:155:0x0463 A[Catch: all -> 0x087b, TRY_ENTER, TRY_LEAVE, TryCatch #0 {, blocks: (B:4:0x0007, B:6:0x000e, B:7:0x0015, B:9:0x0017, B:11:0x0023, B:12:0x002a, B:14:0x002c, B:16:0x003b, B:17:0x0042, B:19:0x0044, B:21:0x0050, B:23:0x0061, B:25:0x0078, B:27:0x0088, B:29:0x009f, B:31:0x00af, B:33:0x00c6, B:35:0x00d6, B:37:0x00ed, B:39:0x00fd, B:41:0x0110, B:43:0x0122, B:45:0x0128, B:47:0x012e, B:49:0x0135, B:51:0x0141, B:54:0x014b, B:56:0x0173, B:61:0x018a, B:70:0x01af, B:71:0x01b7, B:73:0x01be, B:106:0x0291, B:108:0x02ab, B:110:0x02c5, B:111:0x02e1, B:113:0x02f3, B:115:0x0308, B:116:0x0331, B:117:0x034d, B:119:0x0360, B:128:0x038c, B:129:0x03ab, B:131:0x03c9, B:134:0x03ea, B:140:0x0415, B:144:0x0436, B:146:0x0447, B:147:0x044f, B:152:0x045a, B:153:0x0461, B:155:0x0463, B:157:0x0496, B:159:0x049e, B:161:0x04bc, B:162:0x0521, B:163:0x0526, B:164:0x0529, B:197:0x06b6, B:198:0x06c7, B:199:0x06d8, B:200:0x06e9, B:201:0x06fa, B:202:0x0704, B:203:0x0715, B:205:0x0724, B:207:0x0753, B:209:0x078e, B:211:0x0797, B:213:0x07aa, B:215:0x07c3, B:216:0x07e9, B:219:0x07ec, B:221:0x07fb, B:222:0x0806, B:224:0x0812, B:226:0x082d, B:228:0x0851, B:230:0x0853, B:231:0x085b, B:233:0x085d, B:234:0x0865, B:236:0x0867, B:237:0x086f, B:239:0x0871, B:240:0x0879), top: B:247:0x0007, inners: #1 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void zza(java.util.Map<java.lang.String, java.lang.String> r9) {
        /*
            Method dump skipped, instructions count: 2176
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzbyj.zza(java.util.Map):void");
    }

    public final void zzb(boolean z) {
        synchronized (this.zzj) {
            PopupWindow popupWindow = this.zzq;
            if (popupWindow != null) {
                popupWindow.dismiss();
                this.zzr.removeView((View) this.zzk);
                ViewGroup viewGroup = this.zzs;
                if (viewGroup != null) {
                    viewGroup.removeView(this.zzn);
                    this.zzs.addView((View) this.zzk);
                    this.zzk.zzaf(this.zzm);
                }
                if (z) {
                    zzj("default");
                    zzbyq zzbyqVar = this.zzp;
                    if (zzbyqVar != null) {
                        zzbyqVar.zzb();
                    }
                }
                this.zzq = null;
                this.zzr = null;
                this.zzs = null;
                this.zzo = null;
            }
        }
    }

    public final void zzc(int i, int i2, boolean z) {
        synchronized (this.zzj) {
            this.zzd = i;
            this.zze = i2;
        }
    }

    public final boolean zzd() {
        boolean z;
        synchronized (this.zzj) {
            z = this.zzq != null;
        }
        return z;
    }

    public final void zze(int i, int i2) {
        this.zzd = i;
        this.zze = i2;
    }
}
