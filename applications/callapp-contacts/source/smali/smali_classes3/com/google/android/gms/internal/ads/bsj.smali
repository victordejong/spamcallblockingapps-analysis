.class public final Lcom/google/android/gms/internal/ads/bsj;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/bsk;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<DelegateT:",
        "Ljava/lang/Object;",
        "AdapterT:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/bsk<",
        "TAdapterT;>;"
    }
.end annotation


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/bsk;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/bsk<",
            "TDelegateT;>;"
        }
    .end annotation
.end field

.field private final b:Lcom/google/android/gms/internal/ads/cxu;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/cxu<",
            "TDelegateT;TAdapterT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/bsk;Lcom/google/android/gms/internal/ads/cxu;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/bsk<",
            "TDelegateT;>;",
            "Lcom/google/android/gms/internal/ads/cxu<",
            "TDelegateT;TAdapterT;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/bsj;->a:Lcom/google/android/gms/internal/ads/bsk;

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/bsj;->b:Lcom/google/android/gms/internal/ads/cxu;

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/internal/ads/cpk;Lcom/google/android/gms/internal/ads/cov;)Z
    .locals 1

    .line 5
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bsj;->a:Lcom/google/android/gms/internal/ads/bsk;

    invoke-interface {v0, p1, p2}, Lcom/google/android/gms/internal/ads/bsk;->a(Lcom/google/android/gms/internal/ads/cpk;Lcom/google/android/gms/internal/ads/cov;)Z

    move-result p1

    return p1
.end method

.method public final b(Lcom/google/android/gms/internal/ads/cpk;Lcom/google/android/gms/internal/ads/cov;)Lcom/google/android/gms/internal/ads/dbt;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/cpk;",
            "Lcom/google/android/gms/internal/ads/cov;",
            ")",
            "Lcom/google/android/gms/internal/ads/dbt<",
            "TAdapterT;>;"
        }
    .end annotation

    .line 6
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bsj;->a:Lcom/google/android/gms/internal/ads/bsk;

    .line 7
    invoke-interface {v0, p1, p2}, Lcom/google/android/gms/internal/ads/bsk;->b(Lcom/google/android/gms/internal/ads/cpk;Lcom/google/android/gms/internal/ads/cov;)Lcom/google/android/gms/internal/ads/dbt;

    move-result-object p1

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/bsj;->b:Lcom/google/android/gms/internal/ads/cxu;

    sget-object v0, Lcom/google/android/gms/internal/ads/zd;->a:Lcom/google/android/gms/internal/ads/dbs;

    .line 1020
    invoke-static {p1, p2, v0}, Lcom/google/android/gms/internal/ads/daj;->a(Lcom/google/android/gms/internal/ads/dbt;Lcom/google/android/gms/internal/ads/cxu;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/dbt;

    move-result-object p1

    return-object p1
.end method
