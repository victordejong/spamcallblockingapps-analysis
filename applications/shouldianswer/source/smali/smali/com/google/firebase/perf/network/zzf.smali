.class final Lcom/google/firebase/perf/network/zzf;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-perf@@19.0.2"


# instance fields
.field private final zzfv:Lcom/google/android/gms/internal/firebase-perf/zzaz;

.field private final zzgb:Lcom/google/android/gms/internal/firebase-perf/zzam;

.field private zzge:J

.field private final zzgj:Ljava/net/HttpURLConnection;

.field private zzgk:J


# direct methods
.method public constructor <init>(Ljava/net/HttpURLConnection;Lcom/google/android/gms/internal/firebase-perf/zzaz;Lcom/google/android/gms/internal/firebase-perf/zzam;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    .line 2
    iput-wide v0, p0, Lcom/google/firebase/perf/network/zzf;->zzgk:J

    .line 3
    iput-wide v0, p0, Lcom/google/firebase/perf/network/zzf;->zzge:J

    .line 4
    iput-object p1, p0, Lcom/google/firebase/perf/network/zzf;->zzgj:Ljava/net/HttpURLConnection;

    .line 5
    iput-object p3, p0, Lcom/google/firebase/perf/network/zzf;->zzgb:Lcom/google/android/gms/internal/firebase-perf/zzam;

    .line 6
    iput-object p2, p0, Lcom/google/firebase/perf/network/zzf;->zzfv:Lcom/google/android/gms/internal/firebase-perf/zzaz;

    .line 7
    iget-object p1, p0, Lcom/google/firebase/perf/network/zzf;->zzgb:Lcom/google/android/gms/internal/firebase-perf/zzam;

    iget-object p2, p0, Lcom/google/firebase/perf/network/zzf;->zzgj:Ljava/net/HttpURLConnection;

    invoke-virtual {p2}, Ljava/net/HttpURLConnection;->getURL()Ljava/net/URL;

    move-result-object p2

    invoke-virtual {p2}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/firebase-perf/zzam;->zza(Ljava/lang/String;)Lcom/google/android/gms/internal/firebase-perf/zzam;

    return-void
.end method

.method private final zzbv()V
    .locals 4

    .line 189
    iget-wide v0, p0, Lcom/google/firebase/perf/network/zzf;->zzgk:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 190
    iget-object v0, p0, Lcom/google/firebase/perf/network/zzf;->zzfv:Lcom/google/android/gms/internal/firebase-perf/zzaz;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-perf/zzaz;->reset()V

    .line 191
    iget-object v0, p0, Lcom/google/firebase/perf/network/zzf;->zzfv:Lcom/google/android/gms/internal/firebase-perf/zzaz;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-perf/zzaz;->zzbx()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/firebase/perf/network/zzf;->zzgk:J

    .line 192
    iget-object v0, p0, Lcom/google/firebase/perf/network/zzf;->zzgb:Lcom/google/android/gms/internal/firebase-perf/zzam;

    iget-wide v1, p0, Lcom/google/firebase/perf/network/zzf;->zzgk:J

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/firebase-perf/zzam;->zze(J)Lcom/google/android/gms/internal/firebase-perf/zzam;

    .line 194
    :cond_0
    iget-object v0, p0, Lcom/google/firebase/perf/network/zzf;->zzgj:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getRequestMethod()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 197
    iget-object v1, p0, Lcom/google/firebase/perf/network/zzf;->zzgb:Lcom/google/android/gms/internal/firebase-perf/zzam;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/firebase-perf/zzam;->zzb(Ljava/lang/String;)Lcom/google/android/gms/internal/firebase-perf/zzam;

    return-void

    .line 199
    :cond_1
    iget-object v0, p0, Lcom/google/firebase/perf/network/zzf;->zzgj:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getDoOutput()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 201
    iget-object v0, p0, Lcom/google/firebase/perf/network/zzf;->zzgb:Lcom/google/android/gms/internal/firebase-perf/zzam;

    const-string v1, "POST"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/firebase-perf/zzam;->zzb(Ljava/lang/String;)Lcom/google/android/gms/internal/firebase-perf/zzam;

    return-void

    .line 202
    :cond_2
    iget-object v0, p0, Lcom/google/firebase/perf/network/zzf;->zzgb:Lcom/google/android/gms/internal/firebase-perf/zzam;

    const-string v1, "GET"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/firebase-perf/zzam;->zzb(Ljava/lang/String;)Lcom/google/android/gms/internal/firebase-perf/zzam;

    return-void
.end method


# virtual methods
.method public final addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 133
    iget-object v0, p0, Lcom/google/firebase/perf/network/zzf;->zzgj:Ljava/net/HttpURLConnection;

    invoke-virtual {v0, p1, p2}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final connect()V
    .locals 4

    .line 9
    iget-wide v0, p0, Lcom/google/firebase/perf/network/zzf;->zzgk:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 10
    iget-object v0, p0, Lcom/google/firebase/perf/network/zzf;->zzfv:Lcom/google/android/gms/internal/firebase-perf/zzaz;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-perf/zzaz;->reset()V

    .line 11
    iget-object v0, p0, Lcom/google/firebase/perf/network/zzf;->zzfv:Lcom/google/android/gms/internal/firebase-perf/zzaz;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-perf/zzaz;->zzbx()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/firebase/perf/network/zzf;->zzgk:J

    .line 12
    iget-object v0, p0, Lcom/google/firebase/perf/network/zzf;->zzgb:Lcom/google/android/gms/internal/firebase-perf/zzam;

    iget-wide v1, p0, Lcom/google/firebase/perf/network/zzf;->zzgk:J

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/firebase-perf/zzam;->zze(J)Lcom/google/android/gms/internal/firebase-perf/zzam;

    .line 13
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/google/firebase/perf/network/zzf;->zzgj:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->connect()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 16
    iget-object v1, p0, Lcom/google/firebase/perf/network/zzf;->zzgb:Lcom/google/android/gms/internal/firebase-perf/zzam;

    iget-object v2, p0, Lcom/google/firebase/perf/network/zzf;->zzfv:Lcom/google/android/gms/internal/firebase-perf/zzaz;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/firebase-perf/zzaz;->zzby()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/internal/firebase-perf/zzam;->zzh(J)Lcom/google/android/gms/internal/firebase-perf/zzam;

    .line 17
    iget-object v1, p0, Lcom/google/firebase/perf/network/zzf;->zzgb:Lcom/google/android/gms/internal/firebase-perf/zzam;

    invoke-static {v1}, Lcom/google/firebase/perf/network/zzg;->zza(Lcom/google/android/gms/internal/firebase-perf/zzam;)V

    .line 18
    throw v0
.end method

.method public final disconnect()V
    .locals 3

    .line 19
    iget-object v0, p0, Lcom/google/firebase/perf/network/zzf;->zzgb:Lcom/google/android/gms/internal/firebase-perf/zzam;

    iget-object v1, p0, Lcom/google/firebase/perf/network/zzf;->zzfv:Lcom/google/android/gms/internal/firebase-perf/zzaz;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/firebase-perf/zzaz;->zzby()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/firebase-perf/zzam;->zzh(J)Lcom/google/android/gms/internal/firebase-perf/zzam;

    .line 20
    iget-object v0, p0, Lcom/google/firebase/perf/network/zzf;->zzgb:Lcom/google/android/gms/internal/firebase-perf/zzam;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-perf/zzam;->zzz()Lcom/google/android/gms/internal/firebase-perf/zzca;

    .line 21
    iget-object v0, p0, Lcom/google/firebase/perf/network/zzf;->zzgj:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    return-void
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    .line 135
    iget-object v0, p0, Lcom/google/firebase/perf/network/zzf;->zzgj:Ljava/net/HttpURLConnection;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final getAllowUserInteraction()Z
    .locals 1

    .line 136
    iget-object v0, p0, Lcom/google/firebase/perf/network/zzf;->zzgj:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getAllowUserInteraction()Z

    move-result v0

    return v0
.end method

.method public final getConnectTimeout()I
    .locals 1

    .line 137
    iget-object v0, p0, Lcom/google/firebase/perf/network/zzf;->zzgj:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getConnectTimeout()I

    move-result v0

    return v0
.end method

.method public final getContent()Ljava/lang/Object;
    .locals 4

    .line 23
    invoke-direct {p0}, Lcom/google/firebase/perf/network/zzf;->zzbv()V

    .line 24
    iget-object v0, p0, Lcom/google/firebase/perf/network/zzf;->zzgb:Lcom/google/android/gms/internal/firebase-perf/zzam;

    iget-object v1, p0, Lcom/google/firebase/perf/network/zzf;->zzgj:Ljava/net/HttpURLConnection;

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/firebase-perf/zzam;->zzc(I)Lcom/google/android/gms/internal/firebase-perf/zzam;

    .line 25
    :try_start_0
    iget-object v0, p0, Lcom/google/firebase/perf/network/zzf;->zzgj:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getContent()Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 31
    instance-of v1, v0, Ljava/io/InputStream;

    if-eqz v1, :cond_0

    .line 32
    iget-object v1, p0, Lcom/google/firebase/perf/network/zzf;->zzgb:Lcom/google/android/gms/internal/firebase-perf/zzam;

    iget-object v2, p0, Lcom/google/firebase/perf/network/zzf;->zzgj:Ljava/net/HttpURLConnection;

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getContentType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/firebase-perf/zzam;->zzc(Ljava/lang/String;)Lcom/google/android/gms/internal/firebase-perf/zzam;

    .line 33
    new-instance v1, Lcom/google/firebase/perf/network/zzb;

    check-cast v0, Ljava/io/InputStream;

    iget-object v2, p0, Lcom/google/firebase/perf/network/zzf;->zzgb:Lcom/google/android/gms/internal/firebase-perf/zzam;

    iget-object v3, p0, Lcom/google/firebase/perf/network/zzf;->zzfv:Lcom/google/android/gms/internal/firebase-perf/zzaz;

    invoke-direct {v1, v0, v2, v3}, Lcom/google/firebase/perf/network/zzb;-><init>(Ljava/io/InputStream;Lcom/google/android/gms/internal/firebase-perf/zzam;Lcom/google/android/gms/internal/firebase-perf/zzaz;)V

    move-object v0, v1

    goto :goto_0

    .line 34
    :cond_0
    iget-object v1, p0, Lcom/google/firebase/perf/network/zzf;->zzgb:Lcom/google/android/gms/internal/firebase-perf/zzam;

    iget-object v2, p0, Lcom/google/firebase/perf/network/zzf;->zzgj:Ljava/net/HttpURLConnection;

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getContentType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/firebase-perf/zzam;->zzc(Ljava/lang/String;)Lcom/google/android/gms/internal/firebase-perf/zzam;

    .line 35
    iget-object v1, p0, Lcom/google/firebase/perf/network/zzf;->zzgb:Lcom/google/android/gms/internal/firebase-perf/zzam;

    iget-object v2, p0, Lcom/google/firebase/perf/network/zzf;->zzgj:Ljava/net/HttpURLConnection;

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getContentLength()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/internal/firebase-perf/zzam;->zzi(J)Lcom/google/android/gms/internal/firebase-perf/zzam;

    .line 36
    iget-object v1, p0, Lcom/google/firebase/perf/network/zzf;->zzgb:Lcom/google/android/gms/internal/firebase-perf/zzam;

    iget-object v2, p0, Lcom/google/firebase/perf/network/zzf;->zzfv:Lcom/google/android/gms/internal/firebase-perf/zzaz;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/firebase-perf/zzaz;->zzby()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/internal/firebase-perf/zzam;->zzh(J)Lcom/google/android/gms/internal/firebase-perf/zzam;

    .line 37
    iget-object v1, p0, Lcom/google/firebase/perf/network/zzf;->zzgb:Lcom/google/android/gms/internal/firebase-perf/zzam;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/firebase-perf/zzam;->zzz()Lcom/google/android/gms/internal/firebase-perf/zzca;

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    .line 28
    iget-object v1, p0, Lcom/google/firebase/perf/network/zzf;->zzgb:Lcom/google/android/gms/internal/firebase-perf/zzam;

    iget-object v2, p0, Lcom/google/firebase/perf/network/zzf;->zzfv:Lcom/google/android/gms/internal/firebase-perf/zzaz;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/firebase-perf/zzaz;->zzby()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/internal/firebase-perf/zzam;->zzh(J)Lcom/google/android/gms/internal/firebase-perf/zzam;

    .line 29
    iget-object v1, p0, Lcom/google/firebase/perf/network/zzf;->zzgb:Lcom/google/android/gms/internal/firebase-perf/zzam;

    invoke-static {v1}, Lcom/google/firebase/perf/network/zzg;->zza(Lcom/google/android/gms/internal/firebase-perf/zzam;)V

    .line 30
    throw v0
.end method

.method public final getContent([Ljava/lang/Class;)Ljava/lang/Object;
    .locals 3

    .line 39
    invoke-direct {p0}, Lcom/google/firebase/perf/network/zzf;->zzbv()V

    .line 40
    iget-object v0, p0, Lcom/google/firebase/perf/network/zzf;->zzgb:Lcom/google/android/gms/internal/firebase-perf/zzam;

    iget-object v1, p0, Lcom/google/firebase/perf/network/zzf;->zzgj:Ljava/net/HttpURLConnection;

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/firebase-perf/zzam;->zzc(I)Lcom/google/android/gms/internal/firebase-perf/zzam;

    .line 41
    :try_start_0
    iget-object v0, p0, Lcom/google/firebase/perf/network/zzf;->zzgj:Ljava/net/HttpURLConnection;

    invoke-virtual {v0, p1}, Ljava/net/HttpURLConnection;->getContent([Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 47
    instance-of v0, p1, Ljava/io/InputStream;

    if-eqz v0, :cond_0

    .line 48
    iget-object v0, p0, Lcom/google/firebase/perf/network/zzf;->zzgb:Lcom/google/android/gms/internal/firebase-perf/zzam;

    iget-object v1, p0, Lcom/google/firebase/perf/network/zzf;->zzgj:Ljava/net/HttpURLConnection;

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getContentType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/firebase-perf/zzam;->zzc(Ljava/lang/String;)Lcom/google/android/gms/internal/firebase-perf/zzam;

    .line 49
    new-instance v0, Lcom/google/firebase/perf/network/zzb;

    check-cast p1, Ljava/io/InputStream;

    iget-object v1, p0, Lcom/google/firebase/perf/network/zzf;->zzgb:Lcom/google/android/gms/internal/firebase-perf/zzam;

    iget-object v2, p0, Lcom/google/firebase/perf/network/zzf;->zzfv:Lcom/google/android/gms/internal/firebase-perf/zzaz;

    invoke-direct {v0, p1, v1, v2}, Lcom/google/firebase/perf/network/zzb;-><init>(Ljava/io/InputStream;Lcom/google/android/gms/internal/firebase-perf/zzam;Lcom/google/android/gms/internal/firebase-perf/zzaz;)V

    move-object p1, v0

    goto :goto_0

    .line 50
    :cond_0
    iget-object v0, p0, Lcom/google/firebase/perf/network/zzf;->zzgb:Lcom/google/android/gms/internal/firebase-perf/zzam;

    iget-object v1, p0, Lcom/google/firebase/perf/network/zzf;->zzgj:Ljava/net/HttpURLConnection;

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getContentType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/firebase-perf/zzam;->zzc(Ljava/lang/String;)Lcom/google/android/gms/internal/firebase-perf/zzam;

    .line 51
    iget-object v0, p0, Lcom/google/firebase/perf/network/zzf;->zzgb:Lcom/google/android/gms/internal/firebase-perf/zzam;

    iget-object v1, p0, Lcom/google/firebase/perf/network/zzf;->zzgj:Ljava/net/HttpURLConnection;

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getContentLength()I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/firebase-perf/zzam;->zzi(J)Lcom/google/android/gms/internal/firebase-perf/zzam;

    .line 52
    iget-object v0, p0, Lcom/google/firebase/perf/network/zzf;->zzgb:Lcom/google/android/gms/internal/firebase-perf/zzam;

    iget-object v1, p0, Lcom/google/firebase/perf/network/zzf;->zzfv:Lcom/google/android/gms/internal/firebase-perf/zzaz;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/firebase-perf/zzaz;->zzby()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/firebase-perf/zzam;->zzh(J)Lcom/google/android/gms/internal/firebase-perf/zzam;

    .line 53
    iget-object v0, p0, Lcom/google/firebase/perf/network/zzf;->zzgb:Lcom/google/android/gms/internal/firebase-perf/zzam;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-perf/zzam;->zzz()Lcom/google/android/gms/internal/firebase-perf/zzca;

    :goto_0
    return-object p1

    :catch_0
    move-exception p1

    .line 44
    iget-object v0, p0, Lcom/google/firebase/perf/network/zzf;->zzgb:Lcom/google/android/gms/internal/firebase-perf/zzam;

    iget-object v1, p0, Lcom/google/firebase/perf/network/zzf;->zzfv:Lcom/google/android/gms/internal/firebase-perf/zzaz;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/firebase-perf/zzaz;->zzby()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/firebase-perf/zzam;->zzh(J)Lcom/google/android/gms/internal/firebase-perf/zzam;

    .line 45
    iget-object v0, p0, Lcom/google/firebase/perf/network/zzf;->zzgb:Lcom/google/android/gms/internal/firebase-perf/zzam;

    invoke-static {v0}, Lcom/google/firebase/perf/network/zzg;->zza(Lcom/google/android/gms/internal/firebase-perf/zzam;)V

    .line 46
    throw p1
.end method

.method public final getContentEncoding()Ljava/lang/String;
    .locals 1

    .line 123
    invoke-direct {p0}, Lcom/google/firebase/perf/network/zzf;->zzbv()V

    .line 124
    iget-object v0, p0, Lcom/google/firebase/perf/network/zzf;->zzgj:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getContentEncoding()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getContentLength()I
    .locals 1

    .line 125
    invoke-direct {p0}, Lcom/google/firebase/perf/network/zzf;->zzbv()V

    .line 126
    iget-object v0, p0, Lcom/google/firebase/perf/network/zzf;->zzgj:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getContentLength()I

    move-result v0

    return v0
.end method

.method public final getContentLengthLong()J
    .locals 2

    .line 127
    invoke-direct {p0}, Lcom/google/firebase/perf/network/zzf;->zzbv()V

    .line 128
    iget-object v0, p0, Lcom/google/firebase/perf/network/zzf;->zzgj:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getContentLengthLong()J

    move-result-wide v0

    return-wide v0
.end method

.method public final getContentType()Ljava/lang/String;
    .locals 1

    .line 129
    invoke-direct {p0}, Lcom/google/firebase/perf/network/zzf;->zzbv()V

    .line 130
    iget-object v0, p0, Lcom/google/firebase/perf/network/zzf;->zzgj:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getContentType()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getDate()J
    .locals 2

    .line 131
    invoke-direct {p0}, Lcom/google/firebase/perf/network/zzf;->zzbv()V

    .line 132
    iget-object v0, p0, Lcom/google/firebase/perf/network/zzf;->zzgj:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getDate()J

    move-result-wide v0

    return-wide v0
.end method

.method public final getDefaultUseCaches()Z
    .locals 1

    .line 138
    iget-object v0, p0, Lcom/google/firebase/perf/network/zzf;->zzgj:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getDefaultUseCaches()Z

    move-result v0

    return v0
.end method

.method public final getDoInput()Z
    .locals 1

    .line 139
    iget-object v0, p0, Lcom/google/firebase/perf/network/zzf;->zzgj:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getDoInput()Z

    move-result v0

    return v0
.end method

.method public final getDoOutput()Z
    .locals 1

    .line 140
    iget-object v0, p0, Lcom/google/firebase/perf/network/zzf;->zzgj:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getDoOutput()Z

    move-result v0

    return v0
.end method

.method public final getErrorStream()Ljava/io/InputStream;
    .locals 4

    .line 141
    invoke-direct {p0}, Lcom/google/firebase/perf/network/zzf;->zzbv()V

    .line 142
    :try_start_0
    iget-object v0, p0, Lcom/google/firebase/perf/network/zzf;->zzgb:Lcom/google/android/gms/internal/firebase-perf/zzam;

    iget-object v1, p0, Lcom/google/firebase/perf/network/zzf;->zzgj:Ljava/net/HttpURLConnection;

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/firebase-perf/zzam;->zzc(I)Lcom/google/android/gms/internal/firebase-perf/zzam;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string v0, "FirebasePerformance"

    const-string v1, "IOException thrown trying to obtain the response code"

    .line 145
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    :goto_0
    iget-object v0, p0, Lcom/google/firebase/perf/network/zzf;->zzgj:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 148
    new-instance v1, Lcom/google/firebase/perf/network/zzb;

    iget-object v2, p0, Lcom/google/firebase/perf/network/zzf;->zzgb:Lcom/google/android/gms/internal/firebase-perf/zzam;

    iget-object v3, p0, Lcom/google/firebase/perf/network/zzf;->zzfv:Lcom/google/android/gms/internal/firebase-perf/zzaz;

    invoke-direct {v1, v0, v2, v3}, Lcom/google/firebase/perf/network/zzb;-><init>(Ljava/io/InputStream;Lcom/google/android/gms/internal/firebase-perf/zzam;Lcom/google/android/gms/internal/firebase-perf/zzaz;)V

    return-object v1

    :cond_0
    return-object v0
.end method

.method public final getExpiration()J
    .locals 2

    .line 99
    invoke-direct {p0}, Lcom/google/firebase/perf/network/zzf;->zzbv()V

    .line 100
    iget-object v0, p0, Lcom/google/firebase/perf/network/zzf;->zzgj:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getExpiration()J

    move-result-wide v0

    return-wide v0
.end method

.method public final getHeaderField(I)Ljava/lang/String;
    .locals 1

    .line 102
    invoke-direct {p0}, Lcom/google/firebase/perf/network/zzf;->zzbv()V

    .line 103
    iget-object v0, p0, Lcom/google/firebase/perf/network/zzf;->zzgj:Ljava/net/HttpURLConnection;

    invoke-virtual {v0, p1}, Ljava/net/HttpURLConnection;->getHeaderField(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final getHeaderField(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 105
    invoke-direct {p0}, Lcom/google/firebase/perf/network/zzf;->zzbv()V

    .line 106
    iget-object v0, p0, Lcom/google/firebase/perf/network/zzf;->zzgj:Ljava/net/HttpURLConnection;

    invoke-virtual {v0, p1}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final getHeaderFieldDate(Ljava/lang/String;J)J
    .locals 1

    .line 108
    invoke-direct {p0}, Lcom/google/firebase/perf/network/zzf;->zzbv()V

    .line 109
    iget-object v0, p0, Lcom/google/firebase/perf/network/zzf;->zzgj:Ljava/net/HttpURLConnection;

    invoke-virtual {v0, p1, p2, p3}, Ljava/net/HttpURLConnection;->getHeaderFieldDate(Ljava/lang/String;J)J

    move-result-wide p1

    return-wide p1
.end method

.method public final getHeaderFieldInt(Ljava/lang/String;I)I
    .locals 1

    .line 111
    invoke-direct {p0}, Lcom/google/firebase/perf/network/zzf;->zzbv()V

    .line 112
    iget-object v0, p0, Lcom/google/firebase/perf/network/zzf;->zzgj:Ljava/net/HttpURLConnection;

    invoke-virtual {v0, p1, p2}, Ljava/net/HttpURLConnection;->getHeaderFieldInt(Ljava/lang/String;I)I

    move-result p1

    return p1
.end method

.method public final getHeaderFieldKey(I)Ljava/lang/String;
    .locals 1

    .line 117
    invoke-direct {p0}, Lcom/google/firebase/perf/network/zzf;->zzbv()V

    .line 118
    iget-object v0, p0, Lcom/google/firebase/perf/network/zzf;->zzgj:Ljava/net/HttpURLConnection;

    invoke-virtual {v0, p1}, Ljava/net/HttpURLConnection;->getHeaderFieldKey(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final getHeaderFieldLong(Ljava/lang/String;J)J
    .locals 1

    .line 114
    invoke-direct {p0}, Lcom/google/firebase/perf/network/zzf;->zzbv()V

    .line 115
    iget-object v0, p0, Lcom/google/firebase/perf/network/zzf;->zzgj:Ljava/net/HttpURLConnection;

    invoke-virtual {v0, p1, p2, p3}, Ljava/net/HttpURLConnection;->getHeaderFieldLong(Ljava/lang/String;J)J

    move-result-wide p1

    return-wide p1
.end method

.method public final getHeaderFields()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 120
    invoke-direct {p0}, Lcom/google/firebase/perf/network/zzf;->zzbv()V

    .line 121
    iget-object v0, p0, Lcom/google/firebase/perf/network/zzf;->zzgj:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public final getIfModifiedSince()J
    .locals 2

    .line 150
    iget-object v0, p0, Lcom/google/firebase/perf/network/zzf;->zzgj:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getIfModifiedSince()J

    move-result-wide v0

    return-wide v0
.end method

.method public final getInputStream()Ljava/io/InputStream;
    .locals 4

    .line 55
    invoke-direct {p0}, Lcom/google/firebase/perf/network/zzf;->zzbv()V

    .line 56
    iget-object v0, p0, Lcom/google/firebase/perf/network/zzf;->zzgb:Lcom/google/android/gms/internal/firebase-perf/zzam;

    iget-object v1, p0, Lcom/google/firebase/perf/network/zzf;->zzgj:Ljava/net/HttpURLConnection;

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/firebase-perf/zzam;->zzc(I)Lcom/google/android/gms/internal/firebase-perf/zzam;

    .line 57
    iget-object v0, p0, Lcom/google/firebase/perf/network/zzf;->zzgb:Lcom/google/android/gms/internal/firebase-perf/zzam;

    iget-object v1, p0, Lcom/google/firebase/perf/network/zzf;->zzgj:Ljava/net/HttpURLConnection;

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getContentType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/firebase-perf/zzam;->zzc(Ljava/lang/String;)Lcom/google/android/gms/internal/firebase-perf/zzam;

    .line 58
    :try_start_0
    iget-object v0, p0, Lcom/google/firebase/perf/network/zzf;->zzgj:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    .line 59
    new-instance v1, Lcom/google/firebase/perf/network/zzb;

    iget-object v2, p0, Lcom/google/firebase/perf/network/zzf;->zzgb:Lcom/google/android/gms/internal/firebase-perf/zzam;

    iget-object v3, p0, Lcom/google/firebase/perf/network/zzf;->zzfv:Lcom/google/android/gms/internal/firebase-perf/zzaz;

    invoke-direct {v1, v0, v2, v3}, Lcom/google/firebase/perf/network/zzb;-><init>(Ljava/io/InputStream;Lcom/google/android/gms/internal/firebase-perf/zzam;Lcom/google/android/gms/internal/firebase-perf/zzaz;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception v0

    .line 61
    iget-object v1, p0, Lcom/google/firebase/perf/network/zzf;->zzgb:Lcom/google/android/gms/internal/firebase-perf/zzam;

    iget-object v2, p0, Lcom/google/firebase/perf/network/zzf;->zzfv:Lcom/google/android/gms/internal/firebase-perf/zzaz;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/firebase-perf/zzaz;->zzby()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/internal/firebase-perf/zzam;->zzh(J)Lcom/google/android/gms/internal/firebase-perf/zzam;

    .line 62
    iget-object v1, p0, Lcom/google/firebase/perf/network/zzf;->zzgb:Lcom/google/android/gms/internal/firebase-perf/zzam;

    invoke-static {v1}, Lcom/google/firebase/perf/network/zzg;->zza(Lcom/google/android/gms/internal/firebase-perf/zzam;)V

    .line 63
    throw v0
.end method

.method public final getInstanceFollowRedirects()Z
    .locals 1

    .line 151
    iget-object v0, p0, Lcom/google/firebase/perf/network/zzf;->zzgj:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInstanceFollowRedirects()Z

    move-result v0

    return v0
.end method

.method public final getLastModified()J
    .locals 2

    .line 64
    invoke-direct {p0}, Lcom/google/firebase/perf/network/zzf;->zzbv()V

    .line 65
    iget-object v0, p0, Lcom/google/firebase/perf/network/zzf;->zzgj:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getLastModified()J

    move-result-wide v0

    return-wide v0
.end method

.method public final getOutputStream()Ljava/io/OutputStream;
    .locals 4

    .line 67
    :try_start_0
    new-instance v0, Lcom/google/firebase/perf/network/zza;

    iget-object v1, p0, Lcom/google/firebase/perf/network/zzf;->zzgj:Ljava/net/HttpURLConnection;

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    iget-object v2, p0, Lcom/google/firebase/perf/network/zzf;->zzgb:Lcom/google/android/gms/internal/firebase-perf/zzam;

    iget-object v3, p0, Lcom/google/firebase/perf/network/zzf;->zzfv:Lcom/google/android/gms/internal/firebase-perf/zzaz;

    invoke-direct {v0, v1, v2, v3}, Lcom/google/firebase/perf/network/zza;-><init>(Ljava/io/OutputStream;Lcom/google/android/gms/internal/firebase-perf/zzam;Lcom/google/android/gms/internal/firebase-perf/zzaz;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 69
    iget-object v1, p0, Lcom/google/firebase/perf/network/zzf;->zzgb:Lcom/google/android/gms/internal/firebase-perf/zzam;

    iget-object v2, p0, Lcom/google/firebase/perf/network/zzf;->zzfv:Lcom/google/android/gms/internal/firebase-perf/zzaz;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/firebase-perf/zzaz;->zzby()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/internal/firebase-perf/zzam;->zzh(J)Lcom/google/android/gms/internal/firebase-perf/zzam;

    .line 70
    iget-object v1, p0, Lcom/google/firebase/perf/network/zzf;->zzgb:Lcom/google/android/gms/internal/firebase-perf/zzam;

    invoke-static {v1}, Lcom/google/firebase/perf/network/zzg;->zza(Lcom/google/android/gms/internal/firebase-perf/zzam;)V

    .line 71
    throw v0
.end method

.method public final getPermission()Ljava/security/Permission;
    .locals 4

    .line 72
    :try_start_0
    iget-object v0, p0, Lcom/google/firebase/perf/network/zzf;->zzgj:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getPermission()Ljava/security/Permission;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 74
    iget-object v1, p0, Lcom/google/firebase/perf/network/zzf;->zzgb:Lcom/google/android/gms/internal/firebase-perf/zzam;

    iget-object v2, p0, Lcom/google/firebase/perf/network/zzf;->zzfv:Lcom/google/android/gms/internal/firebase-perf/zzaz;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/firebase-perf/zzaz;->zzby()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/internal/firebase-perf/zzam;->zzh(J)Lcom/google/android/gms/internal/firebase-perf/zzam;

    .line 75
    iget-object v1, p0, Lcom/google/firebase/perf/network/zzf;->zzgb:Lcom/google/android/gms/internal/firebase-perf/zzam;

    invoke-static {v1}, Lcom/google/firebase/perf/network/zzg;->zza(Lcom/google/android/gms/internal/firebase-perf/zzam;)V

    .line 76
    throw v0
.end method

.method public final getReadTimeout()I
    .locals 1

    .line 152
    iget-object v0, p0, Lcom/google/firebase/perf/network/zzf;->zzgj:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getReadTimeout()I

    move-result v0

    return v0
.end method

.method public final getRequestMethod()Ljava/lang/String;
    .locals 1

    .line 153
    iget-object v0, p0, Lcom/google/firebase/perf/network/zzf;->zzgj:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getRequestMethod()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getRequestProperties()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 154
    iget-object v0, p0, Lcom/google/firebase/perf/network/zzf;->zzgj:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getRequestProperties()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public final getRequestProperty(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 155
    iget-object v0, p0, Lcom/google/firebase/perf/network/zzf;->zzgj:Ljava/net/HttpURLConnection;

    invoke-virtual {v0, p1}, Ljava/net/HttpURLConnection;->getRequestProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final getResponseCode()I
    .locals 4

    .line 77
    invoke-direct {p0}, Lcom/google/firebase/perf/network/zzf;->zzbv()V

    .line 78
    iget-wide v0, p0, Lcom/google/firebase/perf/network/zzf;->zzge:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 79
    iget-object v0, p0, Lcom/google/firebase/perf/network/zzf;->zzfv:Lcom/google/android/gms/internal/firebase-perf/zzaz;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-perf/zzaz;->zzby()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/firebase/perf/network/zzf;->zzge:J

    .line 80
    iget-object v0, p0, Lcom/google/firebase/perf/network/zzf;->zzgb:Lcom/google/android/gms/internal/firebase-perf/zzam;

    iget-wide v1, p0, Lcom/google/firebase/perf/network/zzf;->zzge:J

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/firebase-perf/zzam;->zzg(J)Lcom/google/android/gms/internal/firebase-perf/zzam;

    .line 81
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/google/firebase/perf/network/zzf;->zzgj:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v0

    .line 82
    iget-object v1, p0, Lcom/google/firebase/perf/network/zzf;->zzgb:Lcom/google/android/gms/internal/firebase-perf/zzam;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/firebase-perf/zzam;->zzc(I)Lcom/google/android/gms/internal/firebase-perf/zzam;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 85
    iget-object v1, p0, Lcom/google/firebase/perf/network/zzf;->zzgb:Lcom/google/android/gms/internal/firebase-perf/zzam;

    iget-object v2, p0, Lcom/google/firebase/perf/network/zzf;->zzfv:Lcom/google/android/gms/internal/firebase-perf/zzaz;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/firebase-perf/zzaz;->zzby()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/internal/firebase-perf/zzam;->zzh(J)Lcom/google/android/gms/internal/firebase-perf/zzam;

    .line 86
    iget-object v1, p0, Lcom/google/firebase/perf/network/zzf;->zzgb:Lcom/google/android/gms/internal/firebase-perf/zzam;

    invoke-static {v1}, Lcom/google/firebase/perf/network/zzg;->zza(Lcom/google/android/gms/internal/firebase-perf/zzam;)V

    .line 87
    throw v0
.end method

.method public final getResponseMessage()Ljava/lang/String;
    .locals 4

    .line 88
    invoke-direct {p0}, Lcom/google/firebase/perf/network/zzf;->zzbv()V

    .line 89
    iget-wide v0, p0, Lcom/google/firebase/perf/network/zzf;->zzge:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 90
    iget-object v0, p0, Lcom/google/firebase/perf/network/zzf;->zzfv:Lcom/google/android/gms/internal/firebase-perf/zzaz;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-perf/zzaz;->zzby()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/firebase/perf/network/zzf;->zzge:J

    .line 91
    iget-object v0, p0, Lcom/google/firebase/perf/network/zzf;->zzgb:Lcom/google/android/gms/internal/firebase-perf/zzam;

    iget-wide v1, p0, Lcom/google/firebase/perf/network/zzf;->zzge:J

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/firebase-perf/zzam;->zzg(J)Lcom/google/android/gms/internal/firebase-perf/zzam;

    .line 92
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/google/firebase/perf/network/zzf;->zzgj:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseMessage()Ljava/lang/String;

    move-result-object v0

    .line 93
    iget-object v1, p0, Lcom/google/firebase/perf/network/zzf;->zzgb:Lcom/google/android/gms/internal/firebase-perf/zzam;

    iget-object v2, p0, Lcom/google/firebase/perf/network/zzf;->zzgj:Ljava/net/HttpURLConnection;

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/firebase-perf/zzam;->zzc(I)Lcom/google/android/gms/internal/firebase-perf/zzam;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 96
    iget-object v1, p0, Lcom/google/firebase/perf/network/zzf;->zzgb:Lcom/google/android/gms/internal/firebase-perf/zzam;

    iget-object v2, p0, Lcom/google/firebase/perf/network/zzf;->zzfv:Lcom/google/android/gms/internal/firebase-perf/zzaz;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/firebase-perf/zzaz;->zzby()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/internal/firebase-perf/zzam;->zzh(J)Lcom/google/android/gms/internal/firebase-perf/zzam;

    .line 97
    iget-object v1, p0, Lcom/google/firebase/perf/network/zzf;->zzgb:Lcom/google/android/gms/internal/firebase-perf/zzam;

    invoke-static {v1}, Lcom/google/firebase/perf/network/zzg;->zza(Lcom/google/android/gms/internal/firebase-perf/zzam;)V

    .line 98
    throw v0
.end method

.method public final getURL()Ljava/net/URL;
    .locals 1

    .line 156
    iget-object v0, p0, Lcom/google/firebase/perf/network/zzf;->zzgj:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getURL()Ljava/net/URL;

    move-result-object v0

    return-object v0
.end method

.method public final getUseCaches()Z
    .locals 1

    .line 157
    iget-object v0, p0, Lcom/google/firebase/perf/network/zzf;->zzgj:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getUseCaches()Z

    move-result v0

    return v0
.end method

.method public final hashCode()I
    .locals 1

    .line 158
    iget-object v0, p0, Lcom/google/firebase/perf/network/zzf;->zzgj:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public final setAllowUserInteraction(Z)V
    .locals 1

    .line 159
    iget-object v0, p0, Lcom/google/firebase/perf/network/zzf;->zzgj:Ljava/net/HttpURLConnection;

    invoke-virtual {v0, p1}, Ljava/net/HttpURLConnection;->setAllowUserInteraction(Z)V

    return-void
.end method

.method public final setChunkedStreamingMode(I)V
    .locals 1

    .line 161
    iget-object v0, p0, Lcom/google/firebase/perf/network/zzf;->zzgj:Ljava/net/HttpURLConnection;

    invoke-virtual {v0, p1}, Ljava/net/HttpURLConnection;->setChunkedStreamingMode(I)V

    return-void
.end method

.method public final setConnectTimeout(I)V
    .locals 1

    .line 163
    iget-object v0, p0, Lcom/google/firebase/perf/network/zzf;->zzgj:Ljava/net/HttpURLConnection;

    invoke-virtual {v0, p1}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    return-void
.end method

.method public final setDefaultUseCaches(Z)V
    .locals 1

    .line 165
    iget-object v0, p0, Lcom/google/firebase/perf/network/zzf;->zzgj:Ljava/net/HttpURLConnection;

    invoke-virtual {v0, p1}, Ljava/net/HttpURLConnection;->setDefaultUseCaches(Z)V

    return-void
.end method

.method public final setDoInput(Z)V
    .locals 1

    .line 167
    iget-object v0, p0, Lcom/google/firebase/perf/network/zzf;->zzgj:Ljava/net/HttpURLConnection;

    invoke-virtual {v0, p1}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    return-void
.end method

.method public final setDoOutput(Z)V
    .locals 1

    .line 169
    iget-object v0, p0, Lcom/google/firebase/perf/network/zzf;->zzgj:Ljava/net/HttpURLConnection;

    invoke-virtual {v0, p1}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    return-void
.end method

.method public final setFixedLengthStreamingMode(I)V
    .locals 1

    .line 171
    iget-object v0, p0, Lcom/google/firebase/perf/network/zzf;->zzgj:Ljava/net/HttpURLConnection;

    invoke-virtual {v0, p1}, Ljava/net/HttpURLConnection;->setFixedLengthStreamingMode(I)V

    return-void
.end method

.method public final setFixedLengthStreamingMode(J)V
    .locals 1

    .line 173
    iget-object v0, p0, Lcom/google/firebase/perf/network/zzf;->zzgj:Ljava/net/HttpURLConnection;

    invoke-virtual {v0, p1, p2}, Ljava/net/HttpURLConnection;->setFixedLengthStreamingMode(J)V

    return-void
.end method

.method public final setIfModifiedSince(J)V
    .locals 1

    .line 175
    iget-object v0, p0, Lcom/google/firebase/perf/network/zzf;->zzgj:Ljava/net/HttpURLConnection;

    invoke-virtual {v0, p1, p2}, Ljava/net/HttpURLConnection;->setIfModifiedSince(J)V

    return-void
.end method

.method public final setInstanceFollowRedirects(Z)V
    .locals 1

    .line 177
    iget-object v0, p0, Lcom/google/firebase/perf/network/zzf;->zzgj:Ljava/net/HttpURLConnection;

    invoke-virtual {v0, p1}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    return-void
.end method

.method public final setReadTimeout(I)V
    .locals 1

    .line 179
    iget-object v0, p0, Lcom/google/firebase/perf/network/zzf;->zzgj:Ljava/net/HttpURLConnection;

    invoke-virtual {v0, p1}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    return-void
.end method

.method public final setRequestMethod(Ljava/lang/String;)V
    .locals 1

    .line 181
    iget-object v0, p0, Lcom/google/firebase/perf/network/zzf;->zzgj:Ljava/net/HttpURLConnection;

    invoke-virtual {v0, p1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    return-void
.end method

.method public final setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 183
    iget-object v0, p0, Lcom/google/firebase/perf/network/zzf;->zzgj:Ljava/net/HttpURLConnection;

    invoke-virtual {v0, p1, p2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final setUseCaches(Z)V
    .locals 1

    .line 185
    iget-object v0, p0, Lcom/google/firebase/perf/network/zzf;->zzgj:Ljava/net/HttpURLConnection;

    invoke-virtual {v0, p1}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    .line 187
    iget-object v0, p0, Lcom/google/firebase/perf/network/zzf;->zzgj:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final usingProxy()Z
    .locals 1

    .line 188
    iget-object v0, p0, Lcom/google/firebase/perf/network/zzf;->zzgj:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->usingProxy()Z

    move-result v0

    return v0
.end method
