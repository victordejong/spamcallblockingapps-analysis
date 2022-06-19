package com.google.android.gms.internal.ads;

import android.media.AudioTrack;
import android.os.SystemClock;
import android.util.Log;
import java.lang.reflect.Method;
import java.util.Objects;
import p007a6.C0028d;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzmd.class */
public final class zzmd {
    private long zzA;
    private long zzB;
    private long zzC;
    private boolean zzD;
    private long zzE;
    private long zzF;
    private final zzmc zza;
    private final long[] zzb;
    private AudioTrack zzc;
    private int zzd;
    private int zze;
    private zzmb zzf;
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

    public zzmd(zzmc zzmcVar) {
        this.zza = zzmcVar;
        if (zzfn.zza >= 18) {
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

    /* JADX WARN: Type inference failed for: r0v13, types: [long] */
    /* JADX WARN: Type inference failed for: r0v42, types: [long] */
    private final long zzn() {
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
        if (zzfn.zza <= 29) {
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

    private final void zzo() {
        this.zzl = 0L;
        this.zzw = 0;
        this.zzv = 0;
        this.zzm = 0L;
        this.zzC = 0L;
        this.zzF = 0L;
        this.zzk = false;
    }

    public final int zza(long j) {
        return this.zze - ((int) (j - (zzn() * this.zzd)));
    }

    /* JADX WARN: Type inference failed for: r0v64, types: [long] */
    /* JADX WARN: Type inference failed for: r0v73, types: [long] */
    /* JADX WARN: Type inference failed for: r0v76, types: [long] */
    /* JADX WARN: Type inference failed for: r0v78, types: [long] */
    /* JADX WARN: Type inference failed for: r0v84, types: [long] */
    public final long zzb(boolean z) {
        char c;
        zzlw zzlwVar;
        zzlw zzlwVar2;
        zzls zzlsVar;
        Method method;
        long zzD;
        long zzE;
        long zzD2;
        long zzE2;
        AudioTrack audioTrack = this.zzc;
        Objects.requireNonNull(audioTrack);
        if (audioTrack.getPlayState() == 3) {
            long zzm = zzm(zzn());
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
                    zzmb zzmbVar = this.zzf;
                    Objects.requireNonNull(zzmbVar);
                    if (zzmbVar.zzg(nanoTime)) {
                        long zzb = zzmbVar.zzb();
                        long zza = zzmbVar.zza();
                        if (Math.abs(zzb - nanoTime) > 5000000) {
                            zzmn zzmnVar = (zzmn) this.zza;
                            zzD2 = zzmnVar.zza.zzD();
                            zzE2 = zzmnVar.zza.zzE();
                            StringBuilder sb = new StringBuilder(180);
                            sb.append("Spurious audio timestamp (system clock mismatch): ");
                            sb.append(zza);
                            sb.append(", ");
                            sb.append(zzb);
                            C0028d.m8911i(sb, ", ", nanoTime, ", ");
                            sb.append(zzm);
                            C0028d.m8911i(sb, ", ", zzD2, ", ");
                            sb.append(zzE2);
                            Log.w("DefaultAudioSink", sb.toString());
                            zzmbVar.zzd();
                        } else if (Math.abs(zzm(zza) - zzm) > 5000000) {
                            zzmn zzmnVar2 = (zzmn) this.zza;
                            zzD = zzmnVar2.zza.zzD();
                            zzE = zzmnVar2.zza.zzE();
                            StringBuilder sb2 = new StringBuilder(182);
                            sb2.append("Spurious audio timestamp (frame position mismatch): ");
                            sb2.append(zza);
                            sb2.append(", ");
                            sb2.append(zzb);
                            C0028d.m8911i(sb2, ", ", nanoTime, ", ");
                            sb2.append(zzm);
                            C0028d.m8911i(sb2, ", ", zzD, ", ");
                            sb2.append(zzE);
                            Log.w("DefaultAudioSink", sb2.toString());
                            zzmbVar.zzd();
                        } else {
                            zzmbVar.zzc();
                        }
                    }
                    if (this.zzq && (method = this.zzn) != null && nanoTime - this.zzr >= 500000) {
                        try {
                            AudioTrack audioTrack2 = this.zzc;
                            Objects.requireNonNull(audioTrack2);
                            Integer num = (Integer) method.invoke(audioTrack2, new Object[0]);
                            int i5 = zzfn.zza;
                            long intValue = (num.intValue() * 1000) - this.zzi;
                            this.zzo = intValue;
                            long max = Math.max(intValue, 0L);
                            this.zzo = max;
                            if (max > 5000000) {
                                StringBuilder sb3 = new StringBuilder(61);
                                sb3.append("Ignoring impossibly large audio latency: ");
                                sb3.append(max);
                                Log.w("DefaultAudioSink", sb3.toString());
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
        zzmb zzmbVar2 = this.zzf;
        Objects.requireNonNull(zzmbVar2);
        boolean zzf = zzmbVar2.zzf();
        if (zzf) {
            c = zzfn.zzp(nanoTime2 - zzmbVar2.zzb(), this.zzj) + zzm(zzmbVar2.zza());
        } else {
            char zzm2 = this.zzw == 0 ? zzm(zzn()) : this.zzl + nanoTime2;
            c = zzm2;
            if (!z) {
                c = Math.max(0L, zzm2 - this.zzo);
            }
        }
        if (this.zzD != zzf) {
            this.zzF = this.zzC;
            this.zzE = this.zzB;
        }
        long j = nanoTime2 - this.zzF;
        char c2 = c;
        if (j < 1000000) {
            long j2 = (j * 1000) / 1000000;
            c2 = (((zzfn.zzp(j, this.zzj) + this.zzE) * (1000 - j2)) + (c * j2)) / 1000;
        }
        if (!this.zzk) {
            long j3 = this.zzB;
            if (c2 > j3) {
                this.zzk = true;
                long zzr = zzfn.zzr(zzk.zzd(c2 - j3), this.zzj);
                long currentTimeMillis = System.currentTimeMillis();
                long zzd = zzk.zzd(zzr);
                zzmn zzmnVar3 = (zzmn) this.zza;
                zzlwVar = zzmnVar3.zza.zzk;
                if (zzlwVar != null) {
                    zzlwVar2 = zzmnVar3.zza.zzk;
                    zzlsVar = ((zzmu) zzlwVar2).zza.zzc;
                    zzlsVar.zzr(currentTimeMillis - zzd);
                }
            }
        }
        this.zzC = nanoTime2;
        this.zzB = c2;
        this.zzD = zzf;
        return c2;
    }

    public final long zzc(long j) {
        return zzk.zzd(zzm(-zzn()));
    }

    public final void zzd(long j) {
        this.zzz = zzn();
        this.zzx = SystemClock.elapsedRealtime() * 1000;
        this.zzA = j;
    }

    public final void zze() {
        zzo();
        this.zzc = null;
        this.zzf = null;
    }

    /* JADX WARN: Type inference failed for: r0v22, types: [long] */
    public final void zzf(AudioTrack audioTrack, boolean z, int i, int i2, int i3) {
        this.zzc = audioTrack;
        this.zzd = i2;
        this.zze = i3;
        this.zzf = new zzmb(audioTrack);
        this.zzg = audioTrack.getSampleRate();
        this.zzh = false;
        boolean zzR = zzfn.zzR(i);
        this.zzq = zzR;
        this.zzi = zzR ? zzm(i3 / i2) : (char) 1;
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

    public final void zzg() {
        zzmb zzmbVar = this.zzf;
        Objects.requireNonNull(zzmbVar);
        zzmbVar.zze();
    }

    public final boolean zzh(long j) {
        if (j <= zzn()) {
            if (!this.zzh) {
                return false;
            }
            AudioTrack audioTrack = this.zzc;
            Objects.requireNonNull(audioTrack);
            return audioTrack.getPlayState() == 2 && zzn() == 0;
        }
        return true;
    }

    public final boolean zzi() {
        AudioTrack audioTrack = this.zzc;
        Objects.requireNonNull(audioTrack);
        return audioTrack.getPlayState() == 3;
    }

    public final boolean zzj(long j) {
        return this.zzy != -9223372036854775807L && j > 0 && SystemClock.elapsedRealtime() - this.zzy >= 200;
    }

    public final boolean zzk(long j) {
        zzlw zzlwVar;
        long j2;
        zzlw zzlwVar2;
        zzls zzlsVar;
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
                if (zzn() == 0) {
                    return false;
                }
                i = 1;
            }
        }
        boolean z = this.zzp;
        boolean zzh = zzh(j);
        this.zzp = zzh;
        if (!z || zzh || i == 1) {
            return true;
        }
        zzmc zzmcVar = this.zza;
        int i2 = this.zze;
        long zzd = zzk.zzd(this.zzi);
        zzmn zzmnVar = (zzmn) zzmcVar;
        zzlwVar = zzmnVar.zza.zzk;
        if (zzlwVar == null) {
            return true;
        }
        long elapsedRealtime = SystemClock.elapsedRealtime();
        j2 = zzmnVar.zza.zzM;
        zzlwVar2 = zzmnVar.zza.zzk;
        zzlsVar = ((zzmu) zzlwVar2).zza.zzc;
        zzlsVar.zzt(i2, zzd, elapsedRealtime - j2);
        return true;
    }

    public final boolean zzl() {
        zzo();
        if (this.zzx == -9223372036854775807L) {
            zzmb zzmbVar = this.zzf;
            Objects.requireNonNull(zzmbVar);
            zzmbVar.zze();
            return true;
        }
        return false;
    }
}
