.class final Lcom/google/android/gms/internal/ads/xr0;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/xi2;


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/fs0;

.field private b:Landroid/content/Context;

.field private c:Ljava/lang/String;


# direct methods
.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/fs0;Lcom/google/android/gms/internal/ads/wr0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/xr0;->a:Lcom/google/android/gms/internal/ads/fs0;

    return-void
.end method


# virtual methods
.method public final bridge synthetic a(Landroid/content/Context;)Lcom/google/android/gms/internal/ads/xi2;
    .locals 0

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/xr0;->b:Landroid/content/Context;

    return-object p0
.end method

.method public final bridge synthetic r(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/xi2;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/xr0;->c:Ljava/lang/String;

    return-object p0
.end method

.method public final zza()Lcom/google/android/gms/internal/ads/yi2;
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/xr0;->b:Landroid/content/Context;

    const-class v1, Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/kj3;->c(Ljava/lang/Object;Ljava/lang/Class;)V

    new-instance v0, Lcom/google/android/gms/internal/ads/yr0;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/xr0;->a:Lcom/google/android/gms/internal/ads/fs0;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/xr0;->b:Landroid/content/Context;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/xr0;->c:Ljava/lang/String;

    const/4 v4, 0x0

    .line 2
    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/android/gms/internal/ads/yr0;-><init>(Lcom/google/android/gms/internal/ads/fs0;Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/internal/ads/wr0;)V

    return-object v0
.end method
