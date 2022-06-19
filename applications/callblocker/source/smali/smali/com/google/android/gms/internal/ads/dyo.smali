.class final Lcom/google/android/gms/internal/ads/dyo;
.super Lcom/google/android/gms/internal/ads/dyu;
.source "com.google.android.gms:play-services-ads-lite@@19.1.0"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/dyu",
        "<",
        "Lcom/google/android/gms/internal/ads/ny;",
        ">;"
    }
.end annotation


# instance fields
.field private final synthetic a:Landroid/app/Activity;

.field private final synthetic b:Lcom/google/android/gms/internal/ads/dyl;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/dyl;Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/dyo;->b:Lcom/google/android/gms/internal/ads/dyl;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/dyo;->a:Landroid/app/Activity;

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/dyu;-><init>()V

    return-void
.end method


# virtual methods
.method protected final synthetic a()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 2
    .line 3
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dyo;->a:Landroid/app/Activity;

    const-string/jumbo v1, "ad_overlay"

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/dyl;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 4
    const/4 v0, 0x0

    .line 5
    return-object v0
.end method

.method public final synthetic a(Lcom/google/android/gms/internal/ads/dzx;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 9
    .line 10
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dyo;->a:Landroid/app/Activity;

    invoke-static {v0}, Lcom/google/android/gms/dynamic/b;->a(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/a;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/google/android/gms/internal/ads/dzx;->a(Lcom/google/android/gms/dynamic/a;)Lcom/google/android/gms/internal/ads/ny;

    move-result-object v0

    .line 11
    return-object v0
.end method

.method public final synthetic b()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 6
    .line 7
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dyo;->b:Lcom/google/android/gms/internal/ads/dyl;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/dyl;->e(Lcom/google/android/gms/internal/ads/dyl;)Lcom/google/android/gms/internal/ads/nw;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/dyo;->a:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/nw;->a(Landroid/app/Activity;)Lcom/google/android/gms/internal/ads/ny;

    move-result-object v0

    .line 8
    return-object v0
.end method
