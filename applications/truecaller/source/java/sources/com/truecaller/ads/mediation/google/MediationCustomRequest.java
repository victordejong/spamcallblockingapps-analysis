package com.truecaller.ads.mediation.google;

import android.os.Bundle;
import androidx.annotation.Keep;
import com.google.android.gms.ads.AdSize;
import java.util.Set;
import kotlin.Metadata;
@Metadata(bv = {1, 0, 3}, d1 = {"��8\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\u0010\u000b\n\u0002\b\u0006\n\u0002\u0010\b\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0010\u000e\n\u0002\b\u0006\n\u0002\u0010\"\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\t\b\u0017\u0018��2\u00020\u0001B\u0007¢\u0006\u0004\b5\u00106R\"\u0010\u0003\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0003\u0010\u0004\u001a\u0004\b\u0005\u0010\u0006\"\u0004\b\u0007\u0010\bR\"\u0010\n\u001a\u00020\t8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\n\u0010\u000b\u001a\u0004\b\f\u0010\r\"\u0004\b\u000e\u0010\u000fR\"\u0010\u0010\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0010\u0010\u0004\u001a\u0004\b\u0011\u0010\u0006\"\u0004\b\u0012\u0010\bR$\u0010\u0014\u001a\u0004\u0018\u00010\u00138\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0014\u0010\u0015\u001a\u0004\b\u0016\u0010\u0017\"\u0004\b\u0018\u0010\u0019R\"\u0010\u001a\u001a\u00020\t8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u001a\u0010\u000b\u001a\u0004\b\u001b\u0010\r\"\u0004\b\u001c\u0010\u000fR$\u0010\u001e\u001a\u0004\u0018\u00010\u001d8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u001e\u0010\u001f\u001a\u0004\b \u0010!\"\u0004\b\"\u0010#R,\u0010%\u001a\f\u0012\u0006\u0012\u0004\u0018\u00010\u001d\u0018\u00010$8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b%\u0010&\u001a\u0004\b'\u0010(\"\u0004\b)\u0010*R\"\u0010+\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b+\u0010\u0004\u001a\u0004\b,\u0010\u0006\"\u0004\b-\u0010\bR$\u0010/\u001a\u0004\u0018\u00010.8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b/\u00100\u001a\u0004\b1\u00102\"\u0004\b3\u00104¨\u00067"}, d2 = {"Lcom/truecaller/ads/mediation/google/MediationCustomRequest;", "", "", "shouldDownloadMultipleImages", "Z", "getShouldDownloadMultipleImages", "()Z", "setShouldDownloadMultipleImages", "(Z)V", "", "imageOrientation", "I", "getImageOrientation", "()I", "setImageOrientation", "(I)V", "shouldDownloadImages", "getShouldDownloadImages", "setShouldDownloadImages", "Lcom/google/android/gms/ads/AdSize;", "adSize", "Lcom/google/android/gms/ads/AdSize;", "getAdSize", "()Lcom/google/android/gms/ads/AdSize;", "setAdSize", "(Lcom/google/android/gms/ads/AdSize;)V", "adChoicesPlacement", "getAdChoicesPlacement", "setAdChoicesPlacement", "", "serverParams", "Ljava/lang/String;", "getServerParams", "()Ljava/lang/String;", "setServerParams", "(Ljava/lang/String;)V", "", "keywords", "Ljava/util/Set;", "getKeywords", "()Ljava/util/Set;", "setKeywords", "(Ljava/util/Set;)V", "useTesting", "getUseTesting", "setUseTesting", "Landroid/os/Bundle;", "eventExtras", "Landroid/os/Bundle;", "getEventExtras", "()Landroid/os/Bundle;", "setEventExtras", "(Landroid/os/Bundle;)V", "<init>", "()V", "ads_release"}, k = 1, mv = {1, 4, 1})
@Keep
/* loaded from: classes3-dex2jar.jar:com/truecaller/ads/mediation/google/MediationCustomRequest.class */
public class MediationCustomRequest {
    private int adChoicesPlacement;
    private AdSize adSize;
    private Bundle eventExtras;
    private int imageOrientation;
    private Set<String> keywords;
    private String serverParams;
    private boolean shouldDownloadImages = true;
    private boolean shouldDownloadMultipleImages = true;
    private boolean useTesting;

    public final int getAdChoicesPlacement() {
        return this.adChoicesPlacement;
    }

    public final AdSize getAdSize() {
        return this.adSize;
    }

    public final Bundle getEventExtras() {
        return this.eventExtras;
    }

    public final int getImageOrientation() {
        return this.imageOrientation;
    }

    public final Set<String> getKeywords() {
        return this.keywords;
    }

    public final String getServerParams() {
        return this.serverParams;
    }

    public final boolean getShouldDownloadImages() {
        return this.shouldDownloadImages;
    }

    public final boolean getShouldDownloadMultipleImages() {
        return this.shouldDownloadMultipleImages;
    }

    public final boolean getUseTesting() {
        return this.useTesting;
    }

    public final void setAdChoicesPlacement(int i) {
        this.adChoicesPlacement = i;
    }

    public final void setAdSize(AdSize adSize) {
        this.adSize = adSize;
    }

    public final void setEventExtras(Bundle bundle) {
        this.eventExtras = bundle;
    }

    public final void setImageOrientation(int i) {
        this.imageOrientation = i;
    }

    public final void setKeywords(Set<String> set) {
        this.keywords = set;
    }

    public final void setServerParams(String str) {
        this.serverParams = str;
    }

    public final void setShouldDownloadImages(boolean z) {
        this.shouldDownloadImages = z;
    }

    public final void setShouldDownloadMultipleImages(boolean z) {
        this.shouldDownloadMultipleImages = z;
    }

    public final void setUseTesting(boolean z) {
        this.useTesting = z;
    }
}
