.class public final Lcom/google/android/gms/internal/ads/gl;
.super Lcom/google/android/gms/ads/u/a;
.source "com.google.android.gms:play-services-ads-lite@@20.5.0"


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/kl;

.field private final b:Ljava/lang/String;

.field private final c:Lcom/google/android/gms/internal/ads/hl;

.field d:Lcom/google/android/gms/ads/i;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/kl;Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/ads/u/a;-><init>()V

    new-instance v0, Lcom/google/android/gms/internal/ads/hl;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/hl;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/gl;->c:Lcom/google/android/gms/internal/ads/hl;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/gl;->a:Lcom/google/android/gms/internal/ads/kl;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/gl;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final b(Lcom/google/android/gms/ads/i;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/gl;->d:Lcom/google/android/gms/ads/i;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/gl;->c:Lcom/google/android/gms/internal/ads/hl;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/hl;->E6(Lcom/google/android/gms/ads/i;)V

    return-void
.end method

.method public final c(Landroid/app/Activity;)V
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/gl;->a:Lcom/google/android/gms/internal/ads/kl;

    invoke-static {p1}, Lcom/google/android/gms/dynamic/b;->m2(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/a;

    move-result-object p1

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/gl;->c:Lcom/google/android/gms/internal/ads/hl;

    invoke-interface {v0, p1, v1}, Lcom/google/android/gms/internal/ads/kl;->j1(Lcom/google/android/gms/dynamic/a;Lcom/google/android/gms/internal/ads/sl;)V
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
