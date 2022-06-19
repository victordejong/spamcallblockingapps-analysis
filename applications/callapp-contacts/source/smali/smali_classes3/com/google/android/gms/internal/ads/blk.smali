.class final synthetic Lcom/google/android/gms/internal/ads/blk;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/blh;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/blh;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/blk;->a:Lcom/google/android/gms/internal/ads/blh;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/blk;->a:Lcom/google/android/gms/internal/ads/blh;

    .line 1015
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/blh;->b:Lcom/google/android/gms/internal/ads/bli;

    .line 2009
    iget-object v1, v1, Lcom/google/android/gms/internal/ads/bli;->a:Lcom/google/android/gms/internal/ads/bln;

    .line 1015
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/blh;->a:Ljava/util/Map;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/blq;->a(Ljava/util/Map;)V

    return-void
.end method
