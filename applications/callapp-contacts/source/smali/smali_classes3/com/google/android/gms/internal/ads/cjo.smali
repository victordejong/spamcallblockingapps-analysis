.class final synthetic Lcom/google/android/gms/internal/ads/cjo;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/cjm;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/cjm;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/cjo;->a:Lcom/google/android/gms/internal/ads/cjm;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cjo;->a:Lcom/google/android/gms/internal/ads/cjm;

    .line 1133
    invoke-static {}, Lcom/google/android/gms/internal/ads/ekb;->a()Lcom/google/android/gms/internal/ads/yq;

    invoke-static {}, Lcom/google/android/gms/internal/ads/yq;->b()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1134
    sget v1, Lcom/google/android/gms/internal/ads/aks;->e:I

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/cjm;->a(I)V

    return-void

    .line 1135
    :cond_0
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/cjm;->a:Lcom/google/android/gms/internal/ads/afq;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/afq;->b()Ljava/util/concurrent/Executor;

    move-result-object v1

    new-instance v2, Lcom/google/android/gms/internal/ads/cjp;

    invoke-direct {v2, v0}, Lcom/google/android/gms/internal/ads/cjp;-><init>(Lcom/google/android/gms/internal/ads/cjm;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
