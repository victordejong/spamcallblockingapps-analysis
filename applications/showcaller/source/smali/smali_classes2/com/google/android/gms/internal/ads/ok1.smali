.class public final Lcom/google/android/gms/internal/ads/ok1;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/cj3;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/cj3<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/pj3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/pj3<",
            "Lcom/google/android/gms/internal/ads/xj2;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/pj3;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/pj3<",
            "Lcom/google/android/gms/internal/ads/xj2;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/ok1;->a:Lcom/google/android/gms/internal/ads/pj3;

    return-void
.end method


# virtual methods
.method public final bridge synthetic b()Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ok1;->a:Lcom/google/android/gms/internal/ads/pj3;

    check-cast v0, Lcom/google/android/gms/internal/ads/o21;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/o21;->a()Lcom/google/android/gms/internal/ads/xj2;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/xj2;->o:Lcom/google/android/gms/internal/ads/nj2;

    iget v0, v0, Lcom/google/android/gms/internal/ads/nj2;->a:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const-string v0, "rewarded_interstitial"

    return-object v0

    :cond_0
    const-string v0, "rewarded"

    return-object v0
.end method
