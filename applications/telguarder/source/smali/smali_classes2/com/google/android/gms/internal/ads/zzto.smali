.class final synthetic Lcom/google/android/gms/internal/ads/zzto;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.7.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final zzbvw:Lcom/google/android/gms/internal/ads/zztp;

.field private final zzbvx:Lcom/google/android/gms/internal/ads/zzte;

.field private final zzbvy:Lcom/google/android/gms/internal/ads/zzth;

.field private final zzbvz:Lcom/google/android/gms/internal/ads/zzbaa;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zztp;Lcom/google/android/gms/internal/ads/zzte;Lcom/google/android/gms/internal/ads/zzth;Lcom/google/android/gms/internal/ads/zzbaa;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzto;->zzbvw:Lcom/google/android/gms/internal/ads/zztp;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzto;->zzbvx:Lcom/google/android/gms/internal/ads/zzte;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzto;->zzbvy:Lcom/google/android/gms/internal/ads/zzth;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzto;->zzbvz:Lcom/google/android/gms/internal/ads/zzbaa;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzto;->zzbvw:Lcom/google/android/gms/internal/ads/zztp;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzto;->zzbvx:Lcom/google/android/gms/internal/ads/zzte;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzto;->zzbvy:Lcom/google/android/gms/internal/ads/zzth;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzto;->zzbvz:Lcom/google/android/gms/internal/ads/zzbaa;

    .line 2
    :try_start_0
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzte;->zznd()Lcom/google/android/gms/internal/ads/zzti;

    move-result-object v4

    .line 3
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzte;->zzne()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4
    invoke-interface {v4, v2}, Lcom/google/android/gms/internal/ads/zzti;->zzc(Lcom/google/android/gms/internal/ads/zzth;)Lcom/google/android/gms/internal/ads/zztc;

    move-result-object v1

    goto :goto_0

    .line 5
    :cond_0
    invoke-interface {v4, v2}, Lcom/google/android/gms/internal/ads/zzti;->zza(Lcom/google/android/gms/internal/ads/zzth;)Lcom/google/android/gms/internal/ads/zztc;

    move-result-object v1

    .line 6
    :goto_0
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zztc;->zzmw()Z

    move-result v2

    if-nez v2, :cond_1

    .line 7
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "No entry contents."

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Lcom/google/android/gms/internal/ads/zzbaa;->setException(Ljava/lang/Throwable;)Z

    .line 8
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zztp;->zzbvu:Lcom/google/android/gms/internal/ads/zztn;

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zztn;->zza(Lcom/google/android/gms/internal/ads/zztn;)V

    return-void

    .line 10
    :cond_1
    new-instance v4, Lcom/google/android/gms/internal/ads/zztq;

    .line 11
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zztc;->zzmx()Ljava/io/InputStream;

    move-result-object v2

    const/4 v5, 0x1

    invoke-direct {v4, v0, v2, v5}, Lcom/google/android/gms/internal/ads/zztq;-><init>(Lcom/google/android/gms/internal/ads/zztp;Ljava/io/InputStream;I)V

    .line 12
    invoke-virtual {v4}, Ljava/io/PushbackInputStream;->read()I

    move-result v2

    const/4 v5, -0x1

    if-eq v2, v5, :cond_2

    .line 15
    invoke-virtual {v4, v2}, Ljava/io/PushbackInputStream;->unread(I)V

    .line 17
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zztc;->zzmz()Z

    move-result v5

    .line 18
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zztc;->zznc()Z

    move-result v6

    .line 19
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zztc;->zznb()J

    move-result-wide v7

    .line 20
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zztc;->zzna()Z

    move-result v9

    .line 21
    invoke-static/range {v4 .. v9}, Lcom/google/android/gms/internal/ads/zztv;->zza(Ljava/io/InputStream;ZZJZ)Lcom/google/android/gms/internal/ads/zztv;

    move-result-object v1

    .line 22
    invoke-virtual {v3, v1}, Lcom/google/android/gms/internal/ads/zzbaa;->set(Ljava/lang/Object;)Z

    return-void

    .line 14
    :cond_2
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Unable to read from cache."

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v1

    goto :goto_1

    :catch_1
    move-exception v1

    :goto_1
    const-string v2, "Unable to obtain a cache service instance."

    .line 25
    invoke-static {v2, v1}, Lcom/google/android/gms/ads/internal/util/zzd;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 26
    invoke-virtual {v3, v1}, Lcom/google/android/gms/internal/ads/zzbaa;->setException(Ljava/lang/Throwable;)Z

    .line 27
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zztp;->zzbvu:Lcom/google/android/gms/internal/ads/zztn;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zztn;->zza(Lcom/google/android/gms/internal/ads/zztn;)V

    return-void
.end method
