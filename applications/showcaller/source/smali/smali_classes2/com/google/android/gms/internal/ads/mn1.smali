.class public final Lcom/google/android/gms/internal/ads/mn1;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/cj3;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/cj3<",
        "Lcom/google/android/gms/internal/ads/tn1;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lcom/google/android/gms/internal/ads/mn1;
    .locals 1

    invoke-static {}, Lcom/google/android/gms/internal/ads/ln1;->a()Lcom/google/android/gms/internal/ads/mn1;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final bridge synthetic b()Ljava/lang/Object;
    .locals 4

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/tn1;

    sget-object v1, Lcom/google/android/gms/internal/ads/zzfem;->d:Lcom/google/android/gms/internal/ads/zzfem;

    sget-object v2, Lcom/google/android/gms/internal/ads/zzfem;->g:Lcom/google/android/gms/internal/ads/zzfem;

    const-string v3, "ttc"

    invoke-direct {v0, v3, v1, v2}, Lcom/google/android/gms/internal/ads/tn1;-><init>(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzfem;Lcom/google/android/gms/internal/ads/zzfem;)V

    return-object v0
.end method
