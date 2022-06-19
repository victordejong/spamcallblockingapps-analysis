.class final Lcom/google/android/gms/internal/ads/dyv;
.super Lcom/google/android/gms/internal/ads/dyu;
.source "com.google.android.gms:play-services-ads-lite@@19.1.0"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/dyu",
        "<",
        "Lcom/google/android/gms/internal/ads/qy;",
        ">;"
    }
.end annotation


# instance fields
.field private final synthetic a:Landroid/content/Context;

.field private final synthetic b:Lcom/google/android/gms/internal/ads/ko;

.field private final synthetic c:Lcom/google/android/gms/internal/ads/dyl;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/dyl;Landroid/content/Context;Lcom/google/android/gms/internal/ads/ko;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/dyv;->c:Lcom/google/android/gms/internal/ads/dyl;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/dyv;->a:Landroid/content/Context;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/dyv;->b:Lcom/google/android/gms/internal/ads/ko;

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/dyu;-><init>()V

    return-void
.end method


# virtual methods
.method protected final synthetic a()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 2
    .line 3
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dyv;->a:Landroid/content/Context;

    const-string/jumbo v1, "rewarded_video"

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/dyl;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 4
    new-instance v0, Lcom/google/android/gms/internal/ads/ecf;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/ecf;-><init>()V

    .line 5
    return-object v0
.end method

.method public final synthetic a(Lcom/google/android/gms/internal/ads/dzx;)Ljava/lang/Object;
    .locals 3

    .prologue
    .line 9
    .line 10
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dyv;->a:Landroid/content/Context;

    .line 11
    invoke-static {v0}, Lcom/google/android/gms/dynamic/b;->a(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/a;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/dyv;->b:Lcom/google/android/gms/internal/ads/ko;

    const v2, 0xbfb13e0

    .line 12
    invoke-interface {p1, v0, v1, v2}, Lcom/google/android/gms/internal/ads/dzx;->a(Lcom/google/android/gms/dynamic/a;Lcom/google/android/gms/internal/ads/ko;I)Lcom/google/android/gms/internal/ads/qy;

    move-result-object v0

    .line 13
    return-object v0
.end method

.method public final synthetic b()Ljava/lang/Object;
    .locals 3

    .prologue
    .line 6
    .line 7
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dyv;->c:Lcom/google/android/gms/internal/ads/dyl;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/dyl;->d(Lcom/google/android/gms/internal/ads/dyl;)Lcom/google/android/gms/internal/ads/rf;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/dyv;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/dyv;->b:Lcom/google/android/gms/internal/ads/ko;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/rf;->a(Landroid/content/Context;Lcom/google/android/gms/internal/ads/ko;)Lcom/google/android/gms/internal/ads/qy;

    move-result-object v0

    .line 8
    return-object v0
.end method
