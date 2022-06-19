.class final synthetic Lcom/google/android/gms/internal/ads/bud;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/bua;

.field private final b:Lcom/google/android/gms/internal/ads/cpk;

.field private final c:Lcom/google/android/gms/internal/ads/cov;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/bua;Lcom/google/android/gms/internal/ads/cpk;Lcom/google/android/gms/internal/ads/cov;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/bud;->a:Lcom/google/android/gms/internal/ads/bua;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/bud;->b:Lcom/google/android/gms/internal/ads/cpk;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/bud;->c:Lcom/google/android/gms/internal/ads/cov;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 8

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bud;->a:Lcom/google/android/gms/internal/ads/bua;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/bud;->b:Lcom/google/android/gms/internal/ads/cpk;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/bud;->c:Lcom/google/android/gms/internal/ads/cov;

    .line 1012
    iget-object v3, v0, Lcom/google/android/gms/internal/ads/bua;->a:Lcom/google/android/gms/internal/ads/amn;

    new-instance v4, Lcom/google/android/gms/internal/ads/aof;

    const/4 v5, 0x0

    invoke-direct {v4, v1, v2, v5}, Lcom/google/android/gms/internal/ads/aof;-><init>(Lcom/google/android/gms/internal/ads/cpk;Lcom/google/android/gms/internal/ads/cov;Ljava/lang/String;)V

    new-instance v5, Lcom/google/android/gms/internal/ads/anb;

    iget-object v6, v1, Lcom/google/android/gms/internal/ads/cpk;->a:Lcom/google/android/gms/internal/ads/cpf;

    iget-object v6, v6, Lcom/google/android/gms/internal/ads/cpf;->a:Lcom/google/android/gms/internal/ads/cpo;

    .line 1013
    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/cpo;->a()Lcom/google/android/gms/internal/ads/fn;

    move-result-object v6

    new-instance v7, Lcom/google/android/gms/internal/ads/buc;

    invoke-direct {v7, v0, v1, v2}, Lcom/google/android/gms/internal/ads/buc;-><init>(Lcom/google/android/gms/internal/ads/bua;Lcom/google/android/gms/internal/ads/cpk;Lcom/google/android/gms/internal/ads/cov;)V

    invoke-direct {v5, v6, v7}, Lcom/google/android/gms/internal/ads/anb;-><init>(Lcom/google/android/gms/internal/ads/fn;Ljava/lang/Runnable;)V

    .line 1014
    invoke-virtual {v3, v4, v5}, Lcom/google/android/gms/internal/ads/amn;->a(Lcom/google/android/gms/internal/ads/aof;Lcom/google/android/gms/internal/ads/anb;)Lcom/google/android/gms/internal/ads/anc;

    move-result-object v0

    .line 1015
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/anc;->a()Lcom/google/android/gms/internal/ads/alq;

    move-result-object v0

    return-object v0
.end method
