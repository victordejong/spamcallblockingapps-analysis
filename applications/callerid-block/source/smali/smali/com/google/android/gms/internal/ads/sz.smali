.class final synthetic Lcom/google/android/gms/internal/ads/sz;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final b:Lcom/google/android/gms/internal/ads/tz;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/tz;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/sz;->b:Lcom/google/android/gms/internal/ads/tz;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/sz;->b:Lcom/google/android/gms/internal/ads/tz;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/tz;->a:Lcom/google/android/gms/internal/ads/wz;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/wz;->g(Lcom/google/android/gms/internal/ads/wz;)Lcom/google/android/gms/internal/ads/b00;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/b00;->a()V

    return-void
.end method
