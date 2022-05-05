package com.criteo.publisher.p029v;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.os.Handler;
import android.os.Looper;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import androidx.media2.exoplayer.external.text.ttml.TtmlNode;
import com.criteo.publisher.CriteoInterstitialActivity;
import com.criteo.publisher.CriteoInterstitialAdListener;
import com.criteo.publisher.p020a0.ResultReceiverC1923k;
import com.criteo.publisher.p022o.C2084b;
import java.lang.ref.WeakReference;
/* renamed from: com.criteo.publisher.v.a */
/* loaded from: classes-dex2jar.jar:com/criteo/publisher/v/a.class */
public class C2157a {
    @NonNull

    /* renamed from: a */
    public final Context f2460a;
    @NonNull

    /* renamed from: b */
    public final C2084b f2461b;

    public C2157a(@NonNull Context context, @NonNull C2084b bVar) {
        this.f2460a = context;
        this.f2461b = bVar;
    }

    @NonNull
    /* renamed from: b */
    private Intent m35585b() {
        return new Intent(this.f2460a, CriteoInterstitialActivity.class);
    }

    @VisibleForTesting
    /* renamed from: a */
    public ResultReceiverC1923k m35587a(@Nullable CriteoInterstitialAdListener criteoInterstitialAdListener) {
        return new ResultReceiverC1923k(new Handler(Looper.getMainLooper()), new WeakReference(criteoInterstitialAdListener));
    }

    /* renamed from: a */
    public void mo35586a(@NonNull String str, @Nullable CriteoInterstitialAdListener criteoInterstitialAdListener) {
        if (mo35588a()) {
            ResultReceiverC1923k a = m35587a(criteoInterstitialAdListener);
            ComponentName a2 = this.f2461b.m35715a();
            Intent b = m35585b();
            b.setFlags(268435456);
            b.putExtra("webviewdata", str);
            b.putExtra("resultreceiver", a);
            b.putExtra("callingactivity", a2);
            this.f2460a.startActivity(b);
        }
    }

    /* renamed from: a */
    public boolean mo35588a() {
        boolean z = false;
        if (this.f2460a.getPackageManager().resolveActivity(m35585b(), 65536) == null) {
            return false;
        }
        if (this.f2460a.getResources().getIdentifier("activity_criteo_interstitial", TtmlNode.TAG_LAYOUT, this.f2460a.getPackageName()) != 0) {
            z = true;
        }
        return z;
    }
}
