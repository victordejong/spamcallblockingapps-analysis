.class public final Lcom/google/android/gms/internal/ads/bli;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field final a:Lcom/google/android/gms/internal/ads/bln;

.field final b:Ljava/util/concurrent/Executor;

.field final c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/bln;Ljava/util/concurrent/Executor;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/bli;->a:Lcom/google/android/gms/internal/ads/bln;

    .line 3
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/bln;->a()Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/bli;->c:Ljava/util/Map;

    .line 4
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/bli;->b:Ljava/util/concurrent/Executor;

    return-void
.end method


# virtual methods
.method public final a()Lcom/google/android/gms/internal/ads/blh;
    .locals 1

    .line 6
    new-instance v0, Lcom/google/android/gms/internal/ads/blh;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/blh;-><init>(Lcom/google/android/gms/internal/ads/bli;)V

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/blh;->a(Lcom/google/android/gms/internal/ads/blh;)Lcom/google/android/gms/internal/ads/blh;

    move-result-object v0

    return-object v0
.end method
