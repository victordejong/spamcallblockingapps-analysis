.class final Lcom/google/android/gms/internal/ads/my1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic b:Lcom/google/android/gms/internal/ads/zzedb;

.field final synthetic c:Lcom/google/android/gms/internal/ads/ny1;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/ny1;Lcom/google/android/gms/internal/ads/zzedb;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/my1;->c:Lcom/google/android/gms/internal/ads/ny1;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/my1;->b:Lcom/google/android/gms/internal/ads/zzedb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/my1;->c:Lcom/google/android/gms/internal/ads/ny1;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/my1;->b:Lcom/google/android/gms/internal/ads/zzedb;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/ny1;->L(Lcom/google/android/gms/internal/ads/ny1;Lcom/google/android/gms/internal/ads/zzedb;)V

    return-void
.end method
