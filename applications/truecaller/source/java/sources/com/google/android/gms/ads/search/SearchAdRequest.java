package com.google.android.gms.ads.search;

import android.content.Context;
import android.location.Location;
import android.os.Bundle;
import androidx.annotation.RecentlyNonNull;
import androidx.annotation.RecentlyNullable;
import com.google.android.gms.ads.mediation.MediationAdapter;
import com.google.android.gms.ads.mediation.NetworkExtras;
import com.google.android.gms.ads.mediation.customevent.CustomEvent;
import com.google.android.gms.internal.ads.zzbhi;
import com.google.android.gms.internal.ads.zzbhj;
import org.checkerframework.checker.initialization.qual.NotOnlyInitialized;
@Deprecated
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/ads/search/SearchAdRequest.class */
public final class SearchAdRequest {
    public static final int BORDER_TYPE_DASHED = 1;
    public static final int BORDER_TYPE_DOTTED = 2;
    public static final int BORDER_TYPE_NONE = 0;
    public static final int BORDER_TYPE_SOLID = 3;
    public static final int CALL_BUTTON_COLOR_DARK = 2;
    public static final int CALL_BUTTON_COLOR_LIGHT = 0;
    public static final int CALL_BUTTON_COLOR_MEDIUM = 1;
    @RecentlyNonNull
    public static final String DEVICE_ID_EMULATOR = "B3EEABB8EE11C2BE770B684D95219ECB";
    public static final int ERROR_CODE_INTERNAL_ERROR = 0;
    public static final int ERROR_CODE_INVALID_REQUEST = 1;
    public static final int ERROR_CODE_NETWORK_ERROR = 2;
    public static final int ERROR_CODE_NO_FILL = 3;
    @NotOnlyInitialized
    private final zzbhj zza;
    private final String zzb;

    public /* synthetic */ SearchAdRequest(zzb zzbVar, zzc zzcVar) {
        String str;
        zzbhi zzbhiVar;
        str = zzbVar.zzb;
        this.zzb = str;
        zzbhiVar = zzbVar.zza;
        this.zza = new zzbhj(zzbhiVar, this);
    }

    @Deprecated
    public int getAnchorTextColor() {
        return 0;
    }

    @Deprecated
    public int getBackgroundColor() {
        return 0;
    }

    @Deprecated
    public int getBackgroundGradientBottom() {
        return 0;
    }

    @Deprecated
    public int getBackgroundGradientTop() {
        return 0;
    }

    @Deprecated
    public int getBorderColor() {
        return 0;
    }

    @Deprecated
    public int getBorderThickness() {
        return 0;
    }

    @Deprecated
    public int getBorderType() {
        return 0;
    }

    @Deprecated
    public int getCallButtonColor() {
        return 0;
    }

    @RecentlyNullable
    @Deprecated
    public String getCustomChannels() {
        return null;
    }

    @RecentlyNullable
    public <T extends CustomEvent> Bundle getCustomEventExtrasBundle(@RecentlyNonNull Class<T> cls) {
        return this.zza.zzi(cls);
    }

    @Deprecated
    public int getDescriptionTextColor() {
        return 0;
    }

    @RecentlyNullable
    @Deprecated
    public String getFontFace() {
        return null;
    }

    @Deprecated
    public int getHeaderTextColor() {
        return 0;
    }

    @Deprecated
    public int getHeaderTextSize() {
        return 0;
    }

    @RecentlyNonNull
    public Location getLocation() {
        return this.zza.zzf();
    }

    @RecentlyNullable
    @Deprecated
    public <T extends NetworkExtras> T getNetworkExtras(@RecentlyNonNull Class<T> cls) {
        return (T) this.zza.zzg(cls);
    }

    @RecentlyNullable
    public <T extends MediationAdapter> Bundle getNetworkExtrasBundle(@RecentlyNonNull Class<T> cls) {
        return this.zza.zzh(cls);
    }

    @RecentlyNonNull
    public String getQuery() {
        return this.zzb;
    }

    public boolean isTestDevice(@RecentlyNonNull Context context) {
        return this.zza.zzm(context);
    }

    public final zzbhj zza() {
        return this.zza;
    }
}
