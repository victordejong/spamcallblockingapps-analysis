package com.google.android.gms.internal.ads;

import android.content.Context;
import android.graphics.Rect;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import android.webkit.WebView;
import android.widget.EditText;
import android.widget.TextView;
import com.google.android.gms.ads.internal.zzt;
import com.google.android.gms.common.util.VisibleForTesting;
import com.tenor.android.core.constant.StringConstant;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzaxc.class */
public final class zzaxc extends Thread {
    private final zzawt zzd;
    private boolean zza = false;
    private boolean zzb = false;
    private final Object zzc = new Object();
    private final int zzf = zzbks.zzd.zze().intValue();
    private final int zzg = zzbks.zza.zze().intValue();
    private final int zzh = zzbks.zze.zze().intValue();
    private final int zzi = zzbks.zzc.zze().intValue();
    private final int zzj = ((Integer) zzbet.zzc().zzc(zzbjl.zzN)).intValue();
    private final int zzk = ((Integer) zzbet.zzc().zzc(zzbjl.zzO)).intValue();
    private final int zzl = ((Integer) zzbet.zzc().zzc(zzbjl.zzP)).intValue();
    private final int zze = zzbks.zzf.zze().intValue();
    private final String zzm = (String) zzbet.zzc().zzc(zzbjl.zzR);
    private final boolean zzn = ((Boolean) zzbet.zzc().zzc(zzbjl.zzS)).booleanValue();
    private final boolean zzo = ((Boolean) zzbet.zzc().zzc(zzbjl.zzT)).booleanValue();
    private final boolean zzp = ((Boolean) zzbet.zzc().zzc(zzbjl.zzU)).booleanValue();

    public zzaxc() {
        zzawt zzawtVar = new zzawt();
        this.zzd = zzawtVar;
        setName("ContentFetchTask");
    }

    /* JADX WARN: Removed duplicated region for block: B:65:0x0131 A[EXC_TOP_SPLITTER, LOOP:2: B:65:0x0131->B:74:0x0131, LOOP_START, SYNTHETIC] */
    @Override // java.lang.Thread, java.lang.Runnable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void run() {
        /*
            Method dump skipped, instructions count: 346
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzaxc.run():void");
    }

    public final void zza() {
        synchronized (this.zzc) {
            if (this.zza) {
                zzcgt.zzd("Content hash thread already started, quiting...");
                return;
            }
            this.zza = true;
            start();
        }
    }

    @VisibleForTesting
    public final void zzb(View view) {
        try {
            zzaws zzawsVar = new zzaws(this.zzf, this.zzg, this.zzh, this.zzi, this.zzj, this.zzk, this.zzl, this.zzo);
            Context zze = zzt.zzf().zze();
            if (zze != null && !TextUtils.isEmpty(this.zzm)) {
                String str = (String) view.getTag(zze.getResources().getIdentifier((String) zzbet.zzc().zzc(zzbjl.zzQ), "id", zze.getPackageName()));
                if (str != null && str.equals(this.zzm)) {
                    return;
                }
            }
            zzaxb zzc = zzc(view, zzawsVar);
            zzawsVar.zzk();
            if (zzc.zza == 0 && zzc.zzb == 0) {
                return;
            }
            if (zzc.zzb == 0 && zzawsVar.zzo() == 0) {
                return;
            }
            if (zzc.zzb == 0 && this.zzd.zzb(zzawsVar)) {
                return;
            }
            this.zzd.zzd(zzawsVar);
        } catch (Exception e) {
            zzcgt.zzg("Exception in fetchContentOnUIThread", e);
            zzt.zzg().zzk(e, "ContentFetchTask.fetchContent");
        }
    }

    @VisibleForTesting
    public final zzaxb zzc(View view, zzaws zzawsVar) {
        if (view == null) {
            return new zzaxb(this, 0, 0);
        }
        boolean globalVisibleRect = view.getGlobalVisibleRect(new Rect());
        if ((view instanceof TextView) && !(view instanceof EditText)) {
            CharSequence text = ((TextView) view).getText();
            if (TextUtils.isEmpty(text)) {
                return new zzaxb(this, 0, 0);
            }
            zzawsVar.zzi(text.toString(), globalVisibleRect, view.getX(), view.getY(), view.getWidth(), view.getHeight());
            return new zzaxb(this, 1, 0);
        } else if ((view instanceof WebView) && !(view instanceof zzcml)) {
            WebView webView = (WebView) view;
            zzawsVar.zzg();
            webView.post(new zzaxa(this, zzawsVar, webView, globalVisibleRect));
            return new zzaxb(this, 0, 1);
        } else if (!(view instanceof ViewGroup)) {
            return new zzaxb(this, 0, 0);
        } else {
            ViewGroup viewGroup = (ViewGroup) view;
            int i = 0;
            int i2 = 0;
            for (int i3 = 0; i3 < viewGroup.getChildCount(); i3++) {
                zzaxb zzc = zzc(viewGroup.getChildAt(i3), zzawsVar);
                i += zzc.zza;
                i2 += zzc.zzb;
            }
            return new zzaxb(this, i, i2);
        }
    }

    @VisibleForTesting
    public final void zzd(zzaws zzawsVar, WebView webView, String str, boolean z) {
        zzawsVar.zzf();
        try {
            if (!TextUtils.isEmpty(str)) {
                String optString = new JSONObject(str).optString("text");
                if (this.zzn || TextUtils.isEmpty(webView.getTitle())) {
                    zzawsVar.zzh(optString, z, webView.getX(), webView.getY(), webView.getWidth(), webView.getHeight());
                } else {
                    String title = webView.getTitle();
                    StringBuilder sb = new StringBuilder(String.valueOf(title).length() + 1 + String.valueOf(optString).length());
                    sb.append(title);
                    sb.append(StringConstant.NEW_LINE);
                    sb.append(optString);
                    zzawsVar.zzh(sb.toString(), z, webView.getX(), webView.getY(), webView.getWidth(), webView.getHeight());
                }
            }
            if (!zzawsVar.zza()) {
                return;
            }
            this.zzd.zzc(zzawsVar);
        } catch (JSONException e) {
            zzcgt.zzd("Json string may be malformed.");
        } catch (Throwable th) {
            zzcgt.zze("Failed to get webview content.", th);
            zzt.zzg().zzk(th, "ContentFetchTask.processWebViewContent");
        }
    }

    public final zzaws zze() {
        return this.zzd.zza(this.zzp);
    }

    public final void zzf() {
        synchronized (this.zzc) {
            this.zzb = false;
            this.zzc.notifyAll();
            zzcgt.zzd("ContentFetchThread: wakeup");
        }
    }

    public final void zzg() {
        synchronized (this.zzc) {
            this.zzb = true;
            zzcgt.zzd("ContentFetchThread: paused, mPause = true");
        }
    }

    public final boolean zzh() {
        return this.zzb;
    }
}
