package com.google.android.gms.internal.ads;

import java.io.IOException;
import kotlin.jvm.internal.LongCompanionObject;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzhd.class */
public abstract class zzhd implements zzhy, zzib {
    private int index;
    private int state;
    private final int zzaed;
    private zzia zzaee;
    private zznn zzaef;
    private long zzaeg;
    private boolean zzaeh = true;
    private boolean zzaei;

    public zzhd(int i) {
        this.zzaed = i;
    }

    @Override // com.google.android.gms.internal.ads.zzhy
    public final void disable() {
        boolean z = true;
        if (this.state != 1) {
            z = false;
        }
        zzpg.checkState(z);
        this.state = 0;
        this.zzaef = null;
        this.zzaei = false;
        zzeh();
    }

    public final int getIndex() {
        return this.index;
    }

    @Override // com.google.android.gms.internal.ads.zzhy
    public final int getState() {
        return this.state;
    }

    @Override // com.google.android.gms.internal.ads.zzhy, com.google.android.gms.internal.ads.zzib
    public final int getTrackType() {
        return this.zzaed;
    }

    protected void onStarted() throws zzhe {
    }

    protected void onStopped() throws zzhe {
    }

    @Override // com.google.android.gms.internal.ads.zzhy
    public final void setIndex(int i) {
        this.index = i;
    }

    @Override // com.google.android.gms.internal.ads.zzhy
    public final void start() throws zzhe {
        boolean z = true;
        if (this.state != 1) {
            z = false;
        }
        zzpg.checkState(z);
        this.state = 2;
        onStarted();
    }

    @Override // com.google.android.gms.internal.ads.zzhy
    public final void stop() throws zzhe {
        zzpg.checkState(this.state == 2);
        this.state = 1;
        onStopped();
    }

    public final int zza(zzhv zzhvVar, zzjp zzjpVar, boolean z) {
        int zzb = this.zzaef.zzb(zzhvVar, zzjpVar, z);
        if (zzb == -4) {
            if (zzjpVar.zzgi()) {
                this.zzaeh = true;
                return this.zzaei ? -4 : -3;
            }
            zzjpVar.zzaol += this.zzaeg;
        } else if (zzb == -5) {
            zzht zzhtVar = zzhvVar.zzahz;
            if (zzhtVar.zzaht != LongCompanionObject.MAX_VALUE) {
                zzhvVar.zzahz = zzhtVar.zzds(zzhtVar.zzaht + this.zzaeg);
            }
        }
        return zzb;
    }

    @Override // com.google.android.gms.internal.ads.zzhj
    public void zza(int i, Object obj) throws zzhe {
    }

    protected void zza(long j, boolean z) throws zzhe {
    }

    @Override // com.google.android.gms.internal.ads.zzhy
    public final void zza(zzia zziaVar, zzht[] zzhtVarArr, zznn zznnVar, long j, boolean z, long j2) throws zzhe {
        zzpg.checkState(this.state == 0);
        this.zzaee = zziaVar;
        this.state = 1;
        zze(z);
        zza(zzhtVarArr, zznnVar, j2);
        zza(j, z);
    }

    public void zza(zzht[] zzhtVarArr, long j) throws zzhe {
    }

    @Override // com.google.android.gms.internal.ads.zzhy
    public final void zza(zzht[] zzhtVarArr, zznn zznnVar, long j) throws zzhe {
        zzpg.checkState(!this.zzaei);
        this.zzaef = zznnVar;
        this.zzaeh = false;
        this.zzaeg = j;
        zza(zzhtVarArr, j);
    }

    @Override // com.google.android.gms.internal.ads.zzhy
    public final void zzdm(long j) throws zzhe {
        this.zzaei = false;
        this.zzaeh = false;
        zza(j, false);
    }

    public final void zzdn(long j) {
        this.zzaef.zzeh(j - this.zzaeg);
    }

    @Override // com.google.android.gms.internal.ads.zzhy
    public final zzib zzdz() {
        return this;
    }

    protected void zze(boolean z) throws zzhe {
    }

    @Override // com.google.android.gms.internal.ads.zzhy
    public zzpk zzea() {
        return null;
    }

    @Override // com.google.android.gms.internal.ads.zzhy
    public final zznn zzeb() {
        return this.zzaef;
    }

    @Override // com.google.android.gms.internal.ads.zzhy
    public final boolean zzec() {
        return this.zzaeh;
    }

    @Override // com.google.android.gms.internal.ads.zzhy
    public final void zzed() {
        this.zzaei = true;
    }

    @Override // com.google.android.gms.internal.ads.zzhy
    public final boolean zzee() {
        return this.zzaei;
    }

    @Override // com.google.android.gms.internal.ads.zzhy
    public final void zzef() throws IOException {
        this.zzaef.zzhs();
    }

    @Override // com.google.android.gms.internal.ads.zzib
    public int zzeg() throws zzhe {
        return 0;
    }

    protected void zzeh() {
    }

    public final zzia zzei() {
        return this.zzaee;
    }

    public final boolean zzej() {
        return this.zzaeh ? this.zzaei : this.zzaef.isReady();
    }
}
