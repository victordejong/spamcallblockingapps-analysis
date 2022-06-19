.class final synthetic Lcom/google/android/gms/internal/ads/uz;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final b:Lcom/google/android/gms/internal/ads/vz;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/vz;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/uz;->b:Lcom/google/android/gms/internal/ads/vz;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/uz;->b:Lcom/google/android/gms/internal/ads/vz;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/vz;->a:Lcom/google/android/gms/internal/ads/wz;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/wz;->g(Lcom/google/android/gms/internal/ads/wz;)Lcom/google/android/gms/internal/ads/b00;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/b00;->b()V

    return-void
.end method
