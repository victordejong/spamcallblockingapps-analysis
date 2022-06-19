.class public final Lcom/google/android/gms/internal/ads/cch;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/chb;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/chb<",
        "Lcom/google/android/gms/internal/ads/cci;",
        ">;"
    }
.end annotation


# instance fields
.field final a:Lcom/google/android/gms/internal/ads/cpo;

.field final b:Landroid/content/Context;

.field final c:Lcom/google/android/gms/internal/ads/yd;

.field private final d:Lcom/google/android/gms/internal/ads/chb;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/chb<",
            "Lcom/google/android/gms/internal/ads/che;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/cds;Lcom/google/android/gms/internal/ads/cpo;Landroid/content/Context;Lcom/google/android/gms/internal/ads/yd;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/cds<",
            "Lcom/google/android/gms/internal/ads/che;",
            ">;",
            "Lcom/google/android/gms/internal/ads/cpo;",
            "Landroid/content/Context;",
            "Lcom/google/android/gms/internal/ads/yd;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/cch;->d:Lcom/google/android/gms/internal/ads/chb;

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/cch;->a:Lcom/google/android/gms/internal/ads/cpo;

    .line 4
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/cch;->b:Landroid/content/Context;

    .line 5
    iput-object p4, p0, Lcom/google/android/gms/internal/ads/cch;->c:Lcom/google/android/gms/internal/ads/yd;

    return-void
.end method


# virtual methods
.method public final a()Lcom/google/android/gms/internal/ads/dbt;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/internal/ads/dbt<",
            "Lcom/google/android/gms/internal/ads/cci;",
            ">;"
        }
    .end annotation

    .line 7
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cch;->d:Lcom/google/android/gms/internal/ads/chb;

    .line 8
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/chb;->a()Lcom/google/android/gms/internal/ads/dbt;

    move-result-object v0

    .line 9
    new-instance v1, Lcom/google/android/gms/internal/ads/cck;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/cck;-><init>(Lcom/google/android/gms/internal/ads/cch;)V

    .line 10
    sget-object v2, Lcom/google/android/gms/internal/ads/zd;->f:Lcom/google/android/gms/internal/ads/dbs;

    .line 1020
    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/ads/daj;->a(Lcom/google/android/gms/internal/ads/dbt;Lcom/google/android/gms/internal/ads/cxu;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/dbt;

    move-result-object v0

    return-object v0
.end method
