.class public final Lcom/google/firebase/perf/network/zza;
.super Ljava/io/OutputStream;
.source "com.google.firebase:firebase-perf@@19.0.2"


# instance fields
.field private final zzfv:Lcom/google/android/gms/internal/firebase-perf/zzaz;

.field private zzfz:Ljava/io/OutputStream;

.field private zzga:J

.field private zzgb:Lcom/google/android/gms/internal/firebase-perf/zzam;


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;Lcom/google/android/gms/internal/firebase-perf/zzam;Lcom/google/android/gms/internal/firebase-perf/zzaz;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    const-wide/16 v0, -0x1

    .line 2
    iput-wide v0, p0, Lcom/google/firebase/perf/network/zza;->zzga:J

    .line 3
    iput-object p1, p0, Lcom/google/firebase/perf/network/zza;->zzfz:Ljava/io/OutputStream;

    .line 4
    iput-object p2, p0, Lcom/google/firebase/perf/network/zza;->zzgb:Lcom/google/android/gms/internal/firebase-perf/zzam;

    .line 5
    iput-object p3, p0, Lcom/google/firebase/perf/network/zza;->zzfv:Lcom/google/android/gms/internal/firebase-perf/zzaz;

    return-void
.end method


# virtual methods
.method public final close()V
    .locals 4

    .line 7
    iget-wide v0, p0, Lcom/google/firebase/perf/network/zza;->zzga:J

    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    .line 8
    iget-object v2, p0, Lcom/google/firebase/perf/network/zza;->zzgb:Lcom/google/android/gms/internal/firebase-perf/zzam;

    invoke-virtual {v2, v0, v1}, Lcom/google/android/gms/internal/firebase-perf/zzam;->zzd(J)Lcom/google/android/gms/internal/firebase-perf/zzam;

    .line 9
    :cond_0
    iget-object v0, p0, Lcom/google/firebase/perf/network/zza;->zzgb:Lcom/google/android/gms/internal/firebase-perf/zzam;

    iget-object v1, p0, Lcom/google/firebase/perf/network/zza;->zzfv:Lcom/google/android/gms/internal/firebase-perf/zzaz;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/firebase-perf/zzaz;->zzby()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/firebase-perf/zzam;->zzf(J)Lcom/google/android/gms/internal/firebase-perf/zzam;

    .line 10
    :try_start_0
    iget-object v0, p0, Lcom/google/firebase/perf/network/zza;->zzfz:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 13
    iget-object v1, p0, Lcom/google/firebase/perf/network/zza;->zzgb:Lcom/google/android/gms/internal/firebase-perf/zzam;

    iget-object v2, p0, Lcom/google/firebase/perf/network/zza;->zzfv:Lcom/google/android/gms/internal/firebase-perf/zzaz;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/firebase-perf/zzaz;->zzby()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/internal/firebase-perf/zzam;->zzh(J)Lcom/google/android/gms/internal/firebase-perf/zzam;

    .line 14
    iget-object v1, p0, Lcom/google/firebase/perf/network/zza;->zzgb:Lcom/google/android/gms/internal/firebase-perf/zzam;

    invoke-static {v1}, Lcom/google/firebase/perf/network/zzg;->zza(Lcom/google/android/gms/internal/firebase-perf/zzam;)V

    .line 15
    throw v0
.end method

.method public final flush()V
    .locals 4

    .line 16
    :try_start_0
    iget-object v0, p0, Lcom/google/firebase/perf/network/zza;->zzfz:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 19
    iget-object v1, p0, Lcom/google/firebase/perf/network/zza;->zzgb:Lcom/google/android/gms/internal/firebase-perf/zzam;

    iget-object v2, p0, Lcom/google/firebase/perf/network/zza;->zzfv:Lcom/google/android/gms/internal/firebase-perf/zzaz;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/firebase-perf/zzaz;->zzby()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/internal/firebase-perf/zzam;->zzh(J)Lcom/google/android/gms/internal/firebase-perf/zzam;

    .line 20
    iget-object v1, p0, Lcom/google/firebase/perf/network/zza;->zzgb:Lcom/google/android/gms/internal/firebase-perf/zzam;

    invoke-static {v1}, Lcom/google/firebase/perf/network/zzg;->zza(Lcom/google/android/gms/internal/firebase-perf/zzam;)V

    .line 21
    throw v0
.end method

.method public final write(I)V
    .locals 4

    .line 22
    :try_start_0
    iget-object v0, p0, Lcom/google/firebase/perf/network/zza;->zzfz:Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write(I)V

    .line 23
    iget-wide v0, p0, Lcom/google/firebase/perf/network/zza;->zzga:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/firebase/perf/network/zza;->zzga:J

    .line 24
    iget-object p1, p0, Lcom/google/firebase/perf/network/zza;->zzgb:Lcom/google/android/gms/internal/firebase-perf/zzam;

    iget-wide v0, p0, Lcom/google/firebase/perf/network/zza;->zzga:J

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/firebase-perf/zzam;->zzd(J)Lcom/google/android/gms/internal/firebase-perf/zzam;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 27
    iget-object v0, p0, Lcom/google/firebase/perf/network/zza;->zzgb:Lcom/google/android/gms/internal/firebase-perf/zzam;

    iget-object v1, p0, Lcom/google/firebase/perf/network/zza;->zzfv:Lcom/google/android/gms/internal/firebase-perf/zzaz;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/firebase-perf/zzaz;->zzby()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/firebase-perf/zzam;->zzh(J)Lcom/google/android/gms/internal/firebase-perf/zzam;

    .line 28
    iget-object v0, p0, Lcom/google/firebase/perf/network/zza;->zzgb:Lcom/google/android/gms/internal/firebase-perf/zzam;

    invoke-static {v0}, Lcom/google/firebase/perf/network/zzg;->zza(Lcom/google/android/gms/internal/firebase-perf/zzam;)V

    .line 29
    throw p1
.end method

.method public final write([B)V
    .locals 4

    .line 30
    :try_start_0
    iget-object v0, p0, Lcom/google/firebase/perf/network/zza;->zzfz:Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write([B)V

    .line 31
    iget-wide v0, p0, Lcom/google/firebase/perf/network/zza;->zzga:J

    array-length p1, p1

    int-to-long v2, p1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/firebase/perf/network/zza;->zzga:J

    .line 32
    iget-object p1, p0, Lcom/google/firebase/perf/network/zza;->zzgb:Lcom/google/android/gms/internal/firebase-perf/zzam;

    iget-wide v0, p0, Lcom/google/firebase/perf/network/zza;->zzga:J

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/firebase-perf/zzam;->zzd(J)Lcom/google/android/gms/internal/firebase-perf/zzam;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 35
    iget-object v0, p0, Lcom/google/firebase/perf/network/zza;->zzgb:Lcom/google/android/gms/internal/firebase-perf/zzam;

    iget-object v1, p0, Lcom/google/firebase/perf/network/zza;->zzfv:Lcom/google/android/gms/internal/firebase-perf/zzaz;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/firebase-perf/zzaz;->zzby()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/firebase-perf/zzam;->zzh(J)Lcom/google/android/gms/internal/firebase-perf/zzam;

    .line 36
    iget-object v0, p0, Lcom/google/firebase/perf/network/zza;->zzgb:Lcom/google/android/gms/internal/firebase-perf/zzam;

    invoke-static {v0}, Lcom/google/firebase/perf/network/zzg;->zza(Lcom/google/android/gms/internal/firebase-perf/zzam;)V

    .line 37
    throw p1
.end method

.method public final write([BII)V
    .locals 2

    .line 38
    :try_start_0
    iget-object v0, p0, Lcom/google/firebase/perf/network/zza;->zzfz:Ljava/io/OutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V

    .line 39
    iget-wide p1, p0, Lcom/google/firebase/perf/network/zza;->zzga:J

    int-to-long v0, p3

    add-long/2addr p1, v0

    iput-wide p1, p0, Lcom/google/firebase/perf/network/zza;->zzga:J

    .line 40
    iget-object p1, p0, Lcom/google/firebase/perf/network/zza;->zzgb:Lcom/google/android/gms/internal/firebase-perf/zzam;

    iget-wide p2, p0, Lcom/google/firebase/perf/network/zza;->zzga:J

    invoke-virtual {p1, p2, p3}, Lcom/google/android/gms/internal/firebase-perf/zzam;->zzd(J)Lcom/google/android/gms/internal/firebase-perf/zzam;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 43
    iget-object p2, p0, Lcom/google/firebase/perf/network/zza;->zzgb:Lcom/google/android/gms/internal/firebase-perf/zzam;

    iget-object p3, p0, Lcom/google/firebase/perf/network/zza;->zzfv:Lcom/google/android/gms/internal/firebase-perf/zzaz;

    invoke-virtual {p3}, Lcom/google/android/gms/internal/firebase-perf/zzaz;->zzby()J

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Lcom/google/android/gms/internal/firebase-perf/zzam;->zzh(J)Lcom/google/android/gms/internal/firebase-perf/zzam;

    .line 44
    iget-object p2, p0, Lcom/google/firebase/perf/network/zza;->zzgb:Lcom/google/android/gms/internal/firebase-perf/zzam;

    invoke-static {p2}, Lcom/google/firebase/perf/network/zzg;->zza(Lcom/google/android/gms/internal/firebase-perf/zzam;)V

    .line 45
    throw p1
.end method
