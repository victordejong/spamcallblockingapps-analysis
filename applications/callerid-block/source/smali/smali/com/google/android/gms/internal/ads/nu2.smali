.class public final Lcom/google/android/gms/internal/ads/nu2;
.super Lcom/google/android/gms/ads/t/a;
.source ""


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/su2;

.field private final b:Lcom/google/android/gms/internal/ads/ou2;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/su2;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/ads/t/a;-><init>()V

    new-instance p2, Lcom/google/android/gms/internal/ads/ou2;

    invoke-direct {p2}, Lcom/google/android/gms/internal/ads/ou2;-><init>()V

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/nu2;->b:Lcom/google/android/gms/internal/ads/ou2;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/nu2;->a:Lcom/google/android/gms/internal/ads/su2;

    return-void
.end method


# virtual methods
.method public final b(Lcom/google/android/gms/ads/i;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/nu2;->b:Lcom/google/android/gms/internal/ads/ou2;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/ou2;->z6(Lcom/google/android/gms/ads/i;)V

    return-void
.end method

.method public final c(Landroid/app/Activity;)V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/nu2;->a:Lcom/google/android/gms/internal/ads/su2;

    invoke-static {p1}, Lcom/google/android/gms/dynamic/b;->g3(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/a;

    move-result-object p1

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/nu2;->b:Lcom/google/android/gms/internal/ads/ou2;

    invoke-interface {v0, p1, v1}, Lcom/google/android/gms/internal/ads/su2;->T1(Lcom/google/android/gms/dynamic/a;Lcom/google/android/gms/internal/ads/zu2;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    const-string v0, "#007 Could not call remote method."

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/po;->i(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method
