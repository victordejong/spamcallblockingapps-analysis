.class final Lcom/google/android/gms/internal/ads/zx;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.1.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic a:Lcom/google/android/gms/internal/ads/zl;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zy;Lcom/google/android/gms/internal/ads/zl;)V
    .locals 0

    .prologue
    .line 1
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zx;->a:Lcom/google/android/gms/internal/ads/zl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zx;->a:Lcom/google/android/gms/internal/ads/zl;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zl;->g()V

    .line 3
    return-void
.end method
