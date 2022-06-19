.class final synthetic Lcom/google/android/gms/internal/ads/cc;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/gms/internal/ads/ob;


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/vc;

.field private final b:Lcom/google/android/gms/internal/ads/uc;

.field private final c:Lcom/google/android/gms/internal/ads/pb;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/vc;Lcom/google/android/gms/internal/ads/uc;Lcom/google/android/gms/internal/ads/pb;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/cc;->a:Lcom/google/android/gms/internal/ads/vc;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/cc;->b:Lcom/google/android/gms/internal/ads/uc;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/cc;->c:Lcom/google/android/gms/internal/ads/pb;

    return-void
.end method


# virtual methods
.method public final zza()V
    .locals 5

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cc;->a:Lcom/google/android/gms/internal/ads/vc;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/cc;->b:Lcom/google/android/gms/internal/ads/uc;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/cc;->c:Lcom/google/android/gms/internal/ads/pb;

    sget-object v3, Lcom/google/android/gms/ads/internal/util/l1;->i:Lcom/google/android/gms/internal/ads/tv1;

    new-instance v4, Lcom/google/android/gms/internal/ads/dc;

    invoke-direct {v4, v0, v1, v2}, Lcom/google/android/gms/internal/ads/dc;-><init>(Lcom/google/android/gms/internal/ads/vc;Lcom/google/android/gms/internal/ads/uc;Lcom/google/android/gms/internal/ads/pb;)V

    const-wide/16 v0, 0x2710

    invoke-virtual {v3, v4, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
