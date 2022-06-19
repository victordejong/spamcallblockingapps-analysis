.class public final Lcom/google/android/gms/internal/ads/hp1;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/ro1;


# instance fields
.field private final a:J

.field private final b:Ljava/lang/String;

.field private final c:Lcom/google/android/gms/internal/ads/wo1;

.field private final d:Lcom/google/android/gms/internal/ads/vi2;


# direct methods
.method constructor <init>(JLandroid/content/Context;Lcom/google/android/gms/internal/ads/wo1;Lcom/google/android/gms/internal/ads/sp0;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/hp1;->a:J

    iput-object p6, p0, Lcom/google/android/gms/internal/ads/hp1;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/hp1;->c:Lcom/google/android/gms/internal/ads/wo1;

    invoke-virtual {p5}, Lcom/google/android/gms/internal/ads/sp0;->w()Lcom/google/android/gms/internal/ads/xi2;

    move-result-object p1

    invoke-interface {p1, p3}, Lcom/google/android/gms/internal/ads/xi2;->a(Landroid/content/Context;)Lcom/google/android/gms/internal/ads/xi2;

    .line 2
    invoke-interface {p1, p6}, Lcom/google/android/gms/internal/ads/xi2;->r(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/xi2;

    .line 3
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/xi2;->zza()Lcom/google/android/gms/internal/ads/yi2;

    move-result-object p1

    .line 4
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/yi2;->b()Lcom/google/android/gms/internal/ads/vi2;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/hp1;->d:Lcom/google/android/gms/internal/ads/vi2;

    return-void
.end method

.method static synthetic d(Lcom/google/android/gms/internal/ads/hp1;)J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/hp1;->a:J

    return-wide v0
.end method

.method static synthetic e(Lcom/google/android/gms/internal/ads/hp1;)Lcom/google/android/gms/internal/ads/wo1;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/hp1;->c:Lcom/google/android/gms/internal/ads/wo1;

    return-object p0
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/internal/ads/zzbdg;)V
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/hp1;->d:Lcom/google/android/gms/internal/ads/vi2;

    new-instance v1, Lcom/google/android/gms/internal/ads/fp1;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/fp1;-><init>(Lcom/google/android/gms/internal/ads/hp1;)V

    invoke-virtual {v0, p1, v1}, Lcom/google/android/gms/internal/ads/vi2;->L3(Lcom/google/android/gms/internal/ads/zzbdg;Lcom/google/android/gms/internal/ads/me0;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    const-string v0, "#007 Could not call remote method."

    .line 2
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/ei0;->i(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final b()V
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/hp1;->d:Lcom/google/android/gms/internal/ads/vi2;

    new-instance v1, Lcom/google/android/gms/internal/ads/gp1;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/gp1;-><init>(Lcom/google/android/gms/internal/ads/hp1;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/vi2;->f5(Lcom/google/android/gms/internal/ads/ie0;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/hp1;->d:Lcom/google/android/gms/internal/ads/vi2;

    const/4 v1, 0x0

    .line 2
    invoke-static {v1}, Lcom/google/android/gms/dynamic/b;->m2(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/a;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/vi2;->U(Lcom/google/android/gms/dynamic/a;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    const-string v1, "#007 Could not call remote method."

    .line 3
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/ei0;->i(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final c()V
    .locals 0

    return-void
.end method
