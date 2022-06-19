.class final synthetic Lcom/google/android/gms/internal/ads/jm1;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/om;


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/rj2;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/rj2;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/jm1;->a:Lcom/google/android/gms/internal/ads/rj2;

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/internal/ads/co;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/jm1;->a:Lcom/google/android/gms/internal/ads/rj2;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/co;->x()Lcom/google/android/gms/internal/ads/ym;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/ie3;->x()Lcom/google/android/gms/internal/ads/ee3;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/xm;

    .line 2
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/co;->x()Lcom/google/android/gms/internal/ads/ym;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/ym;->C()Lcom/google/android/gms/internal/ads/rn;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/ie3;->x()Lcom/google/android/gms/internal/ads/ee3;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/ads/qn;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/rj2;->b:Lcom/google/android/gms/internal/ads/qj2;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/qj2;->b:Lcom/google/android/gms/internal/ads/jj2;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/jj2;->b:Ljava/lang/String;

    .line 3
    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/ads/qn;->q(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/qn;

    .line 4
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/xm;->r(Lcom/google/android/gms/internal/ads/qn;)Lcom/google/android/gms/internal/ads/xm;

    .line 5
    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/ads/co;->y(Lcom/google/android/gms/internal/ads/xm;)Lcom/google/android/gms/internal/ads/co;

    return-void
.end method
