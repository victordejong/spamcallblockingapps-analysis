.class final synthetic Lcom/google/android/gms/internal/ads/bs1;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/uz2;


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/g60;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/g60;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/bs1;->a:Lcom/google/android/gms/internal/ads/g60;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/r03;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bs1;->a:Lcom/google/android/gms/internal/ads/g60;

    check-cast p1, Lorg/json/JSONObject;

    .line 2
    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/g60;->b(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/r03;

    move-result-object p1

    return-object p1
.end method
