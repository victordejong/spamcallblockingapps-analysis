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
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/ads/internal/util/zzad.class */
public final class zzad {
    private final Context context;
    private Handler handler;
    private int state;
    private String zzbrz;
    private String zzbvf;
    private String zzdul;
    private String zzdyc;
    private int zzehc;
    private PointF zzehd;
    private PointF zzehe;
    private Runnable zzehf;

    public zzad(Context context) {
        this.state = 0;
        this.zzehf = new Runnable(this) { // from class: com.google.android.gms.ads.internal.util.zzag
            private final zzad zzehg;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.zzehg = this;
            }

            @Override // java.lang.Runnable
            public final void run() {
                this.zzehg.zzaac();
            }
        };
        this.context = context;
        this.zzehc = ViewConfiguration.get(context).getScaledTouchSlop();
        zzr.zzlj().zzaai();
        this.handler = zzr.zzlj().getHandler();
    }

    public zzad(Context context, String str) {
        this(context);
        this.zzdul = str;
    }

    private static int zza(List<String> list, String str, boolean z) {
        list.add(str);
        return list.size() - 1;
    }

    private final boolean zza(float f, float f2, float f3, float f4) {
        return Math.abs(this.zzehd.x - f) < ((float) this.zzehc) && Math.abs(this.zzehd.y - f2) < ((float) this.zzehc) && Math.abs(this.zzehe.x - f3) < ((float) this.zzehc) && Math.abs(this.zzehe.y - f4) < ((float) this.zzehc);
    }

    public final void setAdUnitId(String str) {
        this.zzbvf = str;
    }

    public final void showDialog() {
        try {
            if (!(this.context instanceof Activity)) {
                zzd.zzey("Can not create dialog without Activity Context");
                return;
            }
            String str = !TextUtils.isEmpty(zzr.zzlf().zzaae()) ? "Creative Preview (Enabled)" : "Creative Preview";
            String str2 = zzr.zzlf().zzaaf() ? "Troubleshooting (Enabled)" : "Troubleshooting";
            ArrayList arrayList = new ArrayList();
            int zza = zza((List<String>) arrayList, "Ad Information", true);
            int zza2 = zza((List<String>) arrayList, str, true);
            int zza3 = zza((List<String>) arrayList, str2, true);
            AlertDialog.Builder builder = new AlertDialog.Builder(this.context, zzr.zzkx().zzzy());
            builder.setTitle("Select a Debug Mode").setItems((CharSequence[]) arrayList.toArray(new String[0]), new DialogInterface.OnClickListener(this, zza, zza2, zza3) { // from class: com.google.android.gms.ads.internal.util.zzaf
                private final zzad zzehg;
                private final int zzehh;
                private final int zzehi;
                private final int zzehj;

                /* JADX INFO: Access modifiers changed from: package-private */
                {
                    this.zzehg = this;
                    this.zzehh = zza;
                    this.zzehi = zza2;
                    this.zzehj = zza3;
                }

                @Override // android.content.DialogInterface.OnClickListener
                public final void onClick(DialogInterface dialogInterface, int i) {
                    this.zzehg.zza(this.zzehh, this.zzehi, this.zzehj, dialogInterface, i);
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
        sb.append(this.zzdul);
        sb.append(",DebugSignal: ");
        sb.append(this.zzdyc);
        sb.append(",AFMA Version: ");
        sb.append(this.zzbrz);
        sb.append(",Ad Unit ID: ");
        sb.append(this.zzbvf);
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
        zzr.zzkv();
        zzj.zza(this.context, Intent.createChooser(new Intent("android.intent.action.SEND").setType("text/plain").putExtra("android.intent.extra.TEXT", str), "Share via"));
    }

    public final /* synthetic */ void zzaaa() {
        zzr.zzlf().zza(this.context, this.zzbvf, this.zzbrz, this.zzdyc);
    }

    public final /* synthetic */ void zzaab() {
        zzr.zzlf().zze(this.context, this.zzbvf, this.zzbrz);
    }

    public final /* synthetic */ void zzaac() {
        this.state = 4;
        showDialog();
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

    public final void zzeo(String str) {
        this.zzdul = str;
    }

    public final void zzep(String str) {
        this.zzdyc = str;
    }

    public final void zzu(String str) {
        this.zzbrz = str;
    }
}
