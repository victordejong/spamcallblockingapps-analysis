.class final synthetic Lcom/google/android/gms/internal/ads/np0;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/gms/internal/ads/vv2;


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/zzuq;

.field private final b:Ljava/lang/String;

.field private final c:Lcom/google/android/gms/internal/ads/ky2;

.field private final d:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzuq;Ljava/lang/String;Lcom/google/android/gms/internal/ads/ky2;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/np0;->a:Lcom/google/android/gms/internal/ads/zzuq;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/np0;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/np0;->c:Lcom/google/android/gms/internal/ads/ky2;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/np0;->d:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/internal/ads/ex2;)V
    .locals 5

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/np0;->a:Lcom/google/android/gms/internal/ads/zzuq;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/np0;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/np0;->c:Lcom/google/android/gms/internal/ads/ky2;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/np0;->d:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/ex2;->w()Lcom/google/android/gms/internal/ads/ew2;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/oc2;->x()Lcom/google/android/gms/internal/ads/lc2;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/internal/ads/dw2;

    invoke-virtual {v4, v0}, Lcom/google/android/gms/internal/ads/dw2;->q(Lcom/google/android/gms/internal/ads/zzuq;)Lcom/google/android/gms/internal/ads/dw2;

    invoke-virtual {p1, v4}, Lcom/google/android/gms/internal/ads/ex2;->y(Lcom/google/android/gms/internal/ads/dw2;)Lcom/google/android/gms/internal/ads/ex2;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/ex2;->u()Lcom/google/android/gms/internal/ads/zw2;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/oc2;->x()Lcom/google/android/gms/internal/ads/lc2;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/yw2;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/yw2;->q(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/yw2;

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/yw2;->r(Lcom/google/android/gms/internal/ads/ky2;)Lcom/google/android/gms/internal/ads/yw2;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/ex2;->v(Lcom/google/android/gms/internal/ads/yw2;)Lcom/google/android/gms/internal/ads/ex2;

    invoke-virtual {p1, v3}, Lcom/google/android/gms/internal/ads/ex2;->r(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/ex2;

    return-void
.end method
