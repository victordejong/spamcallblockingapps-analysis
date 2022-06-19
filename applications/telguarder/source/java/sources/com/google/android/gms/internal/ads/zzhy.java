package com.google.android.gms.internal.ads;

import java.io.IOException;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzhy.class */
public interface zzhy extends zzhj {
    void disable();

    int getState();

    int getTrackType();

    boolean isReady();

    void setIndex(int i);

    void start() throws zzhe;

    void stop() throws zzhe;

    void zza(zzia zziaVar, zzht[] zzhtVarArr, zznn zznnVar, long j, boolean z, long j2) throws zzhe;

    void zza(zzht[] zzhtVarArr, zznn zznnVar, long j) throws zzhe;

    void zzb(long j, long j2) throws zzhe;

    void zzdm(long j) throws zzhe;

    zzib zzdz();

    zzpk zzea();

    zznn zzeb();

    boolean zzec();

    void zzed();

    boolean zzee();

    void zzef() throws IOException;

    boolean zzfe();
}
