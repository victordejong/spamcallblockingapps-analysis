.class public final Lcom/google/android/gms/internal/ads/dwn;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads-lite@@19.1.0"


# instance fields
.field a:Lcom/google/android/gms/internal/ads/dko;

.field b:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/edi;->a(Landroid/content/Context;)V

    .line 15
    sget-object v0, Lcom/google/android/gms/internal/ads/edi;->ch:Lcom/google/android/gms/internal/ads/ect;

    .line 16
    invoke-static {}, Lcom/google/android/gms/internal/ads/dyx;->e()Lcom/google/android/gms/internal/ads/ede;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/ede;->a(Lcom/google/android/gms/internal/ads/ect;)Ljava/lang/Object;

    move-result-object v0

    .line 17
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 18
    :try_start_0
    const-string/jumbo v0, "com.google.android.gms.ads.clearcut.DynamiteClearcutLogger"

    sget-object v1, Lcom/google/android/gms/internal/ads/dwq;->a:Lcom/google/android/gms/internal/ads/yc;

    .line 19
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/ads/ya;->a(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/internal/ads/yc;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/dko;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/dwn;->a:Lcom/google/android/gms/internal/ads/dko;

    .line 20
    invoke-static {p1}, Lcom/google/android/gms/dynamic/b;->a(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/a;

    .line 21
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dwn;->a:Lcom/google/android/gms/internal/ads/dko;

    invoke-static {p1}, Lcom/google/android/gms/dynamic/b;->a(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/a;

    move-result-object v1

    const-string/jumbo v2, "GMA_SDK"

    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/internal/ads/dko;->a(Lcom/google/android/gms/dynamic/a;Ljava/lang/String;)V

    .line 22
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/dwn;->b:Z
    :try_end_0
    .catch Lcom/google/android/gms/internal/ads/zzazx; {:try_start_0 .. :try_end_0} :catch_2
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 26
    :cond_0
    :goto_0
    return-void

    .line 25
    :catch_0
    move-exception v0

    :goto_1
    const-string/jumbo v0, "Cannot dynamite load clearcut"

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/yb;->b(Ljava/lang/String;)V

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_1

    :catch_2
    move-exception v0

    goto :goto_1
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/edi;->a(Landroid/content/Context;)V

    .line 4
    :try_start_0
    const-string/jumbo v0, "com.google.android.gms.ads.clearcut.DynamiteClearcutLogger"

    sget-object v1, Lcom/google/android/gms/internal/ads/dwr;->a:Lcom/google/android/gms/internal/ads/yc;

    .line 5
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/ads/ya;->a(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/internal/ads/yc;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/dko;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/dwn;->a:Lcom/google/android/gms/internal/ads/dko;

    .line 6
    invoke-static {p1}, Lcom/google/android/gms/dynamic/b;->a(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/a;

    .line 7
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dwn;->a:Lcom/google/android/gms/internal/ads/dko;

    invoke-static {p1}, Lcom/google/android/gms/dynamic/b;->a(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/a;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, p2, v2}, Lcom/google/android/gms/internal/ads/dko;->a(Lcom/google/android/gms/dynamic/a;Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/dwn;->b:Z
    :try_end_0
    .catch Lcom/google/android/gms/internal/ads/zzazx; {:try_start_0 .. :try_end_0} :catch_2
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 12
    :goto_0
    return-void

    .line 11
    :catch_0
    move-exception v0

    :goto_1
    const-string/jumbo v0, "Cannot dynamite load clearcut"

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/yb;->b(Ljava/lang/String;)V

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_1

    :catch_2
    move-exception v0

    goto :goto_1
.end method


# virtual methods
.method public final a([B)Lcom/google/android/gms/internal/ads/dws;
    .locals 2

    .prologue
    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/dws;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/google/android/gms/internal/ads/dws;-><init>(Lcom/google/android/gms/internal/ads/dwn;[BLcom/google/android/gms/internal/ads/dwt;)V

    return-object v0
.end method
