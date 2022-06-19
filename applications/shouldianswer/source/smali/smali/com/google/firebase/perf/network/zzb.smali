.class public final Lcom/google/firebase/perf/network/zzb;
.super Ljava/io/InputStream;
.source "com.google.firebase:firebase-perf@@19.0.2"


# instance fields
.field private final zzfv:Lcom/google/android/gms/internal/firebase-perf/zzaz;

.field private final zzgb:Lcom/google/android/gms/internal/firebase-perf/zzam;

.field private final zzgc:Ljava/io/InputStream;

.field private zzgd:J

.field private zzge:J

.field private zzgf:J


# direct methods
.method public constructor <init>(Ljava/io/InputStream;Lcom/google/android/gms/internal/firebase-perf/zzam;Lcom/google/android/gms/internal/firebase-perf/zzaz;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    const-wide/16 v0, -0x1

    .line 2
    iput-wide v0, p0, Lcom/google/firebase/perf/network/zzb;->zzgd:J

    .line 3
    iput-wide v0, p0, Lcom/google/firebase/perf/network/zzb;->zzgf:J

    .line 4
    iput-object p3, p0, Lcom/google/firebase/perf/network/zzb;->zzfv:Lcom/google/android/gms/internal/firebase-perf/zzaz;

    .line 5
    iput-object p1, p0, Lcom/google/firebase/perf/network/zzb;->zzgc:Ljava/io/InputStream;

    .line 6
    iput-object p2, p0, Lcom/google/firebase/perf/network/zzb;->zzgb:Lcom/google/android/gms/internal/firebase-perf/zzam;

    .line 7
    iget-object p1, p0, Lcom/google/firebase/perf/network/zzb;->zzgb:Lcom/google/android/gms/internal/firebase-perf/zzam;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-perf/zzam;->zzx()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/google/firebase/perf/network/zzb;->zzge:J

    return-void
.end method


# virtual methods
.method public final available()I
    .locals 4

    .line 9
    :try_start_0
    iget-object v0, p0, Lcom/google/firebase/perf/network/zzb;->zzgc:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->available()I

    move-result v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 11
    iget-object v1, p0, Lcom/google/firebase/perf/network/zzb;->zzgb:Lcom/google/android/gms/internal/firebase-perf/zzam;

    iget-object v2, p0, Lcom/google/firebase/perf/network/zzb;->zzfv:Lcom/google/android/gms/internal/firebase-perf/zzaz;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/firebase-perf/zzaz;->zzby()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/internal/firebase-perf/zzam;->zzh(J)Lcom/google/android/gms/internal/firebase-perf/zzam;

    .line 12
    iget-object v1, p0, Lcom/google/firebase/perf/network/zzb;->zzgb:Lcom/google/android/gms/internal/firebase-perf/zzam;

    invoke-static {v1}, Lcom/google/firebase/perf/network/zzg;->zza(Lcom/google/android/gms/internal/firebase-perf/zzam;)V

    .line 13
    throw v0
.end method

.method public final close()V
    .locals 6

    .line 14
    iget-object v0, p0, Lcom/google/firebase/perf/network/zzb;->zzfv:Lcom/google/android/gms/internal/firebase-perf/zzaz;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-perf/zzaz;->zzby()J

    move-result-wide v0

    .line 15
    iget-wide v2, p0, Lcom/google/firebase/perf/network/zzb;->zzgf:J

    const-wide/16 v4, -0x1

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    .line 16
    iput-wide v0, p0, Lcom/google/firebase/perf/network/zzb;->zzgf:J

    .line 17
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/google/firebase/perf/network/zzb;->zzgc:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 18
    iget-wide v0, p0, Lcom/google/firebase/perf/network/zzb;->zzgd:J

    cmp-long v0, v0, v4

    if-eqz v0, :cond_1

    .line 19
    iget-object v0, p0, Lcom/google/firebase/perf/network/zzb;->zzgb:Lcom/google/android/gms/internal/firebase-perf/zzam;

    iget-wide v1, p0, Lcom/google/firebase/perf/network/zzb;->zzgd:J

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/firebase-perf/zzam;->zzi(J)Lcom/google/android/gms/internal/firebase-perf/zzam;

    .line 20
    :cond_1
    iget-wide v0, p0, Lcom/google/firebase/perf/network/zzb;->zzge:J

    cmp-long v0, v0, v4

    if-eqz v0, :cond_2

    .line 21
    iget-object v0, p0, Lcom/google/firebase/perf/network/zzb;->zzgb:Lcom/google/android/gms/internal/firebase-perf/zzam;

    iget-wide v1, p0, Lcom/google/firebase/perf/network/zzb;->zzge:J

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/firebase-perf/zzam;->zzg(J)Lcom/google/android/gms/internal/firebase-perf/zzam;

    .line 22
    :cond_2
    iget-object v0, p0, Lcom/google/firebase/perf/network/zzb;->zzgb:Lcom/google/android/gms/internal/firebase-perf/zzam;

    iget-wide v1, p0, Lcom/google/firebase/perf/network/zzb;->zzgf:J

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/firebase-perf/zzam;->zzh(J)Lcom/google/android/gms/internal/firebase-perf/zzam;

    .line 23
    iget-object v0, p0, Lcom/google/firebase/perf/network/zzb;->zzgb:Lcom/google/android/gms/internal/firebase-perf/zzam;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-perf/zzam;->zzz()Lcom/google/android/gms/internal/firebase-perf/zzca;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 26
    iget-object v1, p0, Lcom/google/firebase/perf/network/zzb;->zzgb:Lcom/google/android/gms/internal/firebase-perf/zzam;

    iget-object v2, p0, Lcom/google/firebase/perf/network/zzb;->zzfv:Lcom/google/android/gms/internal/firebase-perf/zzaz;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/firebase-perf/zzaz;->zzby()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/internal/firebase-perf/zzam;->zzh(J)Lcom/google/android/gms/internal/firebase-perf/zzam;

    .line 27
    iget-object v1, p0, Lcom/google/firebase/perf/network/zzb;->zzgb:Lcom/google/android/gms/internal/firebase-perf/zzam;

    invoke-static {v1}, Lcom/google/firebase/perf/network/zzg;->zza(Lcom/google/android/gms/internal/firebase-perf/zzam;)V

    .line 28
    throw v0
.end method

.method public final mark(I)V
    .locals 1

    .line 29
    iget-object v0, p0, Lcom/google/firebase/perf/network/zzb;->zzgc:Ljava/io/InputStream;

    invoke-virtual {v0, p1}, Ljava/io/InputStream;->mark(I)V

    return-void
.end method

.method public final markSupported()Z
    .locals 1

    .line 31
    iget-object v0, p0, Lcom/google/firebase/perf/network/zzb;->zzgc:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->markSupported()Z

    move-result v0

    return v0
.end method

.method public final read()I
    .locals 7

    .line 32
    :try_start_0
    iget-object v0, p0, Lcom/google/firebase/perf/network/zzb;->zzgc:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    .line 33
    iget-object v1, p0, Lcom/google/firebase/perf/network/zzb;->zzfv:Lcom/google/android/gms/internal/firebase-perf/zzaz;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/firebase-perf/zzaz;->zzby()J

    move-result-wide v1

    .line 34
    iget-wide v3, p0, Lcom/google/firebase/perf/network/zzb;->zzge:J

    const-wide/16 v5, -0x1

    cmp-long v3, v3, v5

    if-nez v3, :cond_0

    .line 35
    iput-wide v1, p0, Lcom/google/firebase/perf/network/zzb;->zzge:J

    :cond_0
    const/4 v3, -0x1

    if-ne v0, v3, :cond_1

    .line 36
    iget-wide v3, p0, Lcom/google/firebase/perf/network/zzb;->zzgf:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_1

    .line 37
    iput-wide v1, p0, Lcom/google/firebase/perf/network/zzb;->zzgf:J

    .line 38
    iget-object v1, p0, Lcom/google/firebase/perf/network/zzb;->zzgb:Lcom/google/android/gms/internal/firebase-perf/zzam;

    iget-wide v2, p0, Lcom/google/firebase/perf/network/zzb;->zzgf:J

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/internal/firebase-perf/zzam;->zzh(J)Lcom/google/android/gms/internal/firebase-perf/zzam;

    .line 39
    iget-object v1, p0, Lcom/google/firebase/perf/network/zzb;->zzgb:Lcom/google/android/gms/internal/firebase-perf/zzam;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/firebase-perf/zzam;->zzz()Lcom/google/android/gms/internal/firebase-perf/zzca;

    goto :goto_0

    .line 40
    :cond_1
    iget-wide v1, p0, Lcom/google/firebase/perf/network/zzb;->zzgd:J

    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    iput-wide v1, p0, Lcom/google/firebase/perf/network/zzb;->zzgd:J

    .line 41
    iget-object v1, p0, Lcom/google/firebase/perf/network/zzb;->zzgb:Lcom/google/android/gms/internal/firebase-perf/zzam;

    iget-wide v2, p0, Lcom/google/firebase/perf/network/zzb;->zzgd:J

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/internal/firebase-perf/zzam;->zzi(J)Lcom/google/android/gms/internal/firebase-perf/zzam;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return v0

    :catch_0
    move-exception v0

    .line 44
    iget-object v1, p0, Lcom/google/firebase/perf/network/zzb;->zzgb:Lcom/google/android/gms/internal/firebase-perf/zzam;

    iget-object v2, p0, Lcom/google/firebase/perf/network/zzb;->zzfv:Lcom/google/android/gms/internal/firebase-perf/zzaz;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/firebase-perf/zzaz;->zzby()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/internal/firebase-perf/zzam;->zzh(J)Lcom/google/android/gms/internal/firebase-perf/zzam;

    .line 45
    iget-object v1, p0, Lcom/google/firebase/perf/network/zzb;->zzgb:Lcom/google/android/gms/internal/firebase-perf/zzam;

    invoke-static {v1}, Lcom/google/firebase/perf/network/zzg;->zza(Lcom/google/android/gms/internal/firebase-perf/zzam;)V

    .line 46
    throw v0
.end method

.method public final read([B)I
    .locals 6

    .line 62
    :try_start_0
    iget-object v0, p0, Lcom/google/firebase/perf/network/zzb;->zzgc:Ljava/io/InputStream;

    invoke-virtual {v0, p1}, Ljava/io/InputStream;->read([B)I

    move-result p1

    .line 63
    iget-object v0, p0, Lcom/google/firebase/perf/network/zzb;->zzfv:Lcom/google/android/gms/internal/firebase-perf/zzaz;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-perf/zzaz;->zzby()J

    move-result-wide v0

    .line 64
    iget-wide v2, p0, Lcom/google/firebase/perf/network/zzb;->zzge:J

    const-wide/16 v4, -0x1

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    .line 65
    iput-wide v0, p0, Lcom/google/firebase/perf/network/zzb;->zzge:J

    :cond_0
    const/4 v2, -0x1

    if-ne p1, v2, :cond_1

    .line 66
    iget-wide v2, p0, Lcom/google/firebase/perf/network/zzb;->zzgf:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_1

    .line 67
    iput-wide v0, p0, Lcom/google/firebase/perf/network/zzb;->zzgf:J

    .line 68
    iget-object v0, p0, Lcom/google/firebase/perf/network/zzb;->zzgb:Lcom/google/android/gms/internal/firebase-perf/zzam;

    iget-wide v1, p0, Lcom/google/firebase/perf/network/zzb;->zzgf:J

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/firebase-perf/zzam;->zzh(J)Lcom/google/android/gms/internal/firebase-perf/zzam;

    .line 69
    iget-object v0, p0, Lcom/google/firebase/perf/network/zzb;->zzgb:Lcom/google/android/gms/internal/firebase-perf/zzam;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-perf/zzam;->zzz()Lcom/google/android/gms/internal/firebase-perf/zzca;

    goto :goto_0

    .line 70
    :cond_1
    iget-wide v0, p0, Lcom/google/firebase/perf/network/zzb;->zzgd:J

    int-to-long v2, p1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/firebase/perf/network/zzb;->zzgd:J

    .line 71
    iget-object v0, p0, Lcom/google/firebase/perf/network/zzb;->zzgb:Lcom/google/android/gms/internal/firebase-perf/zzam;

    iget-wide v1, p0, Lcom/google/firebase/perf/network/zzb;->zzgd:J

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/firebase-perf/zzam;->zzi(J)Lcom/google/android/gms/internal/firebase-perf/zzam;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return p1

    :catch_0
    move-exception p1

    .line 74
    iget-object v0, p0, Lcom/google/firebase/perf/network/zzb;->zzgb:Lcom/google/android/gms/internal/firebase-perf/zzam;

    iget-object v1, p0, Lcom/google/firebase/perf/network/zzb;->zzfv:Lcom/google/android/gms/internal/firebase-perf/zzaz;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/firebase-perf/zzaz;->zzby()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/firebase-perf/zzam;->zzh(J)Lcom/google/android/gms/internal/firebase-perf/zzam;

    .line 75
    iget-object v0, p0, Lcom/google/firebase/perf/network/zzb;->zzgb:Lcom/google/android/gms/internal/firebase-perf/zzam;

    invoke-static {v0}, Lcom/google/firebase/perf/network/zzg;->zza(Lcom/google/android/gms/internal/firebase-perf/zzam;)V

    .line 76
    throw p1
.end method

.method public final read([BII)I
    .locals 4

    .line 47
    :try_start_0
    iget-object v0, p0, Lcom/google/firebase/perf/network/zzb;->zzgc:Ljava/io/InputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result p1

    .line 48
    iget-object p2, p0, Lcom/google/firebase/perf/network/zzb;->zzfv:Lcom/google/android/gms/internal/firebase-perf/zzaz;

    invoke-virtual {p2}, Lcom/google/android/gms/internal/firebase-perf/zzaz;->zzby()J

    move-result-wide p2

    .line 49
    iget-wide v0, p0, Lcom/google/firebase/perf/network/zzb;->zzge:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 50
    iput-wide p2, p0, Lcom/google/firebase/perf/network/zzb;->zzge:J

    :cond_0
    const/4 v0, -0x1

    if-ne p1, v0, :cond_1

    .line 51
    iget-wide v0, p0, Lcom/google/firebase/perf/network/zzb;->zzgf:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    .line 52
    iput-wide p2, p0, Lcom/google/firebase/perf/network/zzb;->zzgf:J

    .line 53
    iget-object p2, p0, Lcom/google/firebase/perf/network/zzb;->zzgb:Lcom/google/android/gms/internal/firebase-perf/zzam;

    iget-wide v0, p0, Lcom/google/firebase/perf/network/zzb;->zzgf:J

    invoke-virtual {p2, v0, v1}, Lcom/google/android/gms/internal/firebase-perf/zzam;->zzh(J)Lcom/google/android/gms/internal/firebase-perf/zzam;

    .line 54
    iget-object p2, p0, Lcom/google/firebase/perf/network/zzb;->zzgb:Lcom/google/android/gms/internal/firebase-perf/zzam;

    invoke-virtual {p2}, Lcom/google/android/gms/internal/firebase-perf/zzam;->zzz()Lcom/google/android/gms/internal/firebase-perf/zzca;

    goto :goto_0

    .line 55
    :cond_1
    iget-wide p2, p0, Lcom/google/firebase/perf/network/zzb;->zzgd:J

    int-to-long v0, p1

    add-long/2addr p2, v0

    iput-wide p2, p0, Lcom/google/firebase/perf/network/zzb;->zzgd:J

    .line 56
    iget-object p2, p0, Lcom/google/firebase/perf/network/zzb;->zzgb:Lcom/google/android/gms/internal/firebase-perf/zzam;

    iget-wide v0, p0, Lcom/google/firebase/perf/network/zzb;->zzgd:J

    invoke-virtual {p2, v0, v1}, Lcom/google/android/gms/internal/firebase-perf/zzam;->zzi(J)Lcom/google/android/gms/internal/firebase-perf/zzam;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return p1

    :catch_0
    move-exception p1

    .line 59
    iget-object p2, p0, Lcom/google/firebase/perf/network/zzb;->zzgb:Lcom/google/android/gms/internal/firebase-perf/zzam;

    iget-object p3, p0, Lcom/google/firebase/perf/network/zzb;->zzfv:Lcom/google/android/gms/internal/firebase-perf/zzaz;

    invoke-virtual {p3}, Lcom/google/android/gms/internal/firebase-perf/zzaz;->zzby()J

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Lcom/google/android/gms/internal/firebase-perf/zzam;->zzh(J)Lcom/google/android/gms/internal/firebase-perf/zzam;

    .line 60
    iget-object p2, p0, Lcom/google/firebase/perf/network/zzb;->zzgb:Lcom/google/android/gms/internal/firebase-perf/zzam;

    invoke-static {p2}, Lcom/google/firebase/perf/network/zzg;->zza(Lcom/google/android/gms/internal/firebase-perf/zzam;)V

    .line 61
    throw p1
.end method

.method public final reset()V
    .locals 4

    .line 77
    :try_start_0
    iget-object v0, p0, Lcom/google/firebase/perf/network/zzb;->zzgc:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->reset()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 80
    iget-object v1, p0, Lcom/google/firebase/perf/network/zzb;->zzgb:Lcom/google/android/gms/internal/firebase-perf/zzam;

    iget-object v2, p0, Lcom/google/firebase/perf/network/zzb;->zzfv:Lcom/google/android/gms/internal/firebase-perf/zzaz;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/firebase-perf/zzaz;->zzby()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/internal/firebase-perf/zzam;->zzh(J)Lcom/google/android/gms/internal/firebase-perf/zzam;

    .line 81
    iget-object v1, p0, Lcom/google/firebase/perf/network/zzb;->zzgb:Lcom/google/android/gms/internal/firebase-perf/zzam;

    invoke-static {v1}, Lcom/google/firebase/perf/network/zzg;->zza(Lcom/google/android/gms/internal/firebase-perf/zzam;)V

    .line 82
    throw v0
.end method

.method public final skip(J)J
    .locals 6

    .line 83
    :try_start_0
    iget-object v0, p0, Lcom/google/firebase/perf/network/zzb;->zzgc:Ljava/io/InputStream;

    invoke-virtual {v0, p1, p2}, Ljava/io/InputStream;->skip(J)J

    move-result-wide p1

    .line 84
    iget-object v0, p0, Lcom/google/firebase/perf/network/zzb;->zzfv:Lcom/google/android/gms/internal/firebase-perf/zzaz;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-perf/zzaz;->zzby()J

    move-result-wide v0

    .line 85
    iget-wide v2, p0, Lcom/google/firebase/perf/network/zzb;->zzge:J

    const-wide/16 v4, -0x1

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    .line 86
    iput-wide v0, p0, Lcom/google/firebase/perf/network/zzb;->zzge:J

    :cond_0
    cmp-long v2, p1, v4

    if-nez v2, :cond_1

    .line 87
    iget-wide v2, p0, Lcom/google/firebase/perf/network/zzb;->zzgf:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_1

    .line 88
    iput-wide v0, p0, Lcom/google/firebase/perf/network/zzb;->zzgf:J

    .line 89
    iget-object v0, p0, Lcom/google/firebase/perf/network/zzb;->zzgb:Lcom/google/android/gms/internal/firebase-perf/zzam;

    iget-wide v1, p0, Lcom/google/firebase/perf/network/zzb;->zzgf:J

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/firebase-perf/zzam;->zzh(J)Lcom/google/android/gms/internal/firebase-perf/zzam;

    goto :goto_0

    .line 90
    :cond_1
    iget-wide v0, p0, Lcom/google/firebase/perf/network/zzb;->zzgd:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/google/firebase/perf/network/zzb;->zzgd:J

    .line 91
    iget-object v0, p0, Lcom/google/firebase/perf/network/zzb;->zzgb:Lcom/google/android/gms/internal/firebase-perf/zzam;

    iget-wide v1, p0, Lcom/google/firebase/perf/network/zzb;->zzgd:J

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/firebase-perf/zzam;->zzi(J)Lcom/google/android/gms/internal/firebase-perf/zzam;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-wide p1

    :catch_0
    move-exception p1

    .line 94
    iget-object p2, p0, Lcom/google/firebase/perf/network/zzb;->zzgb:Lcom/google/android/gms/internal/firebase-perf/zzam;

    iget-object v0, p0, Lcom/google/firebase/perf/network/zzb;->zzfv:Lcom/google/android/gms/internal/firebase-perf/zzaz;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-perf/zzaz;->zzby()J

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Lcom/google/android/gms/internal/firebase-perf/zzam;->zzh(J)Lcom/google/android/gms/internal/firebase-perf/zzam;

    .line 95
    iget-object p2, p0, Lcom/google/firebase/perf/network/zzb;->zzgb:Lcom/google/android/gms/internal/firebase-perf/zzam;

    invoke-static {p2}, Lcom/google/firebase/perf/network/zzg;->zza(Lcom/google/android/gms/internal/firebase-perf/zzam;)V

    .line 96
    throw p1
.end method
