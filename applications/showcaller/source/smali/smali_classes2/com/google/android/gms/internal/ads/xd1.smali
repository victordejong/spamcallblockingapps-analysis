.class public final Lcom/google/android/gms/internal/ads/xd1;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/cj3;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/cj3<",
        "Lcom/google/android/gms/internal/ads/qj1;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/sd1;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/sd1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/xd1;->a:Lcom/google/android/gms/internal/ads/sd1;

    return-void
.end method


# virtual methods
.method public final a()Lcom/google/android/gms/internal/ads/qj1;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/xd1;->a:Lcom/google/android/gms/internal/ads/sd1;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/sd1;->b()Lcom/google/android/gms/internal/ads/qj1;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/kj3;->b(Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public final bridge synthetic b()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/xd1;->a:Lcom/google/android/gms/internal/ads/sd1;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/sd1;->b()Lcom/google/android/gms/internal/ads/qj1;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/kj3;->b(Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method
