.class final synthetic Lcom/google/android/gms/internal/ads/d13;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/lb3;


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/u4;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/u4;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/d13;->a:Lcom/google/android/gms/internal/ads/u4;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/d13;->a:Lcom/google/android/gms/internal/ads/u4;

    check-cast p1, Lcom/google/android/gms/internal/ads/vw2;

    sget v1, Lcom/google/android/gms/internal/ads/mc3;->d:I

    .line 2
    :try_start_0
    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/vw2;->c(Lcom/google/android/gms/internal/ads/u4;)Z

    move-result p1
    :try_end_0
    .catch Lcom/google/android/gms/internal/ads/zzfy; {:try_start_0 .. :try_end_0} :catch_0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    return p1

    :catch_0
    const/4 p1, -0x1

    :goto_0
    return p1
.end method
