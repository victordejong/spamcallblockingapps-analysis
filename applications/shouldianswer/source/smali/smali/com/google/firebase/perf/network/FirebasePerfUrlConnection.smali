.class public Lcom/google/firebase/perf/network/FirebasePerfUrlConnection;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-perf@@19.0.2"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getContent(Ljava/net/URL;)Ljava/lang/Object;
    .locals 2

    .line 22
    new-instance v0, Lcom/google/android/gms/internal/firebase-perf/zzba;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/firebase-perf/zzba;-><init>(Ljava/net/URL;)V

    invoke-static {}, Lcom/google/firebase/perf/internal/zzf;->zzal()Lcom/google/firebase/perf/internal/zzf;

    move-result-object p0

    new-instance v1, Lcom/google/android/gms/internal/firebase-perf/zzaz;

    invoke-direct {v1}, Lcom/google/android/gms/internal/firebase-perf/zzaz;-><init>()V

    invoke-static {v0, p0, v1}, Lcom/google/firebase/perf/network/FirebasePerfUrlConnection;->zzb(Lcom/google/android/gms/internal/firebase-perf/zzba;Lcom/google/firebase/perf/internal/zzf;Lcom/google/android/gms/internal/firebase-perf/zzaz;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static getContent(Ljava/net/URL;[Ljava/lang/Class;)Ljava/lang/Object;
    .locals 2

    .line 23
    new-instance v0, Lcom/google/android/gms/internal/firebase-perf/zzba;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/firebase-perf/zzba;-><init>(Ljava/net/URL;)V

    .line 24
    invoke-static {}, Lcom/google/firebase/perf/internal/zzf;->zzal()Lcom/google/firebase/perf/internal/zzf;

    move-result-object p0

    new-instance v1, Lcom/google/android/gms/internal/firebase-perf/zzaz;

    invoke-direct {v1}, Lcom/google/android/gms/internal/firebase-perf/zzaz;-><init>()V

    .line 25
    invoke-static {v0, p1, p0, v1}, Lcom/google/firebase/perf/network/FirebasePerfUrlConnection;->zza(Lcom/google/android/gms/internal/firebase-perf/zzba;[Ljava/lang/Class;Lcom/google/firebase/perf/internal/zzf;Lcom/google/android/gms/internal/firebase-perf/zzaz;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static instrument(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 64
    instance-of v0, p0, Ljavax/net/ssl/HttpsURLConnection;

    if-eqz v0, :cond_0

    .line 65
    new-instance v0, Lcom/google/firebase/perf/network/zzc;

    check-cast p0, Ljavax/net/ssl/HttpsURLConnection;

    new-instance v1, Lcom/google/android/gms/internal/firebase-perf/zzaz;

    invoke-direct {v1}, Lcom/google/android/gms/internal/firebase-perf/zzaz;-><init>()V

    .line 66
    invoke-static {}, Lcom/google/firebase/perf/internal/zzf;->zzal()Lcom/google/firebase/perf/internal/zzf;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/internal/firebase-perf/zzam;->zzb(Lcom/google/firebase/perf/internal/zzf;)Lcom/google/android/gms/internal/firebase-perf/zzam;

    move-result-object v2

    invoke-direct {v0, p0, v1, v2}, Lcom/google/firebase/perf/network/zzc;-><init>(Ljavax/net/ssl/HttpsURLConnection;Lcom/google/android/gms/internal/firebase-perf/zzaz;Lcom/google/android/gms/internal/firebase-perf/zzam;)V

    return-object v0

    .line 68
    :cond_0
    instance-of v0, p0, Ljava/net/HttpURLConnection;

    if-eqz v0, :cond_1

    .line 69
    new-instance v0, Lcom/google/firebase/perf/network/zzd;

    check-cast p0, Ljava/net/HttpURLConnection;

    new-instance v1, Lcom/google/android/gms/internal/firebase-perf/zzaz;

    invoke-direct {v1}, Lcom/google/android/gms/internal/firebase-perf/zzaz;-><init>()V

    .line 70
    invoke-static {}, Lcom/google/firebase/perf/internal/zzf;->zzal()Lcom/google/firebase/perf/internal/zzf;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/internal/firebase-perf/zzam;->zzb(Lcom/google/firebase/perf/internal/zzf;)Lcom/google/android/gms/internal/firebase-perf/zzam;

    move-result-object v2

    invoke-direct {v0, p0, v1, v2}, Lcom/google/firebase/perf/network/zzd;-><init>(Ljava/net/HttpURLConnection;Lcom/google/android/gms/internal/firebase-perf/zzaz;Lcom/google/android/gms/internal/firebase-perf/zzam;)V

    return-object v0

    :cond_1
    return-object p0
.end method

.method public static openStream(Ljava/net/URL;)Ljava/io/InputStream;
    .locals 2

    .line 2
    new-instance v0, Lcom/google/android/gms/internal/firebase-perf/zzba;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/firebase-perf/zzba;-><init>(Ljava/net/URL;)V

    invoke-static {}, Lcom/google/firebase/perf/internal/zzf;->zzal()Lcom/google/firebase/perf/internal/zzf;

    move-result-object p0

    new-instance v1, Lcom/google/android/gms/internal/firebase-perf/zzaz;

    invoke-direct {v1}, Lcom/google/android/gms/internal/firebase-perf/zzaz;-><init>()V

    invoke-static {v0, p0, v1}, Lcom/google/firebase/perf/network/FirebasePerfUrlConnection;->zza(Lcom/google/android/gms/internal/firebase-perf/zzba;Lcom/google/firebase/perf/internal/zzf;Lcom/google/android/gms/internal/firebase-perf/zzaz;)Ljava/io/InputStream;

    move-result-object p0

    return-object p0
.end method

.method private static zza(Lcom/google/android/gms/internal/firebase-perf/zzba;Lcom/google/firebase/perf/internal/zzf;Lcom/google/android/gms/internal/firebase-perf/zzaz;)Ljava/io/InputStream;
    .locals 4

    .line 3
    invoke-virtual {p2}, Lcom/google/android/gms/internal/firebase-perf/zzaz;->reset()V

    .line 4
    invoke-virtual {p2}, Lcom/google/android/gms/internal/firebase-perf/zzaz;->zzbx()J

    move-result-wide v0

    .line 5
    invoke-static {p1}, Lcom/google/android/gms/internal/firebase-perf/zzam;->zzb(Lcom/google/firebase/perf/internal/zzf;)Lcom/google/android/gms/internal/firebase-perf/zzam;

    move-result-object p1

    .line 6
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase-perf/zzba;->openConnection()Ljava/net/URLConnection;

    move-result-object v2

    .line 7
    instance-of v3, v2, Ljavax/net/ssl/HttpsURLConnection;

    if-eqz v3, :cond_0

    .line 8
    new-instance v3, Lcom/google/firebase/perf/network/zzc;

    check-cast v2, Ljavax/net/ssl/HttpsURLConnection;

    invoke-direct {v3, v2, p2, p1}, Lcom/google/firebase/perf/network/zzc;-><init>(Ljavax/net/ssl/HttpsURLConnection;Lcom/google/android/gms/internal/firebase-perf/zzaz;Lcom/google/android/gms/internal/firebase-perf/zzam;)V

    .line 9
    invoke-virtual {v3}, Lcom/google/firebase/perf/network/zzc;->getInputStream()Ljava/io/InputStream;

    move-result-object p0

    return-object p0

    .line 11
    :cond_0
    instance-of v3, v2, Ljava/net/HttpURLConnection;

    if-eqz v3, :cond_1

    .line 12
    new-instance v3, Lcom/google/firebase/perf/network/zzd;

    check-cast v2, Ljava/net/HttpURLConnection;

    invoke-direct {v3, v2, p2, p1}, Lcom/google/firebase/perf/network/zzd;-><init>(Ljava/net/HttpURLConnection;Lcom/google/android/gms/internal/firebase-perf/zzaz;Lcom/google/android/gms/internal/firebase-perf/zzam;)V

    .line 13
    invoke-virtual {v3}, Lcom/google/firebase/perf/network/zzd;->getInputStream()Ljava/io/InputStream;

    move-result-object p0

    return-object p0

    .line 15
    :cond_1
    invoke-virtual {v2}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception v2

    .line 17
    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/firebase-perf/zzam;->zze(J)Lcom/google/android/gms/internal/firebase-perf/zzam;

    .line 18
    invoke-virtual {p2}, Lcom/google/android/gms/internal/firebase-perf/zzaz;->zzby()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/firebase-perf/zzam;->zzh(J)Lcom/google/android/gms/internal/firebase-perf/zzam;

    .line 19
    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase-perf/zzba;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/google/android/gms/internal/firebase-perf/zzam;->zza(Ljava/lang/String;)Lcom/google/android/gms/internal/firebase-perf/zzam;

    .line 20
    invoke-static {p1}, Lcom/google/firebase/perf/network/zzg;->zza(Lcom/google/android/gms/internal/firebase-perf/zzam;)V

    .line 21
    throw v2
.end method

.method private static zza(Lcom/google/android/gms/internal/firebase-perf/zzba;[Ljava/lang/Class;Lcom/google/firebase/perf/internal/zzf;Lcom/google/android/gms/internal/firebase-perf/zzaz;)Ljava/lang/Object;
    .locals 4

    .line 45
    invoke-virtual {p3}, Lcom/google/android/gms/internal/firebase-perf/zzaz;->reset()V

    .line 46
    invoke-virtual {p3}, Lcom/google/android/gms/internal/firebase-perf/zzaz;->zzbx()J

    move-result-wide v0

    .line 47
    invoke-static {p2}, Lcom/google/android/gms/internal/firebase-perf/zzam;->zzb(Lcom/google/firebase/perf/internal/zzf;)Lcom/google/android/gms/internal/firebase-perf/zzam;

    move-result-object p2

    .line 48
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase-perf/zzba;->openConnection()Ljava/net/URLConnection;

    move-result-object v2

    .line 49
    instance-of v3, v2, Ljavax/net/ssl/HttpsURLConnection;

    if-eqz v3, :cond_0

    .line 50
    new-instance v3, Lcom/google/firebase/perf/network/zzc;

    check-cast v2, Ljavax/net/ssl/HttpsURLConnection;

    invoke-direct {v3, v2, p3, p2}, Lcom/google/firebase/perf/network/zzc;-><init>(Ljavax/net/ssl/HttpsURLConnection;Lcom/google/android/gms/internal/firebase-perf/zzaz;Lcom/google/android/gms/internal/firebase-perf/zzam;)V

    .line 51
    invoke-virtual {v3, p1}, Lcom/google/firebase/perf/network/zzc;->getContent([Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 53
    :cond_0
    instance-of v3, v2, Ljava/net/HttpURLConnection;

    if-eqz v3, :cond_1

    .line 54
    new-instance v3, Lcom/google/firebase/perf/network/zzd;

    check-cast v2, Ljava/net/HttpURLConnection;

    invoke-direct {v3, v2, p3, p2}, Lcom/google/firebase/perf/network/zzd;-><init>(Ljava/net/HttpURLConnection;Lcom/google/android/gms/internal/firebase-perf/zzaz;Lcom/google/android/gms/internal/firebase-perf/zzam;)V

    .line 55
    invoke-virtual {v3, p1}, Lcom/google/firebase/perf/network/zzd;->getContent([Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 57
    :cond_1
    invoke-virtual {v2, p1}, Ljava/net/URLConnection;->getContent([Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p1

    .line 59
    invoke-virtual {p2, v0, v1}, Lcom/google/android/gms/internal/firebase-perf/zzam;->zze(J)Lcom/google/android/gms/internal/firebase-perf/zzam;

    .line 60
    invoke-virtual {p3}, Lcom/google/android/gms/internal/firebase-perf/zzaz;->zzby()J

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Lcom/google/android/gms/internal/firebase-perf/zzam;->zzh(J)Lcom/google/android/gms/internal/firebase-perf/zzam;

    .line 61
    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase-perf/zzba;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Lcom/google/android/gms/internal/firebase-perf/zzam;->zza(Ljava/lang/String;)Lcom/google/android/gms/internal/firebase-perf/zzam;

    .line 62
    invoke-static {p2}, Lcom/google/firebase/perf/network/zzg;->zza(Lcom/google/android/gms/internal/firebase-perf/zzam;)V

    .line 63
    throw p1
.end method

.method private static zzb(Lcom/google/android/gms/internal/firebase-perf/zzba;Lcom/google/firebase/perf/internal/zzf;Lcom/google/android/gms/internal/firebase-perf/zzaz;)Ljava/lang/Object;
    .locals 4

    .line 26
    invoke-virtual {p2}, Lcom/google/android/gms/internal/firebase-perf/zzaz;->reset()V

    .line 27
    invoke-virtual {p2}, Lcom/google/android/gms/internal/firebase-perf/zzaz;->zzbx()J

    move-result-wide v0

    .line 28
    invoke-static {p1}, Lcom/google/android/gms/internal/firebase-perf/zzam;->zzb(Lcom/google/firebase/perf/internal/zzf;)Lcom/google/android/gms/internal/firebase-perf/zzam;

    move-result-object p1

    .line 29
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase-perf/zzba;->openConnection()Ljava/net/URLConnection;

    move-result-object v2

    .line 30
    instance-of v3, v2, Ljavax/net/ssl/HttpsURLConnection;

    if-eqz v3, :cond_0

    .line 31
    new-instance v3, Lcom/google/firebase/perf/network/zzc;

    check-cast v2, Ljavax/net/ssl/HttpsURLConnection;

    invoke-direct {v3, v2, p2, p1}, Lcom/google/firebase/perf/network/zzc;-><init>(Ljavax/net/ssl/HttpsURLConnection;Lcom/google/android/gms/internal/firebase-perf/zzaz;Lcom/google/android/gms/internal/firebase-perf/zzam;)V

    .line 32
    invoke-virtual {v3}, Lcom/google/firebase/perf/network/zzc;->getContent()Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 34
    :cond_0
    instance-of v3, v2, Ljava/net/HttpURLConnection;

    if-eqz v3, :cond_1

    .line 35
    new-instance v3, Lcom/google/firebase/perf/network/zzd;

    check-cast v2, Ljava/net/HttpURLConnection;

    invoke-direct {v3, v2, p2, p1}, Lcom/google/firebase/perf/network/zzd;-><init>(Ljava/net/HttpURLConnection;Lcom/google/android/gms/internal/firebase-perf/zzaz;Lcom/google/android/gms/internal/firebase-perf/zzam;)V

    .line 36
    invoke-virtual {v3}, Lcom/google/firebase/perf/network/zzd;->getContent()Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 38
    :cond_1
    invoke-virtual {v2}, Ljava/net/URLConnection;->getContent()Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception v2

    .line 40
    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/firebase-perf/zzam;->zze(J)Lcom/google/android/gms/internal/firebase-perf/zzam;

    .line 41
    invoke-virtual {p2}, Lcom/google/android/gms/internal/firebase-perf/zzaz;->zzby()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/firebase-perf/zzam;->zzh(J)Lcom/google/android/gms/internal/firebase-perf/zzam;

    .line 42
    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase-perf/zzba;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/google/android/gms/internal/firebase-perf/zzam;->zza(Ljava/lang/String;)Lcom/google/android/gms/internal/firebase-perf/zzam;

    .line 43
    invoke-static {p1}, Lcom/google/firebase/perf/network/zzg;->zza(Lcom/google/android/gms/internal/firebase-perf/zzam;)V

    .line 44
    throw v2
.end method
