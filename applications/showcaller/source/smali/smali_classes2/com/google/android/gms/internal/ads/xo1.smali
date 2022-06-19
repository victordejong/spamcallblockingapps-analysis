.class public final Lcom/google/android/gms/internal/ads/xo1;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/cj3;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/cj3<",
        "Lcom/google/android/gms/internal/ads/wo1;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/pj3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/pj3<",
            "Lcom/google/android/gms/internal/ads/h30;",
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
            "Lcom/google/android/gms/internal/ads/h30;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/xo1;->a:Lcom/google/android/gms/internal/ads/pj3;

    return-void
.end method

.method public static c(Lcom/google/android/gms/internal/ads/h30;)Lcom/google/android/gms/internal/ads/wo1;
    .locals 1

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/wo1;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/wo1;-><init>(Lcom/google/android/gms/internal/ads/h30;)V

    return-object v0
.end method


# virtual methods
.method public final a()Lcom/google/android/gms/internal/ads/wo1;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/xo1;->a:Lcom/google/android/gms/internal/ads/pj3;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/pj3;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/h30;

    new-instance v1, Lcom/google/android/gms/internal/ads/wo1;

    .line 2
    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/ads/wo1;-><init>(Lcom/google/android/gms/internal/ads/h30;)V

    return-object v1
.end method

.method public final bridge synthetic b()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/xo1;->a()Lcom/google/android/gms/internal/ads/wo1;

    move-result-object v0

    return-object v0
.end method
