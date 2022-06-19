.class final Lcom/google/android/gms/internal/ads/bxb;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/ayv;


# instance fields
.field final synthetic a:Lcom/google/android/gms/internal/ads/bwz;

.field private final synthetic b:Lcom/google/android/gms/internal/ads/cpk;

.field private final synthetic c:Lcom/google/android/gms/internal/ads/cov;

.field private final synthetic d:Lcom/google/android/gms/internal/ads/bsn;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/bwz;Lcom/google/android/gms/internal/ads/cpk;Lcom/google/android/gms/internal/ads/cov;Lcom/google/android/gms/internal/ads/bsn;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/bxb;->a:Lcom/google/android/gms/internal/ads/bwz;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/bxb;->b:Lcom/google/android/gms/internal/ads/cpk;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/bxb;->c:Lcom/google/android/gms/internal/ads/cov;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/bxb;->d:Lcom/google/android/gms/internal/ads/bsn;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 5

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bxb;->a:Lcom/google/android/gms/internal/ads/bwz;

    .line 1035
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/bwz;->a:Ljava/util/concurrent/Executor;

    .line 2
    new-instance v1, Lcom/google/android/gms/internal/ads/bxe;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/bxb;->b:Lcom/google/android/gms/internal/ads/cpk;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/bxb;->c:Lcom/google/android/gms/internal/ads/cov;

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/bxb;->d:Lcom/google/android/gms/internal/ads/bsn;

    invoke-direct {v1, p0, v2, v3, v4}, Lcom/google/android/gms/internal/ads/bxe;-><init>(Lcom/google/android/gms/internal/ads/bxb;Lcom/google/android/gms/internal/ads/cpk;Lcom/google/android/gms/internal/ads/cov;Lcom/google/android/gms/internal/ads/bsn;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final b()V
    .locals 3

    .line 4
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bxb;->d:Lcom/google/android/gms/internal/ads/bsn;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/bsn;->a:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const-string v2, "Fail to initialize adapter "

    if-eqz v1, :cond_0

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_0
    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/zzd;->zzez(Ljava/lang/String;)V

    return-void
.end method
