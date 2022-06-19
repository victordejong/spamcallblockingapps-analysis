.class final synthetic Lcom/google/android/gms/internal/ads/q12;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/cn2;


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/s12;

.field private final b:Lcom/google/android/gms/internal/ads/rj2;

.field private final c:Lcom/google/android/gms/internal/ads/ej2;

.field private final d:Lcom/google/android/gms/internal/ads/tw1;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/s12;Lcom/google/android/gms/internal/ads/rj2;Lcom/google/android/gms/internal/ads/ej2;Lcom/google/android/gms/internal/ads/tw1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/q12;->a:Lcom/google/android/gms/internal/ads/s12;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/q12;->b:Lcom/google/android/gms/internal/ads/rj2;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/q12;->c:Lcom/google/android/gms/internal/ads/ej2;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/q12;->d:Lcom/google/android/gms/internal/ads/tw1;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/q12;->a:Lcom/google/android/gms/internal/ads/s12;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/q12;->b:Lcom/google/android/gms/internal/ads/rj2;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/q12;->c:Lcom/google/android/gms/internal/ads/ej2;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/q12;->d:Lcom/google/android/gms/internal/ads/tw1;

    check-cast p1, Ljava/lang/Void;

    invoke-virtual {v0, v1, v2, v3, p1}, Lcom/google/android/gms/internal/ads/s12;->c(Lcom/google/android/gms/internal/ads/rj2;Lcom/google/android/gms/internal/ads/ej2;Lcom/google/android/gms/internal/ads/tw1;Ljava/lang/Void;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
