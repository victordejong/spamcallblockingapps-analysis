.class public final Lcom/google/android/gms/internal/ads/bwz;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.1.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/cah;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<S::",
        "Lcom/google/android/gms/internal/ads/cae",
        "<*>;>",
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/cah",
        "<TS;>;"
    }
.end annotation


# instance fields
.field private final a:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Lcom/google/android/gms/internal/ads/bwy",
            "<TS;>;>;"
        }
    .end annotation
.end field

.field private final b:Lcom/google/android/gms/common/util/e;

.field private final c:Lcom/google/android/gms/internal/ads/cah;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/cah",
            "<TS;>;"
        }
    .end annotation
.end field

.field private final d:J


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/cah;JLcom/google/android/gms/common/util/e;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/cah",
            "<TS;>;J",
            "Lcom/google/android/gms/common/util/e;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/bwz;->a:Ljava/util/concurrent/atomic/AtomicReference;

    .line 3
    iput-object p4, p0, Lcom/google/android/gms/internal/ads/bwz;->b:Lcom/google/android/gms/common/util/e;

    .line 4
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/bwz;->c:Lcom/google/android/gms/internal/ads/cah;

    .line 5
    iput-wide p2, p0, Lcom/google/android/gms/internal/ads/bwz;->d:J

    .line 6
    return-void
.end method


# virtual methods
.method public final a()Lcom/google/android/gms/internal/ads/crt;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/internal/ads/crt",
            "<TS;>;"
        }
    .end annotation

    .prologue
    .line 7
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bwz;->a:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/bwy;

    .line 8
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/bwy;->a()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 9
    :cond_0
    new-instance v0, Lcom/google/android/gms/internal/ads/bwy;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/bwz;->c:Lcom/google/android/gms/internal/ads/cah;

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/cah;->a()Lcom/google/android/gms/internal/ads/crt;

    move-result-object v1

    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/bwz;->d:J

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/bwz;->b:Lcom/google/android/gms/common/util/e;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/android/gms/internal/ads/bwy;-><init>(Lcom/google/android/gms/internal/ads/crt;JLcom/google/android/gms/common/util/e;)V

    .line 10
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/bwz;->a:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 11
    :cond_1
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/bwy;->a:Lcom/google/android/gms/internal/ads/crt;

    return-object v0
.end method
