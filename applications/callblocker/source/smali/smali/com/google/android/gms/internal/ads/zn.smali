.class public abstract Lcom/google/android/gms/internal/ads/zn;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.1.0"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected static a(Lcom/google/android/gms/internal/ads/aad;)Z
    .locals 1

    .prologue
    .line 2
    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/aad;->t()Lcom/google/android/gms/internal/ads/aei;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/aei;->e()Z

    move-result v0

    return v0
.end method


# virtual methods
.method public abstract a(Landroid/content/Context;Lcom/google/android/gms/internal/ads/aad;IZLcom/google/android/gms/internal/ads/o;Lcom/google/android/gms/internal/ads/aae;)Lcom/google/android/gms/internal/ads/zo;
.end method
