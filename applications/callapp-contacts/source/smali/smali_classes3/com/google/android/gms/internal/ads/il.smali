.class final Lcom/google/android/gms/internal/ads/il;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/common/internal/d$a;


# instance fields
.field private final synthetic a:Lcom/google/android/gms/internal/ads/zp;

.field private final synthetic b:Lcom/google/android/gms/internal/ads/ih;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/ih;Lcom/google/android/gms/internal/ads/zp;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/il;->b:Lcom/google/android/gms/internal/ads/ih;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/il;->a:Lcom/google/android/gms/internal/ads/zp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/il;->a:Lcom/google/android/gms/internal/ads/zp;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/il;->b:Lcom/google/android/gms/internal/ads/ih;

    .line 1062
    iget-object v1, v1, Lcom/google/android/gms/internal/ads/ih;->a:Lcom/google/android/gms/internal/ads/ia;

    .line 2
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/ia;->a()Lcom/google/android/gms/internal/ads/if;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zp;->set(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 5
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/il;->a:Lcom/google/android/gms/internal/ads/zp;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zp;->setException(Ljava/lang/Throwable;)Z

    return-void
.end method

.method public final a(I)V
    .locals 4

    .line 7
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/il;->a:Lcom/google/android/gms/internal/ads/zp;

    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0x22

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "onConnectionSuspended: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zp;->setException(Ljava/lang/Throwable;)Z

    return-void
.end method
