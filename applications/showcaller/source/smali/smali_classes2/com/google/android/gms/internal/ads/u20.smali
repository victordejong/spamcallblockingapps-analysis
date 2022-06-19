.class public final Lcom/google/android/gms/internal/ads/u20;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/n20;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/n20<",
        "Lcom/google/android/gms/internal/ads/wn0;",
        ">;"
    }
.end annotation


# static fields
.field static final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final b:Lcom/google/android/gms/ads/internal/b;

.field private final c:Lcom/google/android/gms/internal/ads/la0;

.field private final d:Lcom/google/android/gms/internal/ads/sa0;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const-string v0, "resize"

    const-string v1, "playVideo"

    const-string v2, "storePicture"

    const-string v3, "createCalendarEvent"

    const-string v4, "setOrientationProperties"

    const-string v5, "closeResizedAd"

    const-string v6, "unload"

    .line 1
    filled-new-array/range {v0 .. v6}, [Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x7

    new-array v2, v1, [Ljava/lang/Integer;

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v2, v5

    const/4 v4, 0x2

    .line 2
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v2, v3

    const/4 v3, 0x3

    .line 3
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v2, v4

    const/4 v4, 0x4

    .line 4
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v2, v3

    const/4 v3, 0x5

    .line 5
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v2, v4

    const/4 v4, 0x6

    .line 6
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v2, v3

    .line 7
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v2, v4

    .line 8
    invoke-static {v0, v2}, Lcom/google/android/gms/common/util/f;->e([Ljava/lang/Object;[Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/u20;->a:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/ads/internal/b;Lcom/google/android/gms/internal/ads/la0;Lcom/google/android/gms/internal/ads/sa0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/u20;->b:Lcom/google/android/gms/ads/internal/b;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/u20;->c:Lcom/google/android/gms/internal/ads/la0;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/u20;->d:Lcom/google/android/gms/internal/ads/sa0;

    return-void
.end method


# virtual methods
.method public final bridge synthetic a(Ljava/lang/Object;Ljava/util/Map;)V
    .locals 6

    .line 1
    check-cast p1, Lcom/google/android/gms/internal/ads/wn0;

    const-string v0, "a"

    .line 2
    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sget-object v1, Lcom/google/android/gms/internal/ads/u20;->a:Ljava/util/Map;

    .line 3
    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x6

    const/4 v2, 0x5

    const/4 v3, 0x1

    const/4 v4, 0x7

    if-eq v0, v2, :cond_6

    if-eq v0, v4, :cond_5

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/u20;->b:Lcom/google/android/gms/ads/internal/b;

    invoke-virtual {v5}, Lcom/google/android/gms/ads/internal/b;->b()Z

    move-result v5

    if-eqz v5, :cond_4

    if-eq v0, v3, :cond_3

    const/4 v5, 0x3

    if-eq v0, v5, :cond_2

    const/4 v5, 0x4

    if-eq v0, v5, :cond_1

    if-eq v0, v2, :cond_6

    if-eq v0, v1, :cond_0

    if-eq v0, v4, :cond_5

    const-string p1, "Unknown MRAID command called."

    .line 4
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/ei0;->e(Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/u20;->c:Lcom/google/android/gms/internal/ads/la0;

    .line 5
    invoke-virtual {p1, v3}, Lcom/google/android/gms/internal/ads/la0;->i(Z)V

    return-void

    :cond_1
    new-instance v0, Lcom/google/android/gms/internal/ads/ja0;

    .line 6
    invoke-direct {v0, p1, p2}, Lcom/google/android/gms/internal/ads/ja0;-><init>(Lcom/google/android/gms/internal/ads/wn0;Ljava/util/Map;)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/ja0;->i()V

    return-void

    :cond_2
    new-instance v0, Lcom/google/android/gms/internal/ads/oa0;

    .line 7
    invoke-direct {v0, p1, p2}, Lcom/google/android/gms/internal/ads/oa0;-><init>(Lcom/google/android/gms/internal/ads/wn0;Ljava/util/Map;)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/oa0;->i()V

    return-void

    :cond_3
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/u20;->c:Lcom/google/android/gms/internal/ads/la0;

    .line 8
    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ads/la0;->h(Ljava/util/Map;)V

    return-void

    :cond_4
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/u20;->b:Lcom/google/android/gms/ads/internal/b;

    const/4 p2, 0x0

    .line 9
    invoke-virtual {p1, p2}, Lcom/google/android/gms/ads/internal/b;->c(Ljava/lang/String;)V

    return-void

    :cond_5
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/u20;->d:Lcom/google/android/gms/internal/ads/sa0;

    .line 10
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/sa0;->c()V

    return-void

    :cond_6
    const-string v0, "forceOrientation"

    .line 11
    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v2, "allowOrientationChange"

    .line 12
    invoke-interface {p2, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 13
    invoke-interface {p2, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v3

    :cond_7
    if-nez p1, :cond_8

    const-string p1, "AdWebView is null"

    .line 14
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/ei0;->f(Ljava/lang/String;)V

    return-void

    :cond_8
    const-string p2, "portrait"

    .line 15
    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_9

    const/4 v1, 0x7

    goto :goto_0

    :cond_9
    const-string p2, "landscape"

    .line 16
    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_a

    goto :goto_0

    :cond_a
    if-eqz v3, :cond_b

    const/4 v1, -0x1

    goto :goto_0

    .line 17
    :cond_b
    invoke-static {}, Lcom/google/android/gms/ads/internal/s;->f()Lcom/google/android/gms/ads/internal/util/e;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/gms/ads/internal/util/e;->h()I

    move-result v1

    .line 18
    :goto_0
    invoke-interface {p1, v1}, Lcom/google/android/gms/internal/ads/wn0;->Z(I)V

    return-void
.end method
