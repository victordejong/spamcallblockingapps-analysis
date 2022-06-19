.class public final Lcom/google/android/gms/internal/ads/blf;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field a:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final b:Lcom/google/android/gms/internal/ads/yo;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/bln;Lcom/google/android/gms/internal/ads/yo;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/blq;->a:Ljava/util/Map;

    invoke-direct {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(Ljava/util/Map;)V

    .line 4
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/blf;->a:Ljava/util/concurrent/ConcurrentHashMap;

    .line 5
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/blf;->b:Lcom/google/android/gms/internal/ads/yo;

    return-void
.end method
