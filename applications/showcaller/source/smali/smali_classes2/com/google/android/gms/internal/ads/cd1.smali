.class public final Lcom/google/android/gms/internal/ads/cd1;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/cj3;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/cj3<",
        "Lcom/google/android/gms/internal/ads/cf1;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/zc1;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zc1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/cd1;->a:Lcom/google/android/gms/internal/ads/zc1;

    return-void
.end method


# virtual methods
.method public final a()Lcom/google/android/gms/internal/ads/cf1;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cd1;->a:Lcom/google/android/gms/internal/ads/zc1;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zc1;->a()Lcom/google/android/gms/internal/ads/cf1;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/kj3;->b(Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public final bridge synthetic b()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cd1;->a:Lcom/google/android/gms/internal/ads/zc1;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zc1;->a()Lcom/google/android/gms/internal/ads/cf1;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/kj3;->b(Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method
