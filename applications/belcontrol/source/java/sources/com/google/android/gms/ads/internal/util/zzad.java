package com.google.android.gms.ads.internal.util;

import android.app.Activity;
import android.app.AlertDialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.graphics.PointF;
import android.os.Handler;
import android.text.TextUtils;
import android.view.ViewConfiguration;
import android.view.WindowManager;
import com.google.android.gms.ads.internal.zzr;
import com.google.android.gms.internal.ads.zzazk;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/ads/internal/util/zzad.class */
public final class zzad {
    private final Context context;
    private Handler handler;
    private int state;
    private String zzbrp;
    private String zzbut;
    private String zzdtb;
    private String zzdws;
    private int zzeez;
    private PointF zzefa;
    private PointF zzefb;
    private Runnable zzefc;

    public zzad(Context context) {
        this.state = 0;
        this.zzefc = new Runnable(this) { // from class: com.google.android.gms.ads.internal.util.zzag
            private final zzad zzefd;

            {
                this.zzefd = this;
            }

            @Override // java.lang.Runnable
            public final void run() {
                this.zzefd.zzzj();
            }
        };
        this.context = context;
        this.zzeez = ViewConfiguration.get(context).getScaledTouchSlop();
        zzr.zzlf().zzzp();
        this.handler = zzr.zzlf().getHandler();
    }

    public zzad(Context context, String str) {
        this(context);
        this.zzdtb = str;
    }

    private static int zza(List<String> list, String str, boolean z) {
        list.add(str);
        return list.size() - 1;
    }

    private final boolean zza(float f, float f2, float f3, float f4) {
        return Math.abs(this.zzefa.x - f) < ((float) this.zzeez) && Math.abs(this.zzefa.y - f2) < ((float) this.zzeez) && Math.abs(this.zzefb.x - f3) < ((float) this.zzeez) && Math.abs(this.zzefb.y - f4) < ((float) this.zzeez);
    }

    public final void setAdUnitId(String str) {
        this.zzbut = str;
    }

    public final void showDialog() {
        try {
            if (!(this.context instanceof Activity)) {
                zzazk.zzew("Can not create dialog without Activity Context");
                return;
            }
            String str = !TextUtils.isEmpty(zzr.zzlb().zzzl()) ? "Creative Preview (Enabled)" : "Creative Preview";
            String str2 = zzr.zzlb().zzzm() ? "Troubleshooting (Enabled)" : "Troubleshooting";
            ArrayList arrayList = new ArrayList();
            int zza = zza((List<String>) arrayList, "Ad Information", true);
            int zza2 = zza((List<String>) arrayList, str, true);
            int zza3 = zza((List<String>) arrayList, str2, true);
            AlertDialog.Builder builder = new AlertDialog.Builder(this.context, zzr.zzkt().zzzf());
            builder.setTitle("Select a Debug Mode").setItems((CharSequence[]) arrayList.toArray(new String[0]), new DialogInterface.OnClickListener(this, zza, zza2, zza3) { // from class: com.google.android.gms.ads.internal.util.zzaf
                private final zzad zzefd;
                private final int zzefe;
                private final int zzeff;
                private final int zzefg;

                {
                    this.zzefd = this;
                    this.zzefe = zza;
                    this.zzeff = zza2;
                    this.zzefg = zza3;
                }

                @Override // android.content.DialogInterface.OnClickListener
                public final void onClick(DialogInterface dialogInterface, int i) {
                    this.zzefd.zza(this.zzefe, this.zzeff, this.zzefg, dialogInterface, i);
                }
            });
            builder.create().show();
        } catch (WindowManager.BadTokenException e) {
            zzd.zza("", e);
        }
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder(100);
        sb.append("{Dialog: ");
        sb.append(this.zzdtb);
        sb.append(",DebugSignal: ");
        sb.append(this.zzdws);
        sb.append(",AFMA Version: ");
        sb.append(this.zzbrp);
        sb.append(",Ad Unit ID: ");
        sb.append(this.zzbut);
        sb.append("}");
        return sb.toString();
    }

    /* JADX WARN: Code restructure failed: missing block: B:15:0x00b6, code lost:
        if (android.text.TextUtils.isEmpty(r11) == false) goto L17;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final /* synthetic */ void zza(int r8, int r9, int r10, android.content.DialogInterface r11, int r12) {
        /*
            Method dump skipped, instructions count: 320
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.ads.internal.util.zzad.zza(int, int, int, android.content.DialogInterface, int):void");
    }

    public final /* synthetic */ void zza(String str, DialogInterface dialogInterface, int i) {
        zzr.zzkr();
        zzj.zza(this.context, Intent.createChooser(new Intent("android.intent.action.SEND").setType("text/plain").putExtra("android.intent.extra.TEXT", str), "Share via"));
    }

    /* JADX WARN: Code restructure failed: missing block: B:30:0x00e8, code lost:
        if (zza(r9.getX(), r9.getY(), r9.getX(1), r9.getY(1)) == false) goto L19;
     */
    /* JADX WARN: Removed duplicated region for block: B:33:0x00f3  */
    /* JADX WARN: Removed duplicated region for block: B:39:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void zzd(android.view.MotionEvent r9) {
        /*
            Method dump skipped, instructions count: 260
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.ads.internal.util.zzad.zzd(android.view.MotionEvent):void");
    }

    public final void zzem(String str) {
        this.zzdtb = str;
    }

    public final void zzen(String str) {
        this.zzdws = str;
    }

    public final void zzu(String str) {
        this.zzbrp = str;
    }

    public final /* synthetic */ void zzzh() {
        zzr.zzlb().zza(this.context, this.zzbut, this.zzbrp, this.zzdws);
    }

    public final /* synthetic */ void zzzi() {
        zzr.zzlb().zze(this.context, this.zzbut, this.zzbrp);
    }

    public final /* synthetic */ void zzzj() {
        this.state = 4;
        showDialog();
    }
}
