package com.google.android.gms.internal.ads;

import android.media.AudioTrack;
import android.os.SystemClock;
import java.lang.reflect.Method;
import java.util.Objects;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzea.class */
public final class zzea {
    private long zzA;
    private long zzB;
    private long zzC;
    private boolean zzD;
    private long zzE;
    private long zzF;
    private final zzdz zza;
    private final long[] zzb;
    private AudioTrack zzc;
    private int zzd;
    private int zze;
    private zzdy zzf;
    private int zzg;
    private boolean zzh;
    private long zzi;
    private float zzj;
    private boolean zzk;
    private long zzl;
    private long zzm;
    private Method zzn;
    private long zzo;
    private boolean zzp;
    private boolean zzq;
    private long zzr;
    private long zzs;
    private long zzt;
    private long zzu;
    private int zzv;
    private int zzw;
    private long zzx;
    private long zzy;
    private long zzz;

    public zzea(zzdz zzdzVar) {
        this.zza = zzdzVar;
        if (zzamq.zza >= 18) {
            try {
                this.zzn = AudioTrack.class.getMethod("getLatency", null);
            } catch (NoSuchMethodException e) {
            }
        }
        this.zzb = new long[10];
    }

    private final long zzm(long j) {
        return (j * 1000000) / this.zzg;
    }

    private final void zzn() {
        this.zzl = 0L;
        this.zzw = 0;
        this.zzv = 0;
        this.zzm = 0L;
        this.zzC = 0L;
        this.zzF = 0L;
        this.zzk = false;
    }

    /* JADX WARN: Type inference failed for: r0v13, types: [long] */
    /* JADX WARN: Type inference failed for: r0v42, types: [long] */
    private final long zzo() {
        AudioTrack audioTrack = this.zzc;
        Objects.requireNonNull(audioTrack);
        if (this.zzx != -9223372036854775807L) {
            return Math.min(this.zzA, ((((SystemClock.elapsedRealtime() * 1000) - this.zzx) * this.zzg) / 1000000) + this.zzz);
        }
        int playState = audioTrack.getPlayState();
        if (playState == 1) {
            return 0L;
        }
        ?? playbackHeadPosition = audioTrack.getPlaybackHeadPosition() & 4294967295L;
        int i = playState;
        char c = playbackHeadPosition;
        if (this.zzh) {
            i = playState;
            if (playState == 2) {
                if (playbackHeadPosition == 0) {
                    this.zzu = this.zzs;
                }
                i = 2;
            }
            c = playbackHeadPosition + this.zzu;
        }
        if (zzamq.zza <= 29) {
            if (c == 0 && this.zzs > 0 && i == 3) {
                if (this.zzy == -9223372036854775807L) {
                    this.zzy = SystemClock.elapsedRealtime();
                }
                return this.zzs;
            }
            this.zzy = -9223372036854775807L;
        }
        if (this.zzs > c) {
            this.zzt++;
        }
        this.zzs = c;
        return c + (this.zzt << 32);
    }

    /* JADX WARN: Type inference failed for: r0v22, types: [long] */
    public final void zza(AudioTrack audioTrack, boolean z, int i, int i2, int i3) {
        this.zzc = audioTrack;
        this.zzd = i2;
        this.zze = i3;
        this.zzf = new zzdy(audioTrack);
        this.zzg = audioTrack.getSampleRate();
        this.zzh = false;
        boolean zzP = zzamq.zzP(i);
        this.zzq = zzP;
        this.zzi = zzP ? zzm(i3 / i2) : (char) 1;
        this.zzs = 0L;
        this.zzt = 0L;
        this.zzu = 0L;
        this.zzp = false;
        this.zzx = -9223372036854775807L;
        this.zzy = -9223372036854775807L;
        this.zzr = 0L;
        this.zzo = 0L;
        this.zzj = 1.0f;
    }

    /* JADX WARN: Type inference failed for: r0v62, types: [long] */
    /* JADX WARN: Type inference failed for: r0v71, types: [long] */
    /* JADX WARN: Type inference failed for: r0v74, types: [long] */
    /* JADX WARN: Type inference failed for: r0v76, types: [long] */
    /* JADX WARN: Type inference failed for: r0v82, types: [long] */
    public final long zzb(boolean z) {
        char c;
        zzdt zzdtVar;
        zzdt zzdtVar2;
        zzdp zzdpVar;
        Method method;
        AudioTrack audioTrack = this.zzc;
        Objects.requireNonNull(audioTrack);
        if (audioTrack.getPlayState() == 3) {
            long zzm = zzm(zzo());
            if (zzm != 0) {
                long nanoTime = System.nanoTime() / 1000;
                if (nanoTime - this.zzm >= 30000) {
                    long[] jArr = this.zzb;
                    int i = this.zzv;
                    jArr[i] = zzm - nanoTime;
                    this.zzv = (i + 1) % 10;
                    int i2 = this.zzw;
                    if (i2 < 10) {
                        this.zzw = i2 + 1;
                    }
                    this.zzm = nanoTime;
                    this.zzl = 0L;
                    int i3 = 0;
                    while (true) {
                        int i4 = this.zzw;
                        if (i3 >= i4) {
                            break;
                        }
                        this.zzl = (this.zzb[i3] / i4) + this.zzl;
                        i3++;
                    }
                }
                if (!this.zzh) {
                    zzdy zzdyVar = this.zzf;
                    Objects.requireNonNull(zzdyVar);
                    if (zzdyVar.zza(nanoTime)) {
                        long zzf = zzdyVar.zzf();
                        long zzg = zzdyVar.zzg();
                        if (Math.abs(zzf - nanoTime) > 5000000) {
                            zzej zzejVar = (zzej) this.zza;
                            zzejVar.zza.zzN();
                            zzejVar.zza.zzO();
                            zzdyVar.zzb();
                        } else if (Math.abs(zzm(zzg) - zzm) > 5000000) {
                            zzej zzejVar2 = (zzej) this.zza;
                            zzejVar2.zza.zzN();
                            zzejVar2.zza.zzO();
                            zzdyVar.zzb();
                        } else {
                            zzdyVar.zzc();
                        }
                    }
                    if (this.zzq && (method = this.zzn) != null && nanoTime - this.zzr >= 500000) {
                        try {
                            AudioTrack audioTrack2 = this.zzc;
                            Objects.requireNonNull(audioTrack2);
                            Integer num = (Integer) method.invoke(audioTrack2, new Object[0]);
                            int i5 = zzamq.zza;
                            long intValue = (num.intValue() * 1000) - this.zzi;
                            this.zzo = intValue;
                            long max = Math.max(intValue, 0L);
                            this.zzo = max;
                            if (max > 5000000) {
                                this.zzo = 0L;
                            }
                        } catch (Exception e) {
                            this.zzn = null;
                        }
                        this.zzr = nanoTime;
                    }
                }
            }
        }
        long nanoTime2 = System.nanoTime() / 1000;
        zzdy zzdyVar2 = this.zzf;
        Objects.requireNonNull(zzdyVar2);
        boolean zzd = zzdyVar2.zzd();
        if (zzd) {
            c = zzamq.zzJ(nanoTime2 - zzdyVar2.zzf(), this.zzj) + zzm(zzdyVar2.zzg());
        } else {
            char zzm2 = this.zzw == 0 ? zzm(zzo()) : this.zzl + nanoTime2;
            c = zzm2;
            if (!z) {
                c = Math.max(0L, zzm2 - this.zzo);
            }
        }
        if (this.zzD != zzd) {
            this.zzF = this.zzC;
            this.zzE = this.zzB;
        }
        long j = nanoTime2 - this.zzF;
        char c2 = c;
        if (j < 1000000) {
            long j2 = (j * 1000) / 1000000;
            c2 = (((zzamq.zzJ(j, this.zzj) + this.zzE) * (1000 - j2)) + (c * j2)) / 1000;
        }
        if (!this.zzk) {
            long j3 = this.zzB;
            if (c2 > j3) {
                this.zzk = true;
                long zzK = zzamq.zzK(zzadx.zza(c2 - j3), this.zzj);
                long currentTimeMillis = System.currentTimeMillis();
                long zza = zzadx.zza(zzK);
                zzej zzejVar3 = (zzej) this.zza;
                zzdtVar = zzejVar3.zza.zzk;
                if (zzdtVar != null) {
                    zzdtVar2 = zzejVar3.zza.zzk;
                    zzdpVar = ((zzep) zzdtVar2).zza.zzc;
                    zzdpVar.zzd(currentTimeMillis - zza);
                }
            }
        }
        this.zzC = nanoTime2;
        this.zzB = c2;
        this.zzD = zzd;
        return c2;
    }

    public final void zzc() {
        zzdy zzdyVar = this.zzf;
        Objects.requireNonNull(zzdyVar);
        zzdyVar.zze();
    }

    public final boolean zzd() {
        AudioTrack audioTrack = this.zzc;
        Objects.requireNonNull(audioTrack);
        return audioTrack.getPlayState() == 3;
    }

    public final boolean zze(long j) {
        zzdt zzdtVar;
        long j2;
        zzdt zzdtVar2;
        zzdp zzdpVar;
        AudioTrack audioTrack = this.zzc;
        Objects.requireNonNull(audioTrack);
        int playState = audioTrack.getPlayState();
        int i = playState;
        if (this.zzh) {
            if (playState == 2) {
                this.zzp = false;
                return false;
            }
            i = playState;
            if (playState == 1) {
                if (zzo() == 0) {
                    return false;
                }
                i = 1;
            }
        }
        boolean z = this.zzp;
        boolean zzj = zzj(j);
        this.zzp = zzj;
        if (!z || zzj || i == 1) {
            return true;
        }
        zzdz zzdzVar = this.zza;
        int i2 = this.zze;
        long zza = zzadx.zza(this.zzi);
        zzej zzejVar = (zzej) zzdzVar;
        zzdtVar = zzejVar.zza.zzk;
        if (zzdtVar == null) {
            return true;
        }
        long elapsedRealtime = SystemClock.elapsedRealtime();
        j2 = zzejVar.zza.zzM;
        zzdtVar2 = zzejVar.zza.zzk;
        zzdpVar = ((zzep) zzdtVar2).zza.zzc;
        zzdpVar.zze(i2, zza, elapsedRealtime - j2);
        return true;
    }

    public final int zzf(long j) {
        return this.zze - ((int) (j - (zzo() * this.zzd)));
    }

    public final long zzg(long j) {
        return zzadx.zza(zzm(-zzo()));
    }

    public final boolean zzh(long j) {
        return this.zzy != -9223372036854775807L && j > 0 && SystemClock.elapsedRealtime() - this.zzy >= 200;
    }

    public final void zzi(long j) {
        this.zzz = zzo();
        this.zzx = SystemClock.elapsedRealtime() * 1000;
        this.zzA = j;
    }

    public final boolean zzj(long j) {
        if (j <= zzo()) {
            if (!this.zzh) {
                return false;
            }
            AudioTrack audioTrack = this.zzc;
            Objects.requireNonNull(audioTrack);
            return audioTrack.getPlayState() == 2 && zzo() == 0;
        }
        return true;
    }

    public final boolean zzk() {
        zzn();
        if (this.zzx == -9223372036854775807L) {
            zzdy zzdyVar = this.zzf;
            Objects.requireNonNull(zzdyVar);
            zzdyVar.zze();
            return true;
        }
        return false;
    }

    public final void zzl() {
        zzn();
        this.zzc = null;
        this.zzf = null;
    }
}
