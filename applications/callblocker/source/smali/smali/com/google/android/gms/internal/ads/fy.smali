.class final Lcom/google/android/gms/internal/ads/fy;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.1.0"

# interfaces
.implements Lcom/google/android/gms/common/internal/c$a;


# instance fields
.field private final synthetic a:Lcom/google/android/gms/internal/ads/yo;

.field private final synthetic b:Lcom/google/android/gms/internal/ads/fu;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/fu;Lcom/google/android/gms/internal/ads/yo;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/fy;->b:Lcom/google/android/gms/internal/ads/fu;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/fy;->a:Lcom/google/android/gms/internal/ads/yo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 4

    .prologue
    .line 7
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/fy;->a:Lcom/google/android/gms/internal/ads/yo;

    new-instance v1, Ljava/lang/RuntimeException;

    const/16 v2, 0x22

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string/jumbo v2, "onConnectionSuspended: "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/yo;->a(Ljava/lang/Throwable;)Z

    .line 8
    return-void
.end method

.method public final a(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/fy;->a:Lcom/google/android/gms/internal/ads/yo;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/fy;->b:Lcom/google/android/gms/internal/ads/fu;

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/fu;->b(Lcom/google/android/gms/internal/ads/fu;)Lcom/google/android/gms/internal/ads/fn;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/fn;->c()Lcom/google/android/gms/internal/ads/fs;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/yo;->b(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_0} :catch_0

    .line 6
    :goto_0
    return-void

    .line 4
    :catch_0
    move-exception v0

    .line 5
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/fy;->a:Lcom/google/android/gms/internal/ads/yo;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/yo;->a(Ljava/lang/Throwable;)Z

    goto :goto_0
.end method
