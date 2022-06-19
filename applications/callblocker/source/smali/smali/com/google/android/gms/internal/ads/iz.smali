.class final synthetic Lcom/google/android/gms/internal/ads/iz;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.1.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/ja;

.field private final b:Lcom/google/android/gms/internal/ads/hp;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/ja;Lcom/google/android/gms/internal/ads/hp;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/iz;->a:Lcom/google/android/gms/internal/ads/ja;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/iz;->b:Lcom/google/android/gms/internal/ads/hp;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/iz;->a:Lcom/google/android/gms/internal/ads/ja;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/iz;->b:Lcom/google/android/gms/internal/ads/hp;

    .line 2
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/ja;->a:Lcom/google/android/gms/internal/ads/iu;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/iu;->a(Lcom/google/android/gms/internal/ads/iu;)Lcom/google/android/gms/internal/ads/wj;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/wj;->a(Ljava/lang/Object;)V

    .line 3
    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/hp;->a()V

    .line 4
    return-void
.end method
