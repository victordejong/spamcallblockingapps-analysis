.class public Lcom/google/firebase/perf/network/FirebasePerfOkHttpClient;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-perf@@19.0.2"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static enqueue(Lokhttp3/e;Lokhttp3/f;)V
    .locals 7

    .line 23
    new-instance v3, Lcom/google/android/gms/internal/firebase-perf/zzaz;

    invoke-direct {v3}, Lcom/google/android/gms/internal/firebase-perf/zzaz;-><init>()V

    .line 24
    invoke-virtual {v3}, Lcom/google/android/gms/internal/firebase-perf/zzaz;->zzbx()J

    move-result-wide v4

    .line 25
    new-instance v6, Lcom/google/firebase/perf/network/zzh;

    .line 26
    invoke-static {}, Lcom/google/firebase/perf/internal/zzf;->zzal()Lcom/google/firebase/perf/internal/zzf;

    move-result-object v2

    move-object v0, v6

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/google/firebase/perf/network/zzh;-><init>(Lokhttp3/f;Lcom/google/firebase/perf/internal/zzf;Lcom/google/android/gms/internal/firebase-perf/zzaz;J)V

    .line 27
    invoke-interface {p0, v6}, Lokhttp3/e;->a(Lokhttp3/f;)V

    return-void
.end method

.method public static execute(Lokhttp3/e;)Lokhttp3/ab;
    .locals 11

    .line 2
    invoke-static {}, Lcom/google/firebase/perf/internal/zzf;->zzal()Lcom/google/firebase/perf/internal/zzf;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/firebase-perf/zzam;->zzb(Lcom/google/firebase/perf/internal/zzf;)Lcom/google/android/gms/internal/firebase-perf/zzam;

    move-result-object v0

    .line 3
    new-instance v7, Lcom/google/android/gms/internal/firebase-perf/zzaz;

    invoke-direct {v7}, Lcom/google/android/gms/internal/firebase-perf/zzaz;-><init>()V

    .line 4
    invoke-virtual {v7}, Lcom/google/android/gms/internal/firebase-perf/zzaz;->zzbx()J

    move-result-wide v8

    .line 5
    :try_start_0
    invoke-interface {p0}, Lokhttp3/e;->b()Lokhttp3/ab;

    move-result-object v10

    .line 6
    invoke-virtual {v7}, Lcom/google/android/gms/internal/firebase-perf/zzaz;->zzby()J

    move-result-wide v5

    move-object v1, v10

    move-object v2, v0

    move-wide v3, v8

    .line 7
    invoke-static/range {v1 .. v6}, Lcom/google/firebase/perf/network/FirebasePerfOkHttpClient;->zza(Lokhttp3/ab;Lcom/google/android/gms/internal/firebase-perf/zzam;JJ)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v10

    :catch_0
    move-exception v1

    .line 10
    invoke-interface {p0}, Lokhttp3/e;->a()Lokhttp3/z;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 12
    invoke-virtual {p0}, Lokhttp3/z;->a()Lokhttp3/s;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 14
    invoke-virtual {v2}, Lokhttp3/s;->a()Ljava/net/URL;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/firebase-perf/zzam;->zza(Ljava/lang/String;)Lcom/google/android/gms/internal/firebase-perf/zzam;

    .line 15
    :cond_0
    invoke-virtual {p0}, Lokhttp3/z;->b()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 17
    invoke-virtual {p0}, Lokhttp3/z;->b()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/firebase-perf/zzam;->zzb(Ljava/lang/String;)Lcom/google/android/gms/internal/firebase-perf/zzam;

    .line 18
    :cond_1
    invoke-virtual {v0, v8, v9}, Lcom/google/android/gms/internal/firebase-perf/zzam;->zze(J)Lcom/google/android/gms/internal/firebase-perf/zzam;

    .line 19
    invoke-virtual {v7}, Lcom/google/android/gms/internal/firebase-perf/zzaz;->zzby()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/internal/firebase-perf/zzam;->zzh(J)Lcom/google/android/gms/internal/firebase-perf/zzam;

    .line 20
    invoke-static {v0}, Lcom/google/firebase/perf/network/zzg;->zza(Lcom/google/android/gms/internal/firebase-perf/zzam;)V

    .line 21
    throw v1
.end method

.method static zza(Lokhttp3/ab;Lcom/google/android/gms/internal/firebase-perf/zzam;JJ)V
    .locals 6

    .line 29
    invoke-virtual {p0}, Lokhttp3/ab;->a()Lokhttp3/z;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 32
    :cond_0
    invoke-virtual {v0}, Lokhttp3/z;->a()Lokhttp3/s;

    move-result-object v1

    invoke-virtual {v1}, Lokhttp3/s;->a()Ljava/net/URL;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/firebase-perf/zzam;->zza(Ljava/lang/String;)Lcom/google/android/gms/internal/firebase-perf/zzam;

    .line 33
    invoke-virtual {v0}, Lokhttp3/z;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/firebase-perf/zzam;->zzb(Ljava/lang/String;)Lcom/google/android/gms/internal/firebase-perf/zzam;

    .line 34
    invoke-virtual {v0}, Lokhttp3/z;->d()Lokhttp3/aa;

    move-result-object v1

    const-wide/16 v2, -0x1

    if-eqz v1, :cond_1

    .line 36
    invoke-virtual {v0}, Lokhttp3/z;->d()Lokhttp3/aa;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/aa;->b()J

    move-result-wide v0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_1

    .line 38
    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/firebase-perf/zzam;->zzd(J)Lcom/google/android/gms/internal/firebase-perf/zzam;

    .line 39
    :cond_1
    invoke-virtual {p0}, Lokhttp3/ab;->g()Lokhttp3/ac;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 41
    invoke-virtual {v0}, Lokhttp3/ac;->b()J

    move-result-wide v4

    cmp-long v1, v4, v2

    if-eqz v1, :cond_2

    .line 43
    invoke-virtual {p1, v4, v5}, Lcom/google/android/gms/internal/firebase-perf/zzam;->zzi(J)Lcom/google/android/gms/internal/firebase-perf/zzam;

    .line 44
    :cond_2
    invoke-virtual {v0}, Lokhttp3/ac;->a()Lokhttp3/u;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 46
    invoke-virtual {v0}, Lokhttp3/u;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/firebase-perf/zzam;->zzc(Ljava/lang/String;)Lcom/google/android/gms/internal/firebase-perf/zzam;

    .line 47
    :cond_3
    invoke-virtual {p0}, Lokhttp3/ab;->b()I

    move-result p0

    invoke-virtual {p1, p0}, Lcom/google/android/gms/internal/firebase-perf/zzam;->zzc(I)Lcom/google/android/gms/internal/firebase-perf/zzam;

    .line 48
    invoke-virtual {p1, p2, p3}, Lcom/google/android/gms/internal/firebase-perf/zzam;->zze(J)Lcom/google/android/gms/internal/firebase-perf/zzam;

    .line 49
    invoke-virtual {p1, p4, p5}, Lcom/google/android/gms/internal/firebase-perf/zzam;->zzh(J)Lcom/google/android/gms/internal/firebase-perf/zzam;

    .line 50
    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-perf/zzam;->zzz()Lcom/google/android/gms/internal/firebase-perf/zzca;

    return-void
.end method
