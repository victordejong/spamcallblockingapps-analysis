.class public final Lcom/google/android/gms/internal/ads/ca1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/gms/internal/ads/id1;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<S::",
        "Lcom/google/android/gms/internal/ads/hd1;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/id1<",
        "TS;>;"
    }
.end annotation


# instance fields
.field private final a:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lcom/google/android/gms/internal/ads/ba1<",
            "TS;>;>;"
        }
    .end annotation
.end field

.field private final b:Lcom/google/android/gms/common/util/f;

.field private final c:Lcom/google/android/gms/internal/ads/id1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/id1<",
            "TS;>;"
        }
    .end annotation
.end field

.field private final d:J


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/id1;JLcom/google/android/gms/common/util/f;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/id1<",
            "TS;>;J",
            "Lcom/google/android/gms/common/util/f;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/ca1;->a:Ljava/util/concurrent/atomic/AtomicReference;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/ca1;->b:Lcom/google/android/gms/common/util/f;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/ca1;->c:Lcom/google/android/gms/internal/ads/id1;

    iput-wide p2, p0, Lcom/google/android/gms/internal/ads/ca1;->d:J

    return-void
.end method


# virtual methods
.method public final zza()Lcom/google/android/gms/internal/ads/rz1;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/internal/ads/rz1<",
            "TS;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ca1;->a:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/ba1;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/ba1;->a()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    new-instance v0, Lcom/google/android/gms/internal/ads/ba1;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/ca1;->c:Lcom/google/android/gms/internal/ads/id1;

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/id1;->zza()Lcom/google/android/gms/internal/ads/rz1;

    move-result-object v1

    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/ca1;->d:J

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/ca1;->b:Lcom/google/android/gms/common/util/f;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/android/gms/internal/ads/ba1;-><init>(Lcom/google/android/gms/internal/ads/rz1;JLcom/google/android/gms/common/util/f;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/ca1;->a:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    :cond_1
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/ba1;->a:Lcom/google/android/gms/internal/ads/rz1;

    return-object v0
.end method
