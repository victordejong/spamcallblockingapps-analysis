.class public final Lcom/google/android/gms/internal/ads/ehq;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field a:Lcom/google/android/gms/internal/ads/dvg;

.field b:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/aq;->a(Landroid/content/Context;)V

    .line 15
    sget-object v0, Lcom/google/android/gms/internal/ads/aq;->cN:Lcom/google/android/gms/internal/ads/af;

    .line 16
    invoke-static {}, Lcom/google/android/gms/internal/ads/ekb;->e()Lcom/google/android/gms/internal/ads/am;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/am;->a(Lcom/google/android/gms/internal/ads/af;)Ljava/lang/Object;

    move-result-object v0

    .line 17
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    :try_start_0
    const-string v0, "com.google.android.gms.ads.clearcut.DynamiteClearcutLogger"

    .line 18
    sget-object v1, Lcom/google/android/gms/internal/ads/ehs;->a:Lcom/google/android/gms/internal/ads/zb;

    .line 19
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/ads/yz;->a(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zb;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/dvg;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/ehq;->a:Lcom/google/android/gms/internal/ads/dvg;

    .line 20
    invoke-static {p1}, Lcom/google/android/gms/dynamic/d;->a(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/b;

    .line 21
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ehq;->a:Lcom/google/android/gms/internal/ads/dvg;

    invoke-static {p1}, Lcom/google/android/gms/dynamic/d;->a(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/b;

    move-result-object p1

    const-string v1, "GMA_SDK"

    invoke-interface {v0, p1, v1}, Lcom/google/android/gms/internal/ads/dvg;->a(Lcom/google/android/gms/dynamic/b;Ljava/lang/String;)V

    const/4 p1, 0x1

    .line 22
    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/ehq;->b:Z
    :try_end_0
    .catch Lcom/google/android/gms/internal/ads/zzbap; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    const-string p1, "Cannot dynamite load clearcut"

    .line 25
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/za;->zzdz(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/aq;->a(Landroid/content/Context;)V

    :try_start_0
    const-string p3, "com.google.android.gms.ads.clearcut.DynamiteClearcutLogger"

    .line 4
    sget-object v0, Lcom/google/android/gms/internal/ads/ehp;->a:Lcom/google/android/gms/internal/ads/zb;

    .line 5
    invoke-static {p1, p3, v0}, Lcom/google/android/gms/internal/ads/yz;->a(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zb;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/google/android/gms/internal/ads/dvg;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/ehq;->a:Lcom/google/android/gms/internal/ads/dvg;

    .line 6
    invoke-static {p1}, Lcom/google/android/gms/dynamic/d;->a(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/b;

    .line 7
    iget-object p3, p0, Lcom/google/android/gms/internal/ads/ehq;->a:Lcom/google/android/gms/internal/ads/dvg;

    invoke-static {p1}, Lcom/google/android/gms/dynamic/d;->a(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/b;

    move-result-object p1

    invoke-interface {p3, p1, p2}, Lcom/google/android/gms/internal/ads/dvg;->b(Lcom/google/android/gms/dynamic/b;Ljava/lang/String;)V

    const/4 p1, 0x1

    .line 8
    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/ehq;->b:Z
    :try_end_0
    .catch Lcom/google/android/gms/internal/ads/zzbap; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    const-string p1, "Cannot dynamite load clearcut"

    .line 11
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/za;->zzdz(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final a([B)Lcom/google/android/gms/internal/ads/ehu;
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/ehu;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/google/android/gms/internal/ads/ehu;-><init>(Lcom/google/android/gms/internal/ads/ehq;[BLcom/google/android/gms/internal/ads/ehr;)V

    return-object v0
.end method
