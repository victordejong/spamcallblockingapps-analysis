.class final Lcom/google/android/gms/internal/ads/pt;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/gms/ads/internal/overlay/q;


# instance fields
.field private final b:Lcom/google/android/gms/internal/ads/jt;

.field private final c:Lcom/google/android/gms/ads/internal/overlay/q;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/jt;Lcom/google/android/gms/ads/internal/overlay/q;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/pt;->b:Lcom/google/android/gms/internal/ads/jt;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/pt;->c:Lcom/google/android/gms/ads/internal/overlay/q;

    return-void
.end method


# virtual methods
.method public final K5()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/pt;->c:Lcom/google/android/gms/ads/internal/overlay/q;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/google/android/gms/ads/internal/overlay/q;->K5()V

    :cond_0
    return-void
.end method

.method public final M1()V
    .locals 0

    return-void
.end method

.method public final T4()V
    .locals 0

    return-void
.end method

.method public final h0()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/pt;->c:Lcom/google/android/gms/ads/internal/overlay/q;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/google/android/gms/ads/internal/overlay/q;->h0()V

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/pt;->b:Lcom/google/android/gms/internal/ads/jt;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/jt;->S()V

    return-void
.end method

.method public final r1(I)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/pt;->c:Lcom/google/android/gms/ads/internal/overlay/q;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/google/android/gms/ads/internal/overlay/q;->r1(I)V

    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/pt;->b:Lcom/google/android/gms/internal/ads/jt;

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/jt;->b0()V

    return-void
.end method
