.class final synthetic Lcom/google/android/gms/internal/ads/ehe;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/ehb;

.field private final b:Lcom/google/android/gms/internal/ads/egu;

.field private final c:Lcom/google/android/gms/internal/ads/zzti;

.field private final d:Lcom/google/android/gms/internal/ads/zp;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/ehb;Lcom/google/android/gms/internal/ads/egu;Lcom/google/android/gms/internal/ads/zzti;Lcom/google/android/gms/internal/ads/zp;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/ehe;->a:Lcom/google/android/gms/internal/ads/ehb;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/ehe;->b:Lcom/google/android/gms/internal/ads/egu;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/ehe;->c:Lcom/google/android/gms/internal/ads/zzti;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/ehe;->d:Lcom/google/android/gms/internal/ads/zp;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 11

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ehe;->a:Lcom/google/android/gms/internal/ads/ehb;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/ehe;->b:Lcom/google/android/gms/internal/ads/egu;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/ehe;->c:Lcom/google/android/gms/internal/ads/zzti;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/ehe;->d:Lcom/google/android/gms/internal/ads/zp;

    .line 2
    :try_start_0
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/egu;->a()Lcom/google/android/gms/internal/ads/egy;

    move-result-object v4

    .line 3
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/egu;->b()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4
    invoke-interface {v4, v2}, Lcom/google/android/gms/internal/ads/egy;->b(Lcom/google/android/gms/internal/ads/zzti;)Lcom/google/android/gms/internal/ads/zzth;

    move-result-object v1

    goto :goto_0

    .line 5
    :cond_0
    invoke-interface {v4, v2}, Lcom/google/android/gms/internal/ads/egy;->a(Lcom/google/android/gms/internal/ads/zzti;)Lcom/google/android/gms/internal/ads/zzth;

    move-result-object v1

    .line 6
    :goto_0
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzth;->zznc()Z

    move-result v2

    if-nez v2, :cond_1

    .line 7
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "No entry contents."

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Lcom/google/android/gms/internal/ads/zp;->setException(Ljava/lang/Throwable;)Z

    .line 8
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/ehb;->a:Lcom/google/android/gms/internal/ads/egz;

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/egz;->a(Lcom/google/android/gms/internal/ads/egz;)V

    return-void

    .line 10
    :cond_1
    new-instance v5, Lcom/google/android/gms/internal/ads/ehg;

    .line 11
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzth;->zznd()Ljava/io/InputStream;

    move-result-object v2

    const/4 v4, 0x1

    invoke-direct {v5, v0, v2, v4}, Lcom/google/android/gms/internal/ads/ehg;-><init>(Lcom/google/android/gms/internal/ads/ehb;Ljava/io/InputStream;I)V

    .line 12
    invoke-virtual {v5}, Ljava/io/PushbackInputStream;->read()I

    move-result v2

    const/4 v4, -0x1

    if-eq v2, v4, :cond_2

    .line 15
    invoke-virtual {v5, v2}, Ljava/io/PushbackInputStream;->unread(I)V

    .line 17
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzth;->zznf()Z

    move-result v6

    .line 18
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzth;->zzni()Z

    move-result v7

    .line 19
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzth;->zznh()J

    move-result-wide v8

    .line 20
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzth;->zzng()Z

    move-result v10

    .line 1008
    new-instance v1, Lcom/google/android/gms/internal/ads/ehh;

    move-object v4, v1

    invoke-direct/range {v4 .. v10}, Lcom/google/android/gms/internal/ads/ehh;-><init>(Ljava/io/InputStream;ZZJZ)V

    .line 22
    invoke-virtual {v3, v1}, Lcom/google/android/gms/internal/ads/zp;->set(Ljava/lang/Object;)Z

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
    invoke-virtual {v3, v1}, Lcom/google/android/gms/internal/ads/zp;->setException(Ljava/lang/Throwable;)Z

    .line 27
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/ehb;->a:Lcom/google/android/gms/internal/ads/egz;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/egz;->a(Lcom/google/android/gms/internal/ads/egz;)V

    return-void
.end method
