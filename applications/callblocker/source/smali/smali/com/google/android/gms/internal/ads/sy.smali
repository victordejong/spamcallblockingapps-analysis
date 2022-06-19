.class final Lcom/google/android/gms/internal/ads/sy;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.1.0"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x15
.end annotation

.annotation runtime Ljavax/annotation/ParametersAreNonnullByDefault;
.end annotation


# static fields
.field private static final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final b:Landroid/content/Context;

.field private final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Lcom/google/android/gms/internal/ads/sk;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 29
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 30
    invoke-static {}, Lcom/google/android/gms/common/util/m;->h()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 31
    const-string/jumbo v1, "android.webkit.resource.AUDIO_CAPTURE"

    const-string/jumbo v2, "android.permission.RECORD_AUDIO"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    const-string/jumbo v1, "android.webkit.resource.VIDEO_CAPTURE"

    const-string/jumbo v2, "android.permission.CAMERA"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    :cond_0
    sput-object v0, Lcom/google/android/gms/internal/ads/sy;->a:Ljava/util/Map;

    .line 35
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Ljava/util/List;Lcom/google/android/gms/internal/ads/sk;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/google/android/gms/internal/ads/sk;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/sy;->b:Landroid/content/Context;

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/sy;->c:Ljava/util/List;

    .line 4
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/sy;->d:Lcom/google/android/gms/internal/ads/sk;

    .line 5
    return-void
.end method


# virtual methods
.method final a([Ljava/lang/String;)Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 6
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 7
    array-length v5, p1

    move v3, v1

    :goto_0
    if-ge v3, v5, :cond_8

    aget-object v6, p1, v3

    .line 9
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/sy;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 10
    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    move v0, v2

    .line 17
    :goto_1
    if-eqz v0, :cond_7

    .line 19
    sget-object v0, Lcom/google/android/gms/internal/ads/sy;->a:Ljava/util/Map;

    invoke-interface {v0, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 20
    invoke-static {}, Lcom/google/android/gms/ads/internal/q;->c()Lcom/google/android/gms/internal/ads/ve;

    iget-object v7, p0, Lcom/google/android/gms/internal/ads/sy;->b:Landroid/content/Context;

    sget-object v0, Lcom/google/android/gms/internal/ads/sy;->a:Ljava/util/Map;

    .line 21
    invoke-interface {v0, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 22
    invoke-static {v7, v0}, Lcom/google/android/gms/internal/ads/ve;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    :cond_1
    move v0, v2

    .line 23
    :goto_2
    if-eqz v0, :cond_6

    .line 24
    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 27
    :goto_3
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_0

    .line 12
    :cond_2
    const-string/jumbo v8, "android.webkit.resource."

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v9

    if-eqz v9, :cond_3

    invoke-virtual {v8, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 13
    :goto_4
    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v2

    .line 14
    goto :goto_1

    .line 12
    :cond_3
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v8}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_4

    :cond_4
    move v0, v1

    .line 16
    goto :goto_1

    :cond_5
    move v0, v1

    .line 22
    goto :goto_2

    .line 25
    :cond_6
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/sy;->d:Lcom/google/android/gms/internal/ads/sk;

    invoke-virtual {v0, v6}, Lcom/google/android/gms/internal/ads/sk;->c(Ljava/lang/String;)V

    goto :goto_3

    .line 26
    :cond_7
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/sy;->d:Lcom/google/android/gms/internal/ads/sk;

    invoke-virtual {v0, v6}, Lcom/google/android/gms/internal/ads/sk;->b(Ljava/lang/String;)V

    goto :goto_3

    .line 28
    :cond_8
    return-object v4
.end method
