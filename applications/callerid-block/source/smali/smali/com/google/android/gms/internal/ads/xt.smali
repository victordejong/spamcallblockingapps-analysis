.class final synthetic Lcom/google/android/gms/internal/ads/xt;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/gms/internal/ads/vv2;


# instance fields
.field private final a:Z

.field private final b:I


# direct methods
.method constructor <init>(ZI)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/xt;->a:Z

    iput p2, p0, Lcom/google/android/gms/internal/ads/xt;->b:I

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/internal/ads/ex2;)V
    .locals 4

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/xt;->a:Z

    iget v1, p0, Lcom/google/android/gms/internal/ads/xt;->b:I

    sget v2, Lcom/google/android/gms/internal/ads/au;->b0:I

    invoke-static {}, Lcom/google/android/gms/internal/ads/gz2;->F()Lcom/google/android/gms/internal/ads/fz2;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/fz2;->q()Z

    move-result v3

    if-eq v3, v0, :cond_0

    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/ads/fz2;->r(Z)Lcom/google/android/gms/internal/ads/fz2;

    :cond_0
    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/fz2;->s(I)Lcom/google/android/gms/internal/ads/fz2;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/lc2;->m()Lcom/google/android/gms/internal/ads/oc2;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/gz2;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/ex2;->D(Lcom/google/android/gms/internal/ads/gz2;)Lcom/google/android/gms/internal/ads/ex2;

    return-void
.end method
