.class final synthetic Lcom/google/android/gms/internal/ads/lo0;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/om;


# instance fields
.field private final a:Z

.field private final b:I


# direct methods
.method constructor <init>(ZI)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/lo0;->a:Z

    iput p2, p0, Lcom/google/android/gms/internal/ads/lo0;->b:I

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/internal/ads/co;)V
    .locals 4

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/lo0;->a:Z

    iget v1, p0, Lcom/google/android/gms/internal/ads/lo0;->b:I

    sget v2, Lcom/google/android/gms/internal/ads/oo0;->d:I

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/ads/jq;->D()Lcom/google/android/gms/internal/ads/iq;

    move-result-object v2

    .line 3
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/iq;->q()Z

    move-result v3

    if-eq v3, v0, :cond_0

    .line 4
    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/ads/iq;->r(Z)Lcom/google/android/gms/internal/ads/iq;

    .line 5
    :cond_0
    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/iq;->s(I)Lcom/google/android/gms/internal/ads/iq;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/ee3;->n()Lcom/google/android/gms/internal/ads/ie3;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/jq;

    .line 6
    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/co;->B(Lcom/google/android/gms/internal/ads/jq;)Lcom/google/android/gms/internal/ads/co;

    return-void
.end method
