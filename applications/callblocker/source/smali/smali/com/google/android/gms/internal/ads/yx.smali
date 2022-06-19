.class final Lcom/google/android/gms/internal/ads/yx;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.1.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/crh;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/crh",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private final synthetic a:Lcom/google/android/gms/internal/ads/ys;

.field private final synthetic b:Lcom/google/android/gms/internal/ads/yq;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/yv;Lcom/google/android/gms/internal/ads/ys;Lcom/google/android/gms/internal/ads/yq;)V
    .locals 0

    .prologue
    .line 1
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/yx;->a:Lcom/google/android/gms/internal/ads/ys;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/yx;->b:Lcom/google/android/gms/internal/ads/yq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/yx;->a:Lcom/google/android/gms/internal/ads/ys;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/ys;->a(Ljava/lang/Object;)V

    .line 3
    return-void
.end method

.method public final a(Ljava/lang/Throwable;)V
    .locals 1

    .prologue
    .line 4
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/yx;->b:Lcom/google/android/gms/internal/ads/yq;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/yq;->a()V

    .line 5
    return-void
.end method
