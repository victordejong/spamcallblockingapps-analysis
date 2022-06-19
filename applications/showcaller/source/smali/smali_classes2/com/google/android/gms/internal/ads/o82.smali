.class final synthetic Lcom/google/android/gms/internal/ads/o82;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/p82;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/p82;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/o82;->a:Lcom/google/android/gms/internal/ads/p82;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/o82;->a:Lcom/google/android/gms/internal/ads/p82;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/p82;->a()Lcom/google/android/gms/internal/ads/q82;

    move-result-object v0

    return-object v0
.end method
