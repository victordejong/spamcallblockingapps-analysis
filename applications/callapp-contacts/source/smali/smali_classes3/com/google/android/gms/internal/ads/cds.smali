.class public final Lcom/google/android/gms/internal/ads/cds;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/chb;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<S::",
        "Lcom/google/android/gms/internal/ads/cgy<",
        "*>;>",
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/chb<",
        "TS;>;"
    }
.end annotation


# instance fields
.field private final a:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lcom/google/android/gms/internal/ads/cdw<",
            "TS;>;>;"
        }
    .end annotation
.end field

.field private final b:Lcom/google/android/gms/common/util/f;

.field private final c:Lcom/google/android/gms/internal/ads/chb;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/chb<",
            "TS;>;"
        }
    .end annotation
.end field

.field private final d:J


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/chb;JLcom/google/android/gms/common/util/f;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/chb<",
            "TS;>;J",
            "Lcom/google/android/gms/common/util/f;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/cds;->a:Ljava/util/concurrent/atomic/AtomicReference;

    .line 3
    iput-object p4, p0, Lcom/google/android/gms/internal/ads/cds;->b:Lcom/google/android/gms/common/util/f;

    .line 4
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/cds;->c:Lcom/google/android/gms/internal/ads/chb;

    .line 5
    iput-wide p2, p0, Lcom/google/android/gms/internal/ads/cds;->d:J

    return-void
.end method


# virtual methods
.method public final a()Lcom/google/android/gms/internal/ads/dbt;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/internal/ads/dbt<",
            "TS;>;"
        }
    .end annotation

    .line 7
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cds;->a:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/cdw;

    if-eqz v0, :cond_1

    .line 1006
    iget-wide v1, v0, Lcom/google/android/gms/internal/ads/cdw;->b:J

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/cdw;->c:Lcom/google/android/gms/common/util/f;

    invoke-interface {v3}, Lcom/google/android/gms/common/util/f;->b()J

    move-result-wide v3

    cmp-long v5, v1, v3

    if-gez v5, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_2

    .line 9
    :cond_1
    new-instance v0, Lcom/google/android/gms/internal/ads/cdw;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/cds;->c:Lcom/google/android/gms/internal/ads/chb;

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/chb;->a()Lcom/google/android/gms/internal/ads/dbt;

    move-result-object v1

    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/cds;->d:J

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/cds;->b:Lcom/google/android/gms/common/util/f;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/android/gms/internal/ads/cdw;-><init>(Lcom/google/android/gms/internal/ads/dbt;JLcom/google/android/gms/common/util/f;)V

    .line 10
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/cds;->a:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 11
    :cond_2
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/cdw;->a:Lcom/google/android/gms/internal/ads/dbt;

    return-object v0
.end method
