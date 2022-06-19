.class final synthetic Lcom/google/android/gms/internal/ads/lu0;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/ou0;

.field private final b:Lcom/google/android/gms/internal/ads/zzawc;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/ou0;Lcom/google/android/gms/internal/ads/zzawc;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/lu0;->a:Lcom/google/android/gms/internal/ads/ou0;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/lu0;->b:Lcom/google/android/gms/internal/ads/zzawc;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/lu0;->a:Lcom/google/android/gms/internal/ads/ou0;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/lu0;->b:Lcom/google/android/gms/internal/ads/zzawc;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/ou0;->c(Lcom/google/android/gms/internal/ads/zzawc;)Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method
