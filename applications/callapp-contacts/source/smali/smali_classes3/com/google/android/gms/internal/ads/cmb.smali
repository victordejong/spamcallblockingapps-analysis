.class final Lcom/google/android/gms/internal/ads/cmb;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R::",
        "Lcom/google/android/gms/internal/ads/aqx<",
        "+",
        "Lcom/google/android/gms/internal/ads/anp;",
        ">;>",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field final a:Lcom/google/android/gms/internal/ads/cqz;

.field final b:Lcom/google/android/gms/internal/ads/cmk;

.field final c:Lcom/google/android/gms/internal/ads/cmj;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/cmj<",
            "TR;>;"
        }
    .end annotation
.end field

.field final d:Ljava/util/concurrent/Executor;

.field e:Lcom/google/android/gms/internal/ads/cmf;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/cqz;Lcom/google/android/gms/internal/ads/cmk;Lcom/google/android/gms/internal/ads/cmj;Ljava/util/concurrent/Executor;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/cqz;",
            "Lcom/google/android/gms/internal/ads/cmk;",
            "Lcom/google/android/gms/internal/ads/cmj<",
            "TR;>;",
            "Ljava/util/concurrent/Executor;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/cmb;->a:Lcom/google/android/gms/internal/ads/cqz;

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/cmb;->b:Lcom/google/android/gms/internal/ads/cmk;

    .line 4
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/cmb;->c:Lcom/google/android/gms/internal/ads/cmj;

    .line 5
    iput-object p4, p0, Lcom/google/android/gms/internal/ads/cmb;->d:Ljava/util/concurrent/Executor;

    return-void
.end method


# virtual methods
.method final a()Lcom/google/android/gms/internal/ads/cri;
    .locals 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 24
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cmb;->c:Lcom/google/android/gms/internal/ads/cmj;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/cmb;->b:Lcom/google/android/gms/internal/ads/cmk;

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/cmj;->a(Lcom/google/android/gms/internal/ads/cmk;)Lcom/google/android/gms/internal/ads/aqw;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/aqw;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/aqx;

    .line 25
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/aqx;->a()Lcom/google/android/gms/internal/ads/cpo;

    move-result-object v0

    .line 26
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/cpo;->d:Lcom/google/android/gms/internal/ads/zzvq;

    .line 27
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/cpo;->f:Ljava/lang/String;

    .line 28
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/cpo;->j:Lcom/google/android/gms/internal/ads/zzwc;

    .line 29
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/cmb;->a:Lcom/google/android/gms/internal/ads/cqz;

    invoke-interface {v3, v1, v2, v0}, Lcom/google/android/gms/internal/ads/cqz;->a(Lcom/google/android/gms/internal/ads/zzvq;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzwc;)Lcom/google/android/gms/internal/ads/cri;

    move-result-object v0

    return-object v0
.end method
