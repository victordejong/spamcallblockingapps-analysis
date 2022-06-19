.class public final Lcom/google/android/gms/internal/ads/xn3;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/y6;


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Lcom/google/android/gms/internal/ads/y6;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/dc;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/dc;-><init>()V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/xn3;->a:Landroid/content/Context;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/xn3;->b:Lcom/google/android/gms/internal/ads/y6;

    return-void
.end method


# virtual methods
.method public final bridge synthetic zza()Lcom/google/android/gms/internal/ads/w7;
    .locals 3

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/yn3;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/xn3;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/xn3;->b:Lcom/google/android/gms/internal/ads/y6;

    check-cast v2, Lcom/google/android/gms/internal/ads/dc;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/dc;->f()Lcom/google/android/gms/internal/ads/zd;

    move-result-object v2

    .line 2
    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/ads/yn3;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/w7;)V

    return-object v0
.end method
