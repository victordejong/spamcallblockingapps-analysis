.class final synthetic Lcom/google/android/gms/internal/ads/ph1;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/uz2;


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/r03;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/r03;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/ph1;->a:Lcom/google/android/gms/internal/ads/r03;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/r03;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ph1;->a:Lcom/google/android/gms/internal/ads/r03;

    check-cast p1, Lcom/google/android/gms/internal/ads/wn0;

    if-eqz p1, :cond_0

    .line 2
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/wn0;->f()Lcom/google/android/gms/internal/ads/ro0;

    move-result-object p1

    if-eqz p1, :cond_0

    return-object v0

    :cond_0
    new-instance p1, Lcom/google/android/gms/internal/ads/zzehs;

    const/4 v0, 0x1

    const-string v1, "Retrieve video view in html5 ad response failed."

    .line 3
    invoke-direct {p1, v0, v1}, Lcom/google/android/gms/internal/ads/zzehs;-><init>(ILjava/lang/String;)V

    throw p1
.end method
