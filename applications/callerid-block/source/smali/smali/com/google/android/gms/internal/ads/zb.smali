.class final synthetic Lcom/google/android/gms/internal/ads/zb;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final b:Lcom/google/android/gms/internal/ads/vc;

.field private final c:Lcom/google/android/gms/internal/ads/uc;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/vc;Lcom/google/android/gms/internal/ads/zh2;Lcom/google/android/gms/internal/ads/uc;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zb;->b:Lcom/google/android/gms/internal/ads/vc;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zb;->c:Lcom/google/android/gms/internal/ads/uc;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zb;->b:Lcom/google/android/gms/internal/ads/vc;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zb;->c:Lcom/google/android/gms/internal/ads/uc;

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/internal/ads/vc;->d(Lcom/google/android/gms/internal/ads/zh2;Lcom/google/android/gms/internal/ads/uc;)V

    return-void
.end method
