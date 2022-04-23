package com.google.android.gms.internal.measurement;

import java.util.ArrayList;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzrz.class */
public final class zzrz {
    private final List<zzru> zzbop;
    private final List<zzru> zzboq;
    private final List<zzru> zzbor;
    private final List<zzru> zzbos;
    private final List<zzru> zzbpv;
    private final List<zzru> zzbpw;
    private final List<String> zzbpx;
    private final List<String> zzbpy;
    private final List<String> zzbpz;
    private final List<String> zzbqa;

    private zzrz() {
        this.zzbop = new ArrayList();
        this.zzboq = new ArrayList();
        this.zzbor = new ArrayList();
        this.zzbos = new ArrayList();
        this.zzbpv = new ArrayList();
        this.zzbpw = new ArrayList();
        this.zzbpx = new ArrayList();
        this.zzbpy = new ArrayList();
        this.zzbpz = new ArrayList();
        this.zzbqa = new ArrayList();
    }

    public final zzrz zzd(zzru zzruVar) {
        this.zzbop.add(zzruVar);
        return this;
    }

    public final zzrz zze(zzru zzruVar) {
        this.zzboq.add(zzruVar);
        return this;
    }

    public final zzrz zzf(zzru zzruVar) {
        this.zzbor.add(zzruVar);
        return this;
    }

    public final zzrz zzff(String str) {
        this.zzbpz.add(str);
        return this;
    }

    public final zzrz zzfg(String str) {
        this.zzbqa.add(str);
        return this;
    }

    public final zzrz zzfh(String str) {
        this.zzbpx.add(str);
        return this;
    }

    public final zzrz zzfi(String str) {
        this.zzbpy.add(str);
        return this;
    }

    public final zzrz zzg(zzru zzruVar) {
        this.zzbos.add(zzruVar);
        return this;
    }

    public final zzrz zzh(zzru zzruVar) {
        this.zzbpv.add(zzruVar);
        return this;
    }

    public final zzrz zzi(zzru zzruVar) {
        this.zzbpw.add(zzruVar);
        return this;
    }

    public final zzry zzsw() {
        return new zzry(this.zzbop, this.zzboq, this.zzbor, this.zzbos, this.zzbpv, this.zzbpw, this.zzbpx, this.zzbpy, this.zzbpz, this.zzbqa);
    }
}
