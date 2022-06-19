.class final Lcom/google/android/gms/internal/ads/ln3;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"


# instance fields
.field private final a:Landroid/os/Handler;

.field private final b:Lcom/google/android/gms/internal/ads/nn3;

.field private c:Z


# direct methods
.method public constructor <init>(Landroid/os/Handler;Lcom/google/android/gms/internal/ads/nn3;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/ln3;->a:Landroid/os/Handler;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/ln3;->b:Lcom/google/android/gms/internal/ads/nn3;

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/internal/ads/ln3;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/ln3;->a:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic b(Lcom/google/android/gms/internal/ads/ln3;)Lcom/google/android/gms/internal/ads/nn3;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/ln3;->b:Lcom/google/android/gms/internal/ads/nn3;

    return-object p0
.end method

.method static synthetic c(Lcom/google/android/gms/internal/ads/ln3;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/google/android/gms/internal/ads/ln3;->c:Z

    return p0
.end method


# virtual methods
.method public final d()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/ln3;->c:Z

    return-void
.end method
