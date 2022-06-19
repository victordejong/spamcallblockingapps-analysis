.class final Lcom/google/android/gms/internal/ads/dyr;
.super Lcom/google/android/gms/internal/ads/dyu;
.source "com.google.android.gms:play-services-ads-lite@@19.1.0"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/dyu",
        "<",
        "Lcom/google/android/gms/internal/ads/dzn;",
        ">;"
    }
.end annotation


# instance fields
.field private final synthetic a:Landroid/content/Context;

.field private final synthetic b:Lcom/google/android/gms/internal/ads/dyd;

.field private final synthetic c:Ljava/lang/String;

.field private final synthetic d:Lcom/google/android/gms/internal/ads/dyl;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/dyl;Landroid/content/Context;Lcom/google/android/gms/internal/ads/dyd;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/dyr;->d:Lcom/google/android/gms/internal/ads/dyl;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/dyr;->a:Landroid/content/Context;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/dyr;->b:Lcom/google/android/gms/internal/ads/dyd;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/dyr;->c:Ljava/lang/String;

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/dyu;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 2
    .line 3
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dyr;->a:Landroid/content/Context;

    const-string/jumbo v1, "search"

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/dyl;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 4
    new-instance v0, Lcom/google/android/gms/internal/ads/eca;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/eca;-><init>()V

    .line 5
    return-object v0
.end method

.method public final synthetic a(Lcom/google/android/gms/internal/ads/dzx;)Ljava/lang/Object;
    .locals 4

    .prologue
    .line 9
    .line 10
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dyr;->a:Landroid/content/Context;

    .line 11
    invoke-static {v0}, Lcom/google/android/gms/dynamic/b;->a(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/a;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/dyr;->b:Lcom/google/android/gms/internal/ads/dyd;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/dyr;->c:Ljava/lang/String;

    const v3, 0xbfb13e0

    .line 12
    invoke-interface {p1, v0, v1, v2, v3}, Lcom/google/android/gms/internal/ads/dzx;->a(Lcom/google/android/gms/dynamic/a;Lcom/google/android/gms/internal/ads/dyd;Ljava/lang/String;I)Lcom/google/android/gms/internal/ads/dzn;

    move-result-object v0

    .line 13
    return-object v0
.end method

.method public final synthetic b()Ljava/lang/Object;
    .locals 6

    .prologue
    .line 6
    .line 7
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dyr;->d:Lcom/google/android/gms/internal/ads/dyl;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/dyl;->a(Lcom/google/android/gms/internal/ads/dyl;)Lcom/google/android/gms/internal/ads/dxy;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/dyr;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/dyr;->b:Lcom/google/android/gms/internal/ads/dyd;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/dyr;->c:Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x3

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/dxy;->a(Landroid/content/Context;Lcom/google/android/gms/internal/ads/dyd;Ljava/lang/String;Lcom/google/android/gms/internal/ads/ko;I)Lcom/google/android/gms/internal/ads/dzn;

    move-result-object v0

    .line 8
    return-object v0
.end method
