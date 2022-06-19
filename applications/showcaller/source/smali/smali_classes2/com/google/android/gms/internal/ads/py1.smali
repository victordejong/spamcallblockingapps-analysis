.class final synthetic Lcom/google/android/gms/internal/ads/py1;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/uz2;


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/uy1;

.field private final b:Lcom/google/android/gms/internal/ads/ej2;

.field private final c:Lcom/google/android/gms/internal/ads/rj2;

.field private final d:Lcom/google/android/gms/internal/ads/el1;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/uy1;Lcom/google/android/gms/internal/ads/ej2;Lcom/google/android/gms/internal/ads/rj2;Lcom/google/android/gms/internal/ads/el1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/py1;->a:Lcom/google/android/gms/internal/ads/uy1;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/py1;->b:Lcom/google/android/gms/internal/ads/ej2;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/py1;->c:Lcom/google/android/gms/internal/ads/rj2;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/py1;->d:Lcom/google/android/gms/internal/ads/el1;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/r03;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/py1;->a:Lcom/google/android/gms/internal/ads/uy1;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/py1;->b:Lcom/google/android/gms/internal/ads/ej2;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/py1;->c:Lcom/google/android/gms/internal/ads/rj2;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/py1;->d:Lcom/google/android/gms/internal/ads/el1;

    invoke-virtual {v0, v1, v2, v3, p1}, Lcom/google/android/gms/internal/ads/uy1;->c(Lcom/google/android/gms/internal/ads/ej2;Lcom/google/android/gms/internal/ads/rj2;Lcom/google/android/gms/internal/ads/el1;Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/r03;

    move-result-object p1

    return-object p1
.end method
