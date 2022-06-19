.class public final Lcom/google/android/gms/internal/ads/bnv;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final a:Ljava/util/concurrent/ScheduledExecutorService;

.field final b:Lcom/google/android/gms/internal/ads/dbs;

.field final c:Lcom/google/android/gms/internal/ads/bom;

.field final d:Lcom/google/android/gms/internal/ads/dsb;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/dsb<",
            "Lcom/google/android/gms/internal/ads/bpk;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/concurrent/ScheduledExecutorService;Lcom/google/android/gms/internal/ads/dbs;Lcom/google/android/gms/internal/ads/bom;Lcom/google/android/gms/internal/ads/dsb;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/ScheduledExecutorService;",
            "Lcom/google/android/gms/internal/ads/dbs;",
            "Lcom/google/android/gms/internal/ads/bom;",
            "Lcom/google/android/gms/internal/ads/dsb<",
            "Lcom/google/android/gms/internal/ads/bpk;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/bnv;->a:Ljava/util/concurrent/ScheduledExecutorService;

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/bnv;->b:Lcom/google/android/gms/internal/ads/dbs;

    .line 4
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/bnv;->c:Lcom/google/android/gms/internal/ads/bom;

    .line 5
    iput-object p4, p0, Lcom/google/android/gms/internal/ads/bnv;->d:Lcom/google/android/gms/internal/ads/dsb;

    return-void
.end method
