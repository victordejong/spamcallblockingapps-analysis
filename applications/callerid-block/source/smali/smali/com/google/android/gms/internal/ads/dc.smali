.class final synthetic Lcom/google/android/gms/internal/ads/dc;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final b:Lcom/google/android/gms/internal/ads/vc;

.field private final c:Lcom/google/android/gms/internal/ads/uc;

.field private final d:Lcom/google/android/gms/internal/ads/pb;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/vc;Lcom/google/android/gms/internal/ads/uc;Lcom/google/android/gms/internal/ads/pb;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/dc;->b:Lcom/google/android/gms/internal/ads/vc;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/dc;->c:Lcom/google/android/gms/internal/ads/uc;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/dc;->d:Lcom/google/android/gms/internal/ads/pb;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dc;->b:Lcom/google/android/gms/internal/ads/vc;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/dc;->c:Lcom/google/android/gms/internal/ads/uc;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/dc;->d:Lcom/google/android/gms/internal/ads/pb;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/vc;->e(Lcom/google/android/gms/internal/ads/uc;Lcom/google/android/gms/internal/ads/pb;)V

    return-void
.end method
