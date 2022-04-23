package com.criteo.publisher.p034z;

import android.os.AsyncTask;
import android.util.Log;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.criteo.publisher.CriteoErrorCode;
import com.criteo.publisher.CriteoInterstitialAdDisplayListener;
import com.criteo.publisher.model.C2043q;
import com.criteo.publisher.model.C2054y;
import com.criteo.publisher.p020a0.C1931s;
import com.criteo.publisher.p020a0.C1932t;
import com.google.firebase.perf.network.FirebasePerfUrlConnection;
import java.net.HttpURLConnection;
import java.net.URL;
/* renamed from: com.criteo.publisher.z.d */
/* loaded from: classes-dex2jar.jar:com/criteo/publisher/z/d.class */
public class AsyncTaskC2182d extends AsyncTask<String, Void, String> {
    @NonNull

    /* renamed from: a */
    public C2054y f2518a;
    @NonNull

    /* renamed from: b */
    public final C2043q f2519b;
    @Nullable

    /* renamed from: c */
    public CriteoInterstitialAdDisplayListener f2520c;

    public AsyncTaskC2182d(@NonNull C2054y yVar, @NonNull C2043q qVar, @Nullable CriteoInterstitialAdDisplayListener criteoInterstitialAdDisplayListener) {
        this.f2518a = yVar;
        this.f2519b = qVar;
        this.f2520c = criteoInterstitialAdDisplayListener;
    }

    /* renamed from: b */
    private String m35517b(String[] strArr) throws Exception {
        String str = strArr[0];
        String str2 = this.f2519b.mo35831a().get();
        HttpURLConnection httpURLConnection = (HttpURLConnection) FirebasePerfUrlConnection.instrument(new URL(str).openConnection());
        httpURLConnection.setRequestMethod("GET");
        httpURLConnection.setRequestProperty("Content-Type", "text/plain");
        if (!C1932t.m35993a((CharSequence) str2)) {
            httpURLConnection.setRequestProperty("User-Agent", str2);
        }
        if (httpURLConnection.getResponseCode() == 200) {
            return C1931s.m35994a(httpURLConnection.getInputStream());
        }
        return null;
    }

    /* renamed from: b */
    private void m35518b(@Nullable String str) {
        if (C1932t.m35993a((CharSequence) str)) {
            this.f2518a.m35778a();
            CriteoInterstitialAdDisplayListener criteoInterstitialAdDisplayListener = this.f2520c;
            if (criteoInterstitialAdDisplayListener != null) {
                criteoInterstitialAdDisplayListener.onAdFailedToDisplay(CriteoErrorCode.ERROR_CODE_NETWORK_ERROR);
                return;
            }
            return;
        }
        this.f2518a.m35777a(str);
        this.f2518a.m35774c();
        CriteoInterstitialAdDisplayListener criteoInterstitialAdDisplayListener2 = this.f2520c;
        if (criteoInterstitialAdDisplayListener2 != null) {
            criteoInterstitialAdDisplayListener2.onAdReadyToDisplay();
        }
    }

    /* renamed from: a */
    public String doInBackground(String... strArr) {
        try {
            return m35517b(strArr);
        } catch (Throwable th) {
            Log.e("Criteo.WVDT", "Internal WVDT exec error.", th);
            return null;
        }
    }

    /* renamed from: a */
    public void onPostExecute(@Nullable String str) {
        try {
            m35518b(str);
        } catch (Throwable th) {
            Log.e("Criteo.WVDT", "Internal WVDT PostExec error.", th);
        }
    }
}
