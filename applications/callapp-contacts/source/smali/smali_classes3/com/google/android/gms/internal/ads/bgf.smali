.class public final Lcom/google/android/gms/internal/ads/bgf;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final a:Ljava/util/concurrent/Executor;

.field final b:Lcom/google/android/gms/internal/ads/akh;

.field final c:Lcom/google/android/gms/internal/ads/ayh;


# direct methods
.method constructor <init>(Ljava/util/concurrent/Executor;Lcom/google/android/gms/internal/ads/akh;Lcom/google/android/gms/internal/ads/ayh;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/bgf;->a:Ljava/util/concurrent/Executor;

    .line 3
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/bgf;->c:Lcom/google/android/gms/internal/ads/ayh;

    .line 4
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/bgf;->b:Lcom/google/android/gms/internal/ads/akh;

    return-void
.end method
