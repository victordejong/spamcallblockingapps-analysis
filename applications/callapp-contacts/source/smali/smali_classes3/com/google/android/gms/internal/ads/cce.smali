.class public final Lcom/google/android/gms/internal/ads/cce;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/chb;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/chb<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/dbt;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/dbt<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Ljava/util/concurrent/Executor;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/dbt;Ljava/util/concurrent/Executor;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/dbt<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/concurrent/Executor;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/cce;->a:Lcom/google/android/gms/internal/ads/dbt;

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/cce;->b:Ljava/util/concurrent/Executor;

    return-void
.end method


# virtual methods
.method public final a()Lcom/google/android/gms/internal/ads/dbt;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/internal/ads/dbt<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 5
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cce;->a:Lcom/google/android/gms/internal/ads/dbt;

    sget-object v1, Lcom/google/android/gms/internal/ads/ccd;->a:Lcom/google/android/gms/internal/ads/daq;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/cce;->b:Ljava/util/concurrent/Executor;

    .line 1019
    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/ads/daj;->a(Lcom/google/android/gms/internal/ads/dbt;Lcom/google/android/gms/internal/ads/daq;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/dbt;

    move-result-object v0

    return-object v0
.end method
