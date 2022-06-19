.class public final Lcom/google/android/gms/internal/ads/anc;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.1.0"

# interfaces
.implements Lcom/google/android/gms/ads/internal/overlay/o;


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/aqq;

.field private b:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/aqq;)V
    .locals 2

    .prologue
    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/anc;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 3
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/anc;->a:Lcom/google/android/gms/internal/ads/aqq;

    .line 4
    return-void
.end method


# virtual methods
.method public final c()V
    .locals 0

    .prologue
    .line 9
    return-void
.end method

.method public final d()V
    .locals 1

    .prologue
    .line 10
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/anc;->a:Lcom/google/android/gms/internal/ads/aqq;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/aqq;->c()V

    .line 11
    return-void
.end method

.method public final e()Z
    .locals 1

    .prologue
    .line 12
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/anc;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public final f_()V
    .locals 0

    .prologue
    .line 8
    return-void
.end method

.method public final h_()V
    .locals 2

    .prologue
    .line 5
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/anc;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 6
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/anc;->a:Lcom/google/android/gms/internal/ads/aqq;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/aqq;->a()V

    .line 7
    return-void
.end method
