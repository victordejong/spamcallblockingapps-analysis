package com.google.android.gms.internal.ads;

import android.content.Context;
import android.graphics.Bitmap;
import android.text.TextUtils;
import android.view.MotionEvent;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.core.app.NotificationCompat;
import androidx.core.internal.view.SupportMenu;
import androidx.core.view.InputDeviceCompat;
import com.facebook.appevents.AppEventsConstants;
import com.google.android.gms.ads.internal.util.zzd;
import com.google.android.gms.ads.internal.util.zzj;
import com.google.android.gms.ads.internal.zzr;
import com.google.android.gms.common.internal.Preconditions;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import javax.annotation.ParametersAreNonnullByDefault;
@ParametersAreNonnullByDefault
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzbax.class */
public final class zzbax extends FrameLayout implements zzbaw {
    private final zzbbo zzeix;
    private final FrameLayout zzejw;
    private final zzacc zzejx;
    private final zzbbq zzejy;
    private final long zzejz;
    private zzbav zzeka;
    private boolean zzekb;
    private boolean zzekc;
    private boolean zzekd;
    private boolean zzeke;
    private long zzekf;
    private long zzekg;
    private String zzekh;
    private String[] zzeki;
    private Bitmap zzekj;
    private ImageView zzekk;
    private boolean zzekl;

    public zzbax(Context context, zzbbo zzbboVar, int i, boolean z, zzacc zzaccVar, zzbbl zzbblVar) {
        super(context);
        this.zzeix = zzbboVar;
        this.zzejx = zzaccVar;
        FrameLayout frameLayout = new FrameLayout(context);
        this.zzejw = frameLayout;
        if (((Boolean) zzwr.zzqr().zzd(zzabp.zzcno)).booleanValue()) {
            frameLayout.setBackgroundResource(17170444);
        }
        addView(frameLayout, new FrameLayout.LayoutParams(-1, -1));
        Preconditions.checkNotNull(zzbboVar.zzabf());
        zzbav zza = zzbboVar.zzabf().zzbol.zza(context, zzbboVar, i, z, zzaccVar, zzbblVar);
        this.zzeka = zza;
        if (zza != null) {
            frameLayout.addView(zza, new FrameLayout.LayoutParams(-1, -1, 17));
            if (((Boolean) zzwr.zzqr().zzd(zzabp.zzcnf)).booleanValue()) {
                zzaar();
            }
        }
        this.zzekk = new ImageView(context);
        this.zzejz = ((Long) zzwr.zzqr().zzd(zzabp.zzcnj)).longValue();
        boolean booleanValue = ((Boolean) zzwr.zzqr().zzd(zzabp.zzcnh)).booleanValue();
        this.zzeke = booleanValue;
        if (zzaccVar != null) {
            zzaccVar.zzg("spinner_used", booleanValue ? "1" : AppEventsConstants.EVENT_PARAM_VALUE_NO);
        }
        this.zzejy = new zzbbq(this);
        zzbav zzbavVar = this.zzeka;
        if (zzbavVar != null) {
            zzbavVar.zza(this);
        }
        if (this.zzeka == null) {
            zzl("AdVideoUnderlay Error", "Allocating player failed.");
        }
    }

    public static void zza(zzbbo zzbboVar) {
        HashMap hashMap = new HashMap();
        hashMap.put(NotificationCompat.CATEGORY_EVENT, "no_video_view");
        zzbboVar.zza("onVideoEvent", hashMap);
    }

    public static void zza(zzbbo zzbboVar, String str) {
        HashMap hashMap = new HashMap();
        hashMap.put(NotificationCompat.CATEGORY_EVENT, "decoderProps");
        hashMap.put("error", str);
        zzbboVar.zza("onVideoEvent", hashMap);
    }

    public static void zza(zzbbo zzbboVar, Map<String, List<Map<String, Object>>> map) {
        HashMap hashMap = new HashMap();
        hashMap.put(NotificationCompat.CATEGORY_EVENT, "decoderProps");
        hashMap.put("mimeTypes", map);
        zzbboVar.zza("onVideoEvent", hashMap);
    }

    private final boolean zzaat() {
        return this.zzekk.getParent() != null;
    }

    private final void zzaau() {
        if (this.zzeix.zzabe() != null && this.zzekc && !this.zzekd) {
            this.zzeix.zzabe().getWindow().clearFlags(128);
            this.zzekc = false;
        }
    }

    public final void zzd(String str, String... strArr) {
        String str2;
        HashMap hashMap = new HashMap();
        hashMap.put(NotificationCompat.CATEGORY_EVENT, str);
        String str3 = null;
        for (String str4 : strArr) {
            if (str3 == null) {
                str2 = str4;
            } else {
                hashMap.put(str3, str4);
                str2 = null;
            }
            str3 = str2;
        }
        this.zzeix.zza("onVideoEvent", hashMap);
    }

    public final void destroy() {
        this.zzejy.pause();
        zzbav zzbavVar = this.zzeka;
        if (zzbavVar != null) {
            zzbavVar.stop();
        }
        zzaau();
    }

    public final void finalize() throws Throwable {
        try {
            this.zzejy.pause();
            zzbav zzbavVar = this.zzeka;
            if (zzbavVar != null) {
                zzdzv zzdzvVar = zzazp.zzeig;
                zzbavVar.getClass();
                zzdzvVar.execute(zzbba.zza(zzbavVar));
            }
        } finally {
            super.finalize();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbaw
    public final void onPaused() {
        zzd("pause", new String[0]);
        zzaau();
        this.zzekb = false;
    }

    @Override // android.view.View
    public final void onWindowFocusChanged(boolean z) {
        super.onWindowFocusChanged(z);
        if (z) {
            this.zzejy.resume();
        } else {
            this.zzejy.pause();
            this.zzekg = this.zzekf;
        }
        zzj.zzeen.post(new Runnable(this, z) { // from class: com.google.android.gms.internal.ads.zzbaz
            private final zzbax zzekm;
            private final boolean zzekn;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.zzekm = this;
                this.zzekn = z;
            }

            @Override // java.lang.Runnable
            public final void run() {
                this.zzekm.zzav(this.zzekn);
            }
        });
    }

    @Override // android.view.View, com.google.android.gms.internal.ads.zzbaw
    public final void onWindowVisibilityChanged(int i) {
        boolean z;
        super.onWindowVisibilityChanged(i);
        if (i == 0) {
            this.zzejy.resume();
            z = true;
        } else {
            this.zzejy.pause();
            this.zzekg = this.zzekf;
            z = false;
        }
        zzj.zzeen.post(new zzbbe(this, z));
    }

    public final void pause() {
        zzbav zzbavVar = this.zzeka;
        if (zzbavVar == null) {
            return;
        }
        zzbavVar.pause();
    }

    public final void play() {
        zzbav zzbavVar = this.zzeka;
        if (zzbavVar == null) {
            return;
        }
        zzbavVar.play();
    }

    public final void seekTo(int i) {
        zzbav zzbavVar = this.zzeka;
        if (zzbavVar == null) {
            return;
        }
        zzbavVar.seekTo(i);
    }

    public final void setVolume(float f) {
        zzbav zzbavVar = this.zzeka;
        if (zzbavVar == null) {
            return;
        }
        zzbavVar.zzejv.setVolume(f);
        zzbavVar.zzaaj();
    }

    public final void zza(float f, float f2) {
        zzbav zzbavVar = this.zzeka;
        if (zzbavVar != null) {
            zzbavVar.zza(f, f2);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbaw
    public final void zzaak() {
        this.zzejy.resume();
        zzj.zzeen.post(new zzbbc(this));
    }

    @Override // com.google.android.gms.internal.ads.zzbaw
    public final void zzaal() {
        if (this.zzeix.zzabe() != null && !this.zzekc) {
            boolean z = (this.zzeix.zzabe().getWindow().getAttributes().flags & 128) != 0;
            this.zzekd = z;
            if (!z) {
                this.zzeix.zzabe().getWindow().addFlags(128);
                this.zzekc = true;
            }
        }
        this.zzekb = true;
    }

    @Override // com.google.android.gms.internal.ads.zzbaw
    public final void zzaam() {
        zzd("ended", new String[0]);
        zzaau();
    }

    @Override // com.google.android.gms.internal.ads.zzbaw
    public final void zzaan() {
        if (this.zzekl && this.zzekj != null && !zzaat()) {
            this.zzekk.setImageBitmap(this.zzekj);
            this.zzekk.invalidate();
            this.zzejw.addView(this.zzekk, new FrameLayout.LayoutParams(-1, -1));
            this.zzejw.bringChildToFront(this.zzekk);
        }
        this.zzejy.pause();
        this.zzekg = this.zzekf;
        zzj.zzeen.post(new zzbbb(this));
    }

    @Override // com.google.android.gms.internal.ads.zzbaw
    public final void zzaao() {
        if (this.zzekb && zzaat()) {
            this.zzejw.removeView(this.zzekk);
        }
        if (this.zzekj != null) {
            long elapsedRealtime = zzr.zzky().elapsedRealtime();
            if (this.zzeka.getBitmap(this.zzekj) != null) {
                this.zzekl = true;
            }
            long elapsedRealtime2 = zzr.zzky().elapsedRealtime() - elapsedRealtime;
            if (zzd.zzyg()) {
                StringBuilder sb = new StringBuilder(46);
                sb.append("Spinner frame grab took ");
                sb.append(elapsedRealtime2);
                sb.append("ms");
                zzd.zzeb(sb.toString());
            }
            if (elapsedRealtime2 <= this.zzejz) {
                return;
            }
            zzd.zzex("Spinner frame grab crossed jank threshold! Suspending spinner.");
            this.zzeke = false;
            this.zzekj = null;
            zzacc zzaccVar = this.zzejx;
            if (zzaccVar == null) {
                return;
            }
            zzaccVar.zzg("spinner_jank", Long.toString(elapsedRealtime2));
        }
    }

    public final void zzaap() {
        zzbav zzbavVar = this.zzeka;
        if (zzbavVar == null) {
            return;
        }
        zzbavVar.zzejv.setMuted(true);
        zzbavVar.zzaaj();
    }

    public final void zzaaq() {
        zzbav zzbavVar = this.zzeka;
        if (zzbavVar == null) {
            return;
        }
        zzbavVar.zzejv.setMuted(false);
        zzbavVar.zzaaj();
    }

    public final void zzaar() {
        zzbav zzbavVar = this.zzeka;
        if (zzbavVar == null) {
            return;
        }
        TextView textView = new TextView(zzbavVar.getContext());
        String valueOf = String.valueOf(this.zzeka.zzaad());
        textView.setText(valueOf.length() != 0 ? "AdMob - ".concat(valueOf) : new String("AdMob - "));
        textView.setTextColor(SupportMenu.CATEGORY_MASK);
        textView.setBackgroundColor(InputDeviceCompat.SOURCE_ANY);
        this.zzejw.addView(textView, new FrameLayout.LayoutParams(-2, -2, 17));
        this.zzejw.bringChildToFront(textView);
    }

    public final void zzaas() {
        zzbav zzbavVar = this.zzeka;
        if (zzbavVar == null) {
            return;
        }
        long currentPosition = zzbavVar.getCurrentPosition();
        if (this.zzekf == currentPosition || currentPosition <= 0) {
            return;
        }
        float f = ((float) currentPosition) / 1000.0f;
        if (((Boolean) zzwr.zzqr().zzd(zzabp.zzcrm)).booleanValue()) {
            zzd("timeupdate", "time", String.valueOf(f), "totalBytes", String.valueOf(this.zzeka.getTotalBytes()), "qoeCachedBytes", String.valueOf(this.zzeka.zznb()), "qoeLoadedBytes", String.valueOf(this.zzeka.zzaah()), "droppedFrames", String.valueOf(this.zzeka.zzaai()), "reportTime", String.valueOf(zzr.zzky().currentTimeMillis()));
        } else {
            zzd("timeupdate", "time", String.valueOf(f));
        }
        this.zzekf = currentPosition;
    }

    public final /* synthetic */ void zzav(boolean z) {
        zzd("windowFocusChanged", "hasWindowFocus", String.valueOf(z));
    }

    public final void zzc(String str, String[] strArr) {
        this.zzekh = str;
        this.zzeki = strArr;
    }

    public final void zzd(int i, int i2, int i3, int i4) {
        if (i3 == 0 || i4 == 0) {
            return;
        }
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(i3, i4);
        layoutParams.setMargins(i, i2, 0, 0);
        this.zzejw.setLayoutParams(layoutParams);
        requestLayout();
    }

    public final void zzdk(int i) {
        this.zzeka.zzdk(i);
    }

    public final void zzdl(int i) {
        this.zzeka.zzdl(i);
    }

    public final void zzdm(int i) {
        this.zzeka.zzdm(i);
    }

    public final void zzdn(int i) {
        this.zzeka.zzdn(i);
    }

    public final void zzdo(int i) {
        this.zzeka.zzdo(i);
    }

    public final void zze(MotionEvent motionEvent) {
        zzbav zzbavVar = this.zzeka;
        if (zzbavVar == null) {
            return;
        }
        zzbavVar.dispatchTouchEvent(motionEvent);
    }

    @Override // com.google.android.gms.internal.ads.zzbaw
    public final void zzfb() {
        zzbav zzbavVar = this.zzeka;
        if (zzbavVar != null && this.zzekg == 0) {
            zzd("canplaythrough", "duration", String.valueOf(zzbavVar.getDuration() / 1000.0f), "videoWidth", String.valueOf(this.zzeka.getVideoWidth()), "videoHeight", String.valueOf(this.zzeka.getVideoHeight()));
        }
    }

    public final void zzhy() {
        if (this.zzeka == null) {
            return;
        }
        if (!TextUtils.isEmpty(this.zzekh)) {
            this.zzeka.zzb(this.zzekh, this.zzeki);
        } else {
            zzd("no_src", new String[0]);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbaw
    public final void zzk(int i, int i2) {
        if (this.zzeke) {
            int max = Math.max(i / ((Integer) zzwr.zzqr().zzd(zzabp.zzcni)).intValue(), 1);
            int max2 = Math.max(i2 / ((Integer) zzwr.zzqr().zzd(zzabp.zzcni)).intValue(), 1);
            Bitmap bitmap = this.zzekj;
            if (bitmap != null && bitmap.getWidth() == max && this.zzekj.getHeight() == max2) {
                return;
            }
            this.zzekj = Bitmap.createBitmap(max, max2, Bitmap.Config.ARGB_8888);
            this.zzekl = false;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbaw
    public final void zzl(String str, String str2) {
        zzd("error", "what", str, "extra", str2);
    }
}
