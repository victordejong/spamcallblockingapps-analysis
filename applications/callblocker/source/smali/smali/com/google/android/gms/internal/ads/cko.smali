.class final synthetic Lcom/google/android/gms/internal/ads/cko;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.1.0"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/ckj;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/ckj;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/cko;->a:Lcom/google/android/gms/internal/ads/ckj;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cko;->a:Lcom/google/android/gms/internal/ads/ckj;

    .line 2
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/ckj;->a()V

    .line 3
    const/4 v0, 0x0

    .line 4
    return-object v0
.end method
