package com.google.android.gms.internal.ads;

import android.annotation.TargetApi;
import android.content.Context;
import android.graphics.Rect;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import android.webkit.WebView;
import android.widget.EditText;
import android.widget.TextView;
import com.google.ads.mediation.facebook.FacebookAdapter;
import com.google.android.gms.ads.internal.zzt;
import com.google.android.gms.common.util.PlatformVersion;
import com.google.android.gms.common.util.VisibleForTesting;
import javax.annotation.ParametersAreNonnullByDefault;
import org.json.JSONException;
import org.json.JSONObject;
@ParametersAreNonnullByDefault
@TargetApi(14)
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzayz.class */
public final class zzayz extends Thread {
    private final zzayq zzd;
    private boolean zza = false;
    private boolean zzb = false;
    private final Object zzc = new Object();
    private final int zzf = zzbmq.zzd.zze().intValue();
    private final int zzg = zzbmq.zza.zze().intValue();
    private final int zzh = zzbmq.zze.zze().intValue();
    private final int zzi = zzbmq.zzc.zze().intValue();
    private final int zzj = ((Integer) zzbgq.zzc().zzb(zzblj.zzN)).intValue();
    private final int zzk = ((Integer) zzbgq.zzc().zzb(zzblj.zzO)).intValue();
    private final int zzl = ((Integer) zzbgq.zzc().zzb(zzblj.zzP)).intValue();
    private final int zze = zzbmq.zzf.zze().intValue();
    private final String zzm = (String) zzbgq.zzc().zzb(zzblj.zzR);
    private final boolean zzn = ((Boolean) zzbgq.zzc().zzb(zzblj.zzS)).booleanValue();
    private final boolean zzo = ((Boolean) zzbgq.zzc().zzb(zzblj.zzT)).booleanValue();
    private final boolean zzp = ((Boolean) zzbgq.zzc().zzb(zzblj.zzU)).booleanValue();

    public zzayz() {
        zzayq zzayqVar = new zzayq();
        this.zzd = zzayqVar;
        setName("ContentFetchTask");
    }

    /* JADX WARN: Removed duplicated region for block: B:63:0x0132 A[EXC_TOP_SPLITTER, LOOP:2: B:63:0x0132->B:74:0x0132, LOOP_START, SYNTHETIC] */
    @Override // java.lang.Thread, java.lang.Runnable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void run() {
        /*
            Method dump skipped, instructions count: 347
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzayz.run():void");
    }

    public final zzayp zza() {
        return this.zzd.zza(this.zzp);
    }

    @VisibleForTesting
    public final zzayy zzb(View view, zzayp zzaypVar) {
        if (view == null) {
            return new zzayy(this, 0, 0);
        }
        boolean globalVisibleRect = view.getGlobalVisibleRect(new Rect());
        if ((view instanceof TextView) && !(view instanceof EditText)) {
            CharSequence text = ((TextView) view).getText();
            if (TextUtils.isEmpty(text)) {
                return new zzayy(this, 0, 0);
            }
            zzaypVar.zzk(text.toString(), globalVisibleRect, view.getX(), view.getY(), view.getWidth(), view.getHeight());
            return new zzayy(this, 1, 0);
        } else if ((view instanceof WebView) && !(view instanceof zzcop)) {
            WebView webView = (WebView) view;
            if (!PlatformVersion.isAtLeastKitKat()) {
                return new zzayy(this, 0, 0);
            }
            zzaypVar.zzh();
            webView.post(new zzayx(this, zzaypVar, webView, globalVisibleRect));
            return new zzayy(this, 0, 1);
        } else if (!(view instanceof ViewGroup)) {
            return new zzayy(this, 0, 0);
        } else {
            ViewGroup viewGroup = (ViewGroup) view;
            int i = 0;
            int i2 = 0;
            for (int i3 = 0; i3 < viewGroup.getChildCount(); i3++) {
                zzayy zzb = zzb(viewGroup.getChildAt(i3), zzaypVar);
                i += zzb.zza;
                i2 += zzb.zzb;
            }
            return new zzayy(this, i, i2);
        }
    }

    @VisibleForTesting
    public final void zzc(View view) {
        try {
            zzayp zzaypVar = new zzayp(this.zzf, this.zzg, this.zzh, this.zzi, this.zzj, this.zzk, this.zzl, this.zzo);
            Context zzb = zzt.zzb().zzb();
            if (zzb != null && !TextUtils.isEmpty(this.zzm)) {
                String str = (String) view.getTag(zzb.getResources().getIdentifier((String) zzbgq.zzc().zzb(zzblj.zzQ), FacebookAdapter.KEY_ID, zzb.getPackageName()));
                if (str != null && str.equals(this.zzm)) {
                    return;
                }
            }
            zzayy zzb2 = zzb(view, zzaypVar);
            zzaypVar.zzm();
            if (zzb2.zza == 0 && zzb2.zzb == 0) {
                return;
            }
            if (zzb2.zzb == 0 && zzaypVar.zzc() == 0) {
                return;
            }
            if (zzb2.zzb == 0 && this.zzd.zzd(zzaypVar)) {
                return;
            }
            this.zzd.zzb(zzaypVar);
        } catch (Exception e) {
            zzciz.zzh("Exception in fetchContentOnUIThread", e);
            zzt.zzo().zzs(e, "ContentFetchTask.fetchContent");
        }
    }

    @VisibleForTesting
    public final void zzd(zzayp zzaypVar, WebView webView, String str, boolean z) {
        zzaypVar.zzg();
        try {
            if (!TextUtils.isEmpty(str)) {
                String optString = new JSONObject(str).optString("text");
                if (this.zzn || TextUtils.isEmpty(webView.getTitle())) {
                    zzaypVar.zzl(optString, z, webView.getX(), webView.getY(), webView.getWidth(), webView.getHeight());
                } else {
                    String title = webView.getTitle();
                    StringBuilder sb = new StringBuilder(String.valueOf(title).length() + 1 + String.valueOf(optString).length());
                    sb.append(title);
                    sb.append("\n");
                    sb.append(optString);
                    zzaypVar.zzl(sb.toString(), z, webView.getX(), webView.getY(), webView.getWidth(), webView.getHeight());
                }
            }
            if (!zzaypVar.zzo()) {
                return;
            }
            this.zzd.zzc(zzaypVar);
        } catch (JSONException e) {
            zzciz.zze("Json string may be malformed.");
        } catch (Throwable th) {
            zzciz.zzf("Failed to get webview content.", th);
            zzt.zzo().zzs(th, "ContentFetchTask.processWebViewContent");
        }
    }

    public final void zze() {
        synchronized (this.zzc) {
            if (this.zza) {
                zzciz.zze("Content hash thread already started, quiting...");
                return;
            }
            this.zza = true;
            start();
        }
    }

    public final void zzf() {
        synchronized (this.zzc) {
            this.zzb = true;
            zzciz.zze("ContentFetchThread: paused, mPause = true");
        }
    }

    public final void zzg() {
        synchronized (this.zzc) {
            this.zzb = false;
            this.zzc.notifyAll();
            zzciz.zze("ContentFetchThread: wakeup");
        }
    }

    public final boolean zzh() {
        return this.zzb;
    }
}
