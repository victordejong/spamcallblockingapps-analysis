.class final synthetic Lcom/google/android/gms/internal/ads/gz1;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/uz2;


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/lz1;

.field private final b:Lcom/google/android/gms/internal/ads/ej2;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/lz1;Lcom/google/android/gms/internal/ads/ej2;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/gz1;->a:Lcom/google/android/gms/internal/ads/lz1;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/gz1;->b:Lcom/google/android/gms/internal/ads/ej2;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/r03;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/gz1;->a:Lcom/google/android/gms/internal/ads/lz1;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/gz1;->b:Lcom/google/android/gms/internal/ads/ej2;

    check-cast p1, Lcom/google/android/gms/internal/ads/qj1;

    invoke-virtual {v0, v1, p1}, Lcom/google/android/gms/internal/ads/lz1;->f(Lcom/google/android/gms/internal/ads/ej2;Lcom/google/android/gms/internal/ads/qj1;)Lcom/google/android/gms/internal/ads/r03;

    move-result-object p1

    return-object p1
.end method
