.class final synthetic Lcom/google/android/gms/internal/ads/y60;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/uz2;


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Lcom/google/android/gms/internal/ads/n20;


# direct methods
.method constructor <init>(Ljava/lang/String;Lcom/google/android/gms/internal/ads/n20;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/y60;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/y60;->b:Lcom/google/android/gms/internal/ads/n20;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/r03;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/y60;->a:Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/y60;->b:Lcom/google/android/gms/internal/ads/n20;

    check-cast p1, Lcom/google/android/gms/internal/ads/e60;

    .line 2
    invoke-interface {p1, v0, v1}, Lcom/google/android/gms/internal/ads/e60;->i0(Ljava/lang/String;Lcom/google/android/gms/internal/ads/n20;)V

    .line 3
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/k03;->a(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/r03;

    move-result-object p1

    return-object p1
.end method
