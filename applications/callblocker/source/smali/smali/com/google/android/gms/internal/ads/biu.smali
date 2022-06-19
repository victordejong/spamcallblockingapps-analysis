.class final synthetic Lcom/google/android/gms/internal/ads/biu;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.1.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/bir;

.field private final b:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/bir;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/biu;->a:Lcom/google/android/gms/internal/ads/bir;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/biu;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/biu;->a:Lcom/google/android/gms/internal/ads/bir;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/biu;->b:Ljava/lang/String;

    .line 2
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/bir;->a:Lcom/google/android/gms/internal/ads/bij;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/bij;->a(Lcom/google/android/gms/internal/ads/bij;Ljava/lang/String;)V

    .line 3
    return-void
.end method
