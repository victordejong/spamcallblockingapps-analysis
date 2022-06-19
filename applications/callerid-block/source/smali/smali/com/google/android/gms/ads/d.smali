.class public Lcom/google/android/gms/ads/d;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/ads/d$a;
    }
.end annotation


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/sz2;

.field private final b:Landroid/content/Context;

.field private final c:Lcom/google/android/gms/internal/ads/p;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/p;Lcom/google/android/gms/internal/ads/sz2;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/ads/d;->b:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/ads/d;->c:Lcom/google/android/gms/internal/ads/p;

    iput-object p3, p0, Lcom/google/android/gms/ads/d;->a:Lcom/google/android/gms/internal/ads/sz2;

    return-void
.end method

.method private final b(Lcom/google/android/gms/internal/ads/s1;)V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/ads/d;->c:Lcom/google/android/gms/internal/ads/p;

    iget-object v1, p0, Lcom/google/android/gms/ads/d;->a:Lcom/google/android/gms/internal/ads/sz2;

    iget-object v2, p0, Lcom/google/android/gms/ads/d;->b:Landroid/content/Context;

    invoke-virtual {v1, v2, p1}, Lcom/google/android/gms/internal/ads/sz2;->a(Landroid/content/Context;Lcom/google/android/gms/internal/ads/s1;)Lcom/google/android/gms/internal/ads/zzys;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/p;->q0(Lcom/google/android/gms/internal/ads/zzys;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    const-string v0, "Failed to load ad."

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/po;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/gms/ads/e;)V
    .locals 0
    .param p1    # Lcom/google/android/gms/ads/e;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param

    invoke-virtual {p1}, Lcom/google/android/gms/ads/e;->a()Lcom/google/android/gms/internal/ads/s1;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/android/gms/ads/d;->b(Lcom/google/android/gms/internal/ads/s1;)V

    return-void
.end method
