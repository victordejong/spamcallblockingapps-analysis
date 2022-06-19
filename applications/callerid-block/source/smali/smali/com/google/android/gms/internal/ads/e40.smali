.class final synthetic Lcom/google/android/gms/internal/ads/e40;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/gms/internal/ads/uy1;


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/i40;

.field private final b:Lcom/google/android/gms/internal/ads/gz1;

.field private final c:Lcom/google/android/gms/internal/ads/rz1;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/i40;Lcom/google/android/gms/internal/ads/gz1;Lcom/google/android/gms/internal/ads/rz1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/e40;->a:Lcom/google/android/gms/internal/ads/i40;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/e40;->b:Lcom/google/android/gms/internal/ads/gz1;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/e40;->c:Lcom/google/android/gms/internal/ads/rz1;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/rz1;
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/e40;->a:Lcom/google/android/gms/internal/ads/i40;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/e40;->b:Lcom/google/android/gms/internal/ads/gz1;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/e40;->c:Lcom/google/android/gms/internal/ads/rz1;

    check-cast p1, Lcom/google/android/gms/internal/ads/u30;

    invoke-virtual {v0, v1, v2, p1}, Lcom/google/android/gms/internal/ads/i40;->d(Lcom/google/android/gms/internal/ads/gz1;Lcom/google/android/gms/internal/ads/rz1;Lcom/google/android/gms/internal/ads/u30;)Lcom/google/android/gms/internal/ads/rz1;

    move-result-object p1

    return-object p1
.end method
